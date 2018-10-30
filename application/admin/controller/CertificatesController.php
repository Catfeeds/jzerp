<?php
namespace app\admin\controller;
use app\admin\model\CertificatesModel;
use app\admin\model\CertificatemoneyModel;
use app\admin\model\TypeModel;
use app\admin\model\CertificateoutModel;
use app\admin\model\CertificatesinModel;

//采购	HJP
class CertificatesController extends FlowcommonController
{
	public function index(){
				
		//return $url;
	}

	// 证照录入
	public function add($id = '')
	{

		if($id){   		
			$data = CertificatesModel::getOne($id);
    	}else{
    		$data = [];
    	}      
		if($this->request->isPost()){
			$data = $this->request->post();
			
			$result = $this->validate($data, 'CertificatesValidate');
			if(true !== $result){
                return ajax(0, $result);
            }
			if(empty($data['id'])){
				$res = CertificatesModel::create($data);
				$msg = '新增';
			}else{
				$res = CertificatesModel::update($data);
				$msg = '修改';
			}
            if ($res) {
            	certificate_status($res->id,9);
                return ajax(1,$msg.'成功',url('clist'));
            } else {
                return ajax(0,$msg.'失败');
            }
		}
		//$this->assign('obj_id',ProjectListModel::column('id,title'));
		return $this->fetch('sponsor/sponsor_list',['data'=>$data,'certificate_type'=>ConfigType('certificate_type')]); 
	}
	// 证照列表
	public function clist($sort = 'asc')
	{
		$page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();

        if(!empty($keywords['end_time'])){
        	$keywords['end_time'] = time($keywords['end_time']);
        }

        $keys = ['username','id_card','certificate_type','end_time'];
        

        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];

            if($v == 'end_time' && !empty($vs)){
            	$map[$v] = ['elt',$vs];
            }else{
            	$map[$v] = ['like',  '%'.$vs.'%'];
            }
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
        }

        $page_parm = [
            'page' => $page,
            "query" => $query
        ];

        // dump($map);
        // 排序
        $ord =  input('date') ? 'end_time' : 'id';
        $order = getOrder($ord.' '.$sort);

        $data = CertificatesModel::search($map,$order,$page_parm);
		
		$type = TypeModel::where('indentify','certificate_type')->where('pid','<>',0)->column('id,name');

		$this->assign('type',$type);
		$this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);

		return $this->fetch('certificates/list_view');
	}

	// 证照删除
	public function deletes($id='')
	{
		if(!$id) {
			return ajax(0, '请传入要删除的项');
		}
		$m = CertificatesModel::destroy($id);
		if($m){
			return ajax(1, '删除成功');
		} else {
			return ajax(0, '删除失败');
		}
	}
	// 证照查看
	public function zzck($id='')
	{
		if(!$id) {
			return ajax(0, '请选择要查看的编号');
		}
		$data = CertificatesModel::getOne($id);
        $this->assign('certificate_type',TypeModel::where('indentify','certificate_type')->where('pid','<>',0)->column('id,name'));

        return $this->fetch('sponsor/details',['data'=>$data]);
	}

	// 证件费用
	public function moneyadd($id = '')
	{
		if($id){   		
			$data = CertificatemoneyModel::getOne($id);
    	}else{
    		$data = [];
    	}

		if($this->request->isPost()){
			$data = $this->request->post();

			$result = $this->validate($data, 'CertificatesmoneyValidate');

			if(true !== $result){
                return ajax(0, $result);
            }

            if(empty($data['id'])){
				$res = CertificatemoneyModel::create($data);
				$msg = '新增';
			}else{
				$res = CertificatemoneyModel::update($data);
				$msg = '修改';
			}

			if ($res) {                             
                return ajax(1,$msg.'成功',url('moneylist'));
            } else {
                return ajax(0,$msg.'失败');
            }
		}

		//$this->assign('obj_id',ProjectListModel::column('id,title'));
		return $this->fetch('sponsor/sponsor_list',['data'=>$data,'username'=>CertificatesModel::column('id,username')]); 
	}
	// 证件费用查询
	public function moneylist($sort='asc')
	{

		$page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords  = $this -> request -> get();

        if(!empty($keywords['start_time'])){
        	$keywords['start_time'] = strtotime($keywords['start_time']);
        }
        if(!empty($keywords['end_time'])){
        	$keywords['end_time'] = strtotime($keywords['end_time']);
        }

        $keys = ['b.username','b.certificate_type','a.start_time','a.end_time'];

        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];

            if($v == 'a.start_time'){
            	$map[$v] = ['egt',$vs];
            }elseif($v == 'a.end_time' ){
            	$map[$v] = ['elt',$vs];
            }else{
            	$map[$v] = ['like',  '%'.$vs.'%'];
            }
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
        }
// dump($map);
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];

        // 排序
        $ord =  input('date') ? 'a.end_time' : 'a.id';
        $order = getOrder($ord.' '.$sort);

        $data = CertificatemoneyModel::search($map,$order,$page_parm);

		$type = TypeModel::where('indentify','certificate_type')->where('pid','<>',0)->column('id,name');

		$this->assign('type',$type);
		$this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);

		return $this->fetch('certificates/moneylist_view');
	}
	// 证件费用查看
	public function moneyck($id='')
	{
		if(!$id) {
			return ajax(0, '请选择要查看的编号');
		}
		$data = CertificatemoneyModel::getOne($id);

        $this->assign('username',CertificatesModel::column('id,username'));

        return $this->fetch('sponsor/details',['data'=>$data]);
	}

	// 证件费用删除
	public function moneydeletes($id='')
	{
		if(!$id) {
			return ajax(0, '请传入要删除的项');
		}
		$m = CertificatemoneyModel::destroy($id);
		if($m){
			return ajax(1, '删除成功');
		} else {
			return ajax(0, '删除失败');
		}
	}

	// 证件借出
	public function outadd()
	{
		$data = [];

		if($this->request->isPost()){
			$data = $this->request->post();

			$result = $this->validate($data, 'CertificatesoutValidate');
			if(true !== $result){
                return ajax(0, $result);
            }
			$res = CertificateoutModel::getAdd($data);
			$msg = '新增';
					
            if ($res == 9) {                             
                return ajax(1,$msg.'成功',url('outlist'));
            } else {
                return ajax(0,$msg.'失败');
            }
		}
		$this->assign('username',CertificatesModel::where('status','like','%9%')->column('id,username'));
		return $this->fetch('sponsor/sponsor_list',['data'=>$data,'certificate_type'=>ConfigType('certificate_type')]); 
	}
	// 证件借出列表
	public function outlist()
	{
		$keywords = ['out_user_id', 'organization'];
	
		$sort = ['out_time'];
		$bet = [
			'out_time' => [
				'out_time',
				'in_plan_time',
				'time'
			]
		];
		$result = $this -> page_parm_request($keywords, $sort, $bet);

		$data = CertificateoutModel::getList($result['map'], $result['order'], $result['page_parm']);
		return $this -> fetch('certificates/out_view', ['data' => $data,'page'=>$result['page_parm']['page'] ,'keywords' => $result['page_parm']['query']]);
	}
	// 证件借出查看
	public function outck($id)
	{
		if(!$id) {
			return ajax(0, '请选择要查看的编号');
		}

		$data = CertificateoutModel::getOne($id);

        $this->assign('username',CertificatesModel::column('id,username'));

        return $this->fetch('sponsor/details',['data'=>$data]);
	}

	// 证件归还
	public function inadd()
	{
		$data = [];
		
		if($this->request->isPost()){
			$data = $this->request->post();

			$result = $this->validate($data, 'CertificatesinValidate');
			if(true !== $result){
                return ajax(0, $result);
            }

			$res = CertificatesinModel::getAdd($data);
			$msg = '新增';
						
            if ($res == 9) {                             
                return ajax(1,$msg.'成功',url('inlist'));

            } else {
                return ajax(0,$msg.'失败');
            }
		}
		$this->assign('username',CertificatesModel::where('status','like','%5%')->column('id,username'));
		return $this->fetch('sponsor/sponsor_list',['data'=>$data,'certificate_type'=>ConfigType('certificate_type')]); 
	}
	// 证件归还列表
	public function inlist($sort = 'asc')
	{
		$page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();

        if(!empty($keywords['in_time'])){
        	$keywords['in_time'] = time($keywords['in_time']);
        }

        $keys = ['in_username', 'organization', 'certificates_in.status','in_time'];

        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];

            $map[$v] = ['like',  '%'.$vs.'%'];
           
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
        }

        $page_parm = [
            'page' => $page,
            "query" => $query
        ];

        // dump($map);
        // 排序
        $ord =  input('date') ? 'in_time' : 'id';
        $order = getOrder($ord.' '.$sort);

		$data = CertificatesinModel::getList($map,$order,$page_parm);

		$this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);

		return $this -> fetch('certificates/in_view');
	}
	// 证件归还查看
	public function inck($id)
	{
		if(!$id) {
			return ajax(0, '请选择要查看的编号');
		}

		$data = CertificatesinModel::getOne($id);

        $this->assign('username',CertificatesModel::column('id,username'));

        return $this->fetch('sponsor/details',['data'=>$data]);
	}



	// 证件报表
	public function certificatelist($sort = 'asc')
	{
		$page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();

        $keys = ['certificate_number','username','id_card','certificate_type'];
        

        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];

            $map[$v] = ['like',  '%'.$vs.'%'];
            
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
        }

        $page_parm = [
            'page' => $page,
            "query" => $query
        ];

        // 排序
        $ord =  input('statu') ? 'status' : 'id';
        $order = getOrder($ord.' '.$sort);

        $data = CertificatesModel::search($map,$order,$page_parm);
		// dump($data);
		$type = TypeModel::where('indentify','certificate_type')->where('pid','<>',0)->column('id,name');

		$this->assign('type',$type);
		$this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);

		return $this->fetch('certificates/certificate_view');
	}

}

