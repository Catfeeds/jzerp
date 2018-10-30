<?php
namespace app\admin\controller;
use  app\admin\model\MessageConfigModel;
use app\gateway\model\MessageModel;
use app\gateway\model\MessageConsigneeModel as MC;
use think\Request;
 
class MessageConfigController extends AdminController {

	public function index(){
		if(!cache('messageConfig')){
			$this -> cacheMessageConfig();
		}
		
		$this -> assign('list', cache('messageConfig'));
		return $this -> fetch();
	}
	
	public function edit(Request $request){
		if( $request -> isPost()){
			$data = MakeData($request -> post())['details'];
			$model = new MessageConfigModel;
			
			if($model -> saveAll($data)){
				$this -> cacheMessageConfig();
				return ajax(1, '编辑成功');
			} else {
				return ajax(0, '编辑失败');
			}
			
		}
	}
	//缓存消息配置
	public function cacheMessageConfig(){
			$list = MessageConfigModel::select();
			$result = [];
			foreach($list as $v) {
				$result[$v['sign']] = $v;
			}
			cache('messageConfig', $result);
	}
	
	public function lists($search = ''){
		$map = [];
		$map['consignee_id'] = UID;
		if($search){
			$map['p.nickname|mco.title|ml.content'] = ['LIKE', '%'.$search.'%'];
		}
		$list = MC::getList($map);
    	return $this -> fetch('listss', ['list' => $list, 'search' => $search]);
	}
	//设置消息为已读
	public function isRead($id = '', $uid = ''){
		if(!$id){
			return ajax(0, '没有传入消息ID');
		}
		$uid = $uid ? $uid: UID;
		if(MC::where(['msg_id' => $id, 'consignee_id' => $uid]) -> update(['is_read' => 1])){
			return ajax(1, '成功');
		} else {
			return ajax(0, '失败');
		}
	}
	//消息删除
	
	public function msg_delete($ids = []){
		if(MC::destroy($ids)){
			return ajax(1, '删除成功');
		} else {
			return ajax(0, '删除失败');
		}
	}
	
	//删除?天前的数据
	public function delDays($day = 0){
		if(!$day || !preg_match('/^[1-9][0-9]*$/',$day)){
			return ajax(0, '参数错误');
		}
		$t = strtotime(date('Y-m-d', time()).' -'.$day.'day');
		$map = [];
		$map['create_time'] = ['<', $t];
		$map['consignee_id'] = UID;
		MC::where($map) -> delete();
		return ajax(1, '删除成功');
	
	}
}
