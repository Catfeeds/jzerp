<?php
namespace app\admin\controller;
use app\admin\model\ConstructionQuantityModel;
use app\admin\model\ConstructionSafeModel;
use app\admin\model\ConstructionChangeModel;
use app\admin\model\ConstructionMakeplanModel;
use app\admin\model\ConstructionMaterialPlanModel;
use app\admin\model\ConstructionBuildLogModel;
use app\admin\model\ConstructionBuildLogDetailModel;
use app\admin\model\ProjectListModel;
use app\admin\model\ConstructionMaterialPlanDetailModel;
use app\admin\model\ConstructionServiceClearModel;
use app\admin\model\ConstructionServiceClearDetailModel;
use app\admin\model\ConstructionServiceRateModel;
use app\admin\model\ConstructionSubpickClearModel;
use app\admin\model\SubContractModel;
use app\admin\model\ConstructionSubPickRateModel;
use app\admin\model\BSupplierModel;
use app\admin\model\ContractModel;
use app\admin\model\ConstructionSubpickClearDetailModel;
use app\admin\model\LaborContractModel;

use think\Db;
use think\Cache;
    /*    
    施工过程控制器
    */
class ConstructionController extends FlowcommonController
{

    /*
        导航功能
     */
    public function nav(){
        return $this->fetch();
    }




    /**
     * 质量检查首页
     * 质量检查开始
     */
    


    //质量检查首页
    public function quality_index()
    {   

        $request = $this -> page_parm_request();
            $keywords = [['title' => 'project_list.title'],['maker' => 'personnel_user_basic.nickname']];
            $sort = ['create_time'];
            $bet = [
                'create_time' => [
                    's_time',
                    'e_time',
                    'create_time'
                ]
            ];
            $result = $this -> page_parm_request($keywords, $sort, $bet);
            $list = ConstructionQuantityModel::getList($result['map'], $result['order'], $result['page_parm']);
            $this -> assign('obj_name', ProjectList([], true));
            return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);      
    }
    /**
    * 添加质量检查
    */
    public function quality_add($id=''){
        if($id){        
            $data = ConstructionQuantityModel::getOne($id);  
        }else{
            $data = [];
        }      
        if($this->request->isPost()){
            $data = $this->request->post();
            $res = $this -> validate($data, 'ConstructionQuantityValidate');
            if(!$res){
                return ajax(0,$res);
            }
            if(empty($data['id'])){
                $mes = ConstructionQuantityModel::create($data);
                $msg = '新增';
            }else{
                $mes = ConstructionQuantityModel::update($data);
                $msg = '修改';
            }           
            if ($mes) {                                 
                return ajax(1,$msg.'成功');
            } else {
                return ajax(0,$msg.'失败');
            }
        }       
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }
    //删除质量检查
    public function quality_delete($ids = ''){
            if($ids == '') {
                return ajax(0, '参数错误');
            }
            $m = ConstructionQuantityModel::destroy($ids);
            if($m){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }
    //质量检查查询
    public function quality_detail($id = ''){
        $data = ConstructionQuantityModel::GetOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }



/** 
 ** 质量模块结束
 ** 安全模块开始
 **/




    //安全日志主页
    public function safe_index(){
        $request = $this -> page_parm_request();
            $keywords = [['title' => 'project_list.title'],['maker' => 'personnel_user_basic.nickname']];
            $sort = ['create_time'];
            $bet = [
                'create_time' => [
                    's_time',
                    'e_time',
                    'create_time'
                ]
            ];
            $result = $this -> page_parm_request($keywords, $sort, $bet);
            $list = ConstructionSafeModel::getList($result['map'], $result['order'], $result['page_parm']);
            $this -> assign('obj_name', ProjectList([], true));
            return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);      
    }
    //添加安全日志
    public function safe_add($id=''){
        if($id){        
            $data = ConstructionSafeModel::getOne($id);  
            //dump($data);die;
        }else{
            $data = [];
        }      
        if($this->request->isPost()){
            $data = $this->request->post();
            $res = $this -> validate($data, 'ConstructionSafeValidate');
            if(!$res){
                return ajax(0,$res);
            }
            if(empty($data['id'])){
                $mes = ConstructionSafeModel::create($data);
                $msg = '新增';
            }else{
                $mes = ConstructionSafeModel::update($data);
                $msg = '修改';
            }           
            if ($mes) {                                         
                return ajax(1,$msg.'成功');
            } else {
                return ajax(0,$msg.'失败');
            }
        }       
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    //删除安全日志
    public function safe_delete($ids = ''){
            if($ids == '') {
                return ajax(0, '参数错误');
            }
            $m = ConstructionSafeModel::destroy($ids);
            if($m){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }
     //安全日志查询
    public function safe_detail($id = ''){
        $data = ConstructionSafeModel::GetOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }





    /**
    * 安全日志结束
    * 设计变更开始
    */
   




    //设计变更主页
     public function change_index()
    {   
       $request = $this -> page_parm_request();
            $keywords = [['title' => 'project_list.title'],['maker' => 'personnel_user_basic.nickname'],['change_work'=>'construction_change.change_work']];
            $sort = ['create_time'];
            $bet = [
                'create_time' => [
                    's_time',
                    'e_time',
                    'time',
                    'construction_change.create_time'
                ]
            ];
            $result = $this -> page_parm_request($keywords, $sort, $bet);
            $list = ConstructionChangeModel::getList($result['map'], $result['order'], $result['page_parm']);
            $this -> assign('obj_name', ProjectList([], true));
            return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
    }

    //添加设计变更
    public function change_add($id=''){
        if($id){        
            $data = ConstructionChangeModel::getOne($id);  
            //dump($data);die;
        }else{
            $data = [];
        }      
        if($this->request->isPost()){
            $data = $this->request->post();
            $res = $this -> validate($data, 'ConstructionChangeValidate');
            if(!$res){
                return ajax(0,$res);
            }
            if(empty($data['id'])){
                $mes = ConstructionChangeModel::create($data);
                $msg = '新增';
            }else{
                $mes = ConstructionChangeModel::update($data);
                $msg = '修改';
            }           
            if ($mes) {                               
                return ajax(1,$msg.'成功');
            } else {
                return ajax(0,$msg.'失败');
            }
        }       
        $this->assign('contract_id',ContractModel::column('id,title'));
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    //删除设计变更
    public function change_delete($ids = ''){
            if($ids == '') {
                return ajax(0, '参数错误');
            }
            $m = ConstructionChangeModel::destroy($ids);
            if($m){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }

     //设计变更检查查询
    public function change_detail($id = ''){

        $data = ConstructionChangeModel::GetOne($id);
        $this->assign('contract_id',ContractModel::column('id,title'));
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }




   /**
    * 设计变更结束
    * 技术交底开始
    */





    //技术交底主页
     public function makeplan_index($sort='asc')
    {   
       $request = $this -> page_parm_request();
            $keywords = [['name'=>'construction_makeplan.name'],['title' => 'project_list.title'],['maker' => 'personnel_user_basic.nickname']];
            $sort = ['create_time'];
            $bet = [
                'create_time' => [
                    's_time',
                    'e_time',
                    'time',
                    'construction_change.create_time'
                ]
            ];
            $result = $this -> page_parm_request($keywords, $sort, $bet);
            $list = ConstructionMakeplanModel::getList($result['map'], $result['order'], $result['page_parm']);
            $this -> assign('obj_name', ProjectList([], true));
            return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
    }

    //添加技术交底
    public function makeplan_add($id=''){
        if($id){        
            $data = ConstructionMakeplanModel::GetOne($id);
        }else{
            $data = [];
        }      
        if($this->request->isPost()){
            $data = $this->request->post();
            $data['date'] = strtotime($data['date']);
            $res = $this -> validate($data, 'ConstructionMakeplanValidate');
            if(!$res){
                return ajax(0,$res);
            }
            if(empty($data['id'])){
                $menu = ConstructionMakeplanModel::create($data);
                $msg = '新增';
            }else{
                $menu = ConstructionMakeplanModel::update($data);
                $msg = '修改';
            }           
            if ($menu) {                             
                return ajax(1,$msg.'成功');
            } else {
                return ajax(0,$msg.'失败');
            }
        }       
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    //删除技术交底
    public function makeplan_delete($ids = ''){
            if($ids == '') {
                return ajax(0, '参数错误');
            }
            $m = ConstructionMakeplanModel::destroy($ids);
            if($m){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }


    //技术交底查看
    public function makeplan_detail($id = ''){
        $data = ConstructionMakeplanModel::GetOne($id);
        $data = date('Y-m-d',$data['date']);
        //dump($data);die;
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }
    

    /**
    * 技术交底结束
    * 材料需用计划开始
    */

    //材料需用计划主页
    public function materialplan_index($sort='asc')
    {   
        $map = [];
        $order = 'date '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','number','date','obj_id','maker','name'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map['a.'.$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ConstructionMaterialPlanModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }
    
    //添加材料需用计划
    public function materialplan_add($id= ''){
            if($this -> request -> isPost()){
                $data = $this -> request -> post();
                $data['date'] = strtotime($data['date']);
                $res = $this ->validate($data,'ConstructionMaterialPlanValidate');
                if(true !== $res){
                    return ajax(0, $r);
                   }
                Db::startTrans();
                try{
                    if(empty($data['id'])){
                        //dump($data);die;
                        if(ConstructionMaterialPlanModel::add($data)){

                            $code = 1; 
                            $msg = '新增成功'; 
                            Db::commit();
                        } else {
                            $code = 0; 
                            $msg = '新增失败'; 
                            Db::rollback();
                        }
                    } else {

                        $d = MakeData($data, [], ['details_id' => 'id'], ['pid' => $data['id']]);
                            $model = new ConstructionMaterialPlanDetailModel;
                            if(ConstructionMaterialPlanModel::update($d['main']) && $model -> saveAll($d['details'])){
                                Db::commit();
                                $code = 1; 
                                $msg = '编辑成功'; 
                            } else {
                                Db::rollback();
                                $code = 0; 
                                $msg = '编辑失败'; 
                            }
                        }

                    }catch(\Exception $e) {
                         echo $e;
                         Db::rollback();
                         $code = 0; 
                         $msg = '系统错误,请联系管理员!'; 
                    }
                return ajax($code, $msg);
            }
            if($id){
                $data = ConstructionMaterialPlanModel::getOne($id);
                //dump($data);die;
            } else {
                $data = [];
            }
            $this->assign('contract_id',ContractModel::column('id,title'));
            $this->assign('obj_id', ProjectList([], true));
            return $this -> fetch('sponsor/sponsor_list', ['data' => $data]);     
    }

    //删除材料需用计划
    public function materialplan_delete($ids = ''){
            if($ids == '') {
                return ajax(0, '参数错误');
            }
            $m = ConstructionMaterialPlanModel::destroy($ids);
            if($m){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }




    /**
    * 材料需求计划结束
    * 施工日志开始
    */





    //施工日志主页
     public function buildlog_index($sort='asc')
    {   
        $map = [];
        $order = 'date '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','number','date','obj_id','maker'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map['a.'.$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ConstructionBuildLogModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }

    //添加施工日志
    public function buildlog_add($id=''){
        if($this -> request -> isPost()){
                $data = $this -> request -> post();
                $data['date'] = strtotime($data['date']);
                
                $res = $this ->validate($data,'ConstructionBuildLogValidate');
                if(true !== $res){
                    return ajax(0, $r);
                   }
                Db::startTrans();
                try{
                    if(empty($data['id'])){
                        if(ConstructionBuildLogModel::add($data)){
                            $code = 1; 
                            $msg = '新增成功'; 
                            Db::commit();
                        } else {
                            $code = 0; 
                            $msg = '新增失败'; 
                            Db::rollback();
                        }
                    } else {
                        $d = MakeData($data, [], ['details_id' => 'id'], ['pid' => $data['id']]);
                            $model = new ConstructionBuildLogDetailModel;
                            if(ConstructionBuildLogModel::update($d['main']) && $model -> saveAll($d['details'])){
                                Db::commit();
                                $code = 1; 
                                $msg = '编辑成功'; 
                            } else {
                                Db::rollback();
                                $code = 0; 
                                $msg = '编辑失败'; 
                            }
                        }
                    } catch(\Exception $e) {
                         echo $e;
                         Db::rollback();
                         $code = 0; 
                         $msg = '系统错误,请联系管理员!'; 
                    }
                return ajax($code, $msg);
            }
            if($id){
                $data = ConstructionBuildLogModel::getOne($id);
                //dump($data);die;
            } else {
                $data = [];
            }
            $this -> assign('obj_id', ProjectList([], true));
            return $this -> fetch('sponsor/sponsor_list', ['data' => $data]);
    }

    //施工日志详情
    public function buildlog_detail($id = ''){
        $data = ConstructionBuildLogModel::GetOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }
    
    //删除施工日志
    public function buildlog_delete($ids = ''){
            if($ids == '') {
                return ajax(0, '参数错误');
            }
            $m = ConstructionBuildLogModel::destroy($ids);
            if($m){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }

    //劳务完工结算
    public function ServiceClearIndex($sort=''){
        $map = [];
        $order = 'date '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','number','date','obj_id','maker'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map['a.'.$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ConstructionServiceClearModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }
    //劳务详情
    public function ServiceClearDetails($id=''){

        $data = ConstructionServiceClearModel::GetOne($id);
        //dump($data);die;
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        $this->assign('contract_id',ContractModel::column('id,title'));
        $this->assign('obj_id', ProjectList([], true));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }
    //添加劳务结算
    public function ServiceClearAdd($id=''){
        if($this -> request -> isPost()){
                $data = $this -> request -> post();
                $data['date'] = strtotime($data['date']);
                $res = $this ->validate($data,'ConstructionServiceClearValidate');
                if(true !== $res){
                    return ajax(0, $res);
                   }
                Db::startTrans();
                try{
                    if(empty($data['id'])){
                        if(ConstructionServiceClearModel::add($data)){
                            $code = 1; 
                            $msg = '新增成功'; 
                            Db::commit();
                        } else {
                            $code = 0; 
                            $msg = '新增失败'; 
                            Db::rollback();
                        }
                    } else {

                        $d = MakeData($data, [], ['details_id' => 'id'], ['pid' => $data['id']]);
                            $model = new ConstructionServiceClearDetailModel;
                            if(ConstructionServiceClearModel::update($d['main']) && $model -> saveAll($d['details'])){
                                Db::commit();
                                $code = 1; 
                                $msg = '编辑成功'; 
                            } else {
                                Db::rollback();
                                $code = 0; 
                                $msg = '编辑失败'; 
                            }
                        }

                    }catch(\Exception $e) {
                         echo $e;
                         Db::rollback();
                         $code = 0; 
                         $msg = '系统错误,请联系管理员!'; 
                    }
                return ajax($code, $msg);
            }
            if($id){
                $data = ConstructionServiceClearModel::getOne($id);
            } else {
                $data = [];
            }
            $this->assign('contract_id',LaborContractModel::column('id,name'));
            $this->assign('obj_id', ProjectList([], true));
            return $this -> fetch('sponsor/sponsor_list', ['data' => $data]);
        }


    //*
    //* 劳务付款申报
    //*
    public function ServiceRateIndex($sort = ''){
        $map = [];
        $order = 'date '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','number','date','obj_id','maker'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map['a.'.$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ConstructionServiceRateModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }
   /*
    *添加劳务付款   
    */
    public function ServiceRateAdd($id=''){
        if($id){        
            $data = ConstructionServiceRateModel::getOne($id);
        }else{
            $data = [];
        }      
        if($this->request->isPost()){
            $data = $this->request->post();
            $res = $this ->validate($data,'ConstructionServiceRateValidate');
                if(true !== $res){
                    return ajax(0, $r);
                   }
            if(empty($data['id'])){
                $menu = ConstructionServiceRateModel::create($data);
                $msg = '新增';
            }else{
                $menu = ConstructionServiceRateModel::update($data);
                $msg = '修改';
            }           
            if ($menu) {                             
                flow_approval($menu['id']);              
                return ajax(1,$msg.'成功');
            } else {
                return ajax(0,$msg.'失败');
            }
        }
        $this->assign('contract_id',LaborContractModel::column('id,name'));       
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]);     
    }

    //劳务付款详情
    public function ServiceRateDetail($id = ''){
        $data = ConstructionServiceRateModel::getOne($id);
        $this->assign('contract_id',ContractModel::column('id,title'));  
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }
    //




 




    /*
     * 施工分包结算主页
     */
    public function SubpickClearIndex($sort=''){
        $map = [];
        $order = 'date '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','number','date','obj_id','maker'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map['a.'.$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ConstructionSubpickClearModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }
    /*
     *添加/修改施工分包结算
     */
    public function SubpickAdd($id = ''){
        if($this -> request -> isPost()){
                $data = $this -> request -> post();
                $data['date'] = strtotime($data['date']);
                //
               
                Db::startTrans();
                try{
                    if(empty($data['id'])){
                        //dump($data);die;
                        if(ConstructionSubpickClearModel::add($data)){
                            $code = 1; 
                            $msg = '新增成功'; 
                            Db::commit();
                        } else {
                            $code = 0; 
                            $msg = '新增失败'; 
                            Db::rollback();
                        }
                    } else {

                        $d = MakeData($data, [], ['details_id' => 'id'], ['pid' => $data['id']]);
                            $model = new ConstructionSubpickClearDetailModel;
                            if(ConstructionSubpickClearModel::update($d['main']) && $model -> saveAll($d['details'])){
                                Db::commit();
                                $code = 1; 
                                $msg = '编辑成功'; 
                            } else {
                                Db::rollback();
                                $code = 0; 
                                $msg = '编辑失败'; 
                            }
                        }

                    }catch(\Exception $e) {
                         echo $e;
                         Db::rollback();
                         $code = 0; 
                         $msg = '系统错误,请联系管理员!'; 
                    }
                return ajax($code, $msg);
            }
            if($id){
                $data = ConstructionSubpickClearModel::getOne($id);
                //dump($data);die;
            } else {
                $data = [];
            }
            $this->assign('contract_id',SubContractModel::column('id,title'));     
            $this->assign('obj_id', ProjectList([], true));
            return $this -> fetch('sponsor/sponsor_list', ['data' => $data]);
    }
    //分包结算
    public function SubpickClearDetail($id = ''){
        $data = ConstructionSubpickClearModel::getOne($id);
        $this->assign('contract_id',ContractModel::column('id,title'));  
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }



    /*
     *删除施工分包结算
     */
    public function change(){
        $data = SubContractModel::view('sub_contract')
            ->view('supplier_basic_mes',['supplier_name'=>'supplier_id'],'sub_contract.supplier_id=supplier_basic_mes.id')
            ->where('supplier_basic_mes.status',1)
            ->find();
        return $data;

    }
    public function SubpickDel(){
    }
    /*
     *分包付款申请主页
     */
    public function SubPickRateIndex($sort=''){
        $map = [];
        $order = 'date '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','number','date','obj_id','maker'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map['a.'.$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ConstructionSubPickRateModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }
    //分包付款
    public function SubpickRateAdd($id=''){

        if($id){        
            $data = ConstructionSubPickRateModel::getOne($id);
        }else{
            $data = [];
        }      
        if($this->request->isPost()){
            $data = $this->request->post(); 
            if(empty($data['id'])){
                $menu = ConstructionSubPickRateModel::create($data);
                $msg = '新增';
            }else{
                $menu = ConstructionSubPickRateModel::update($data);
                $msg = '修改';
            }           
            if ($menu) {                             
                flow_approval($menu['id']);              
                return ajax(1,$msg.'成功');
            } else {
                return ajax(0,$msg.'失败');
            }
        }
        $this->assign('pay_type',ConfigType('pay'));
        $this->assign('contract_id',SubContractModel::column('id,title'));       
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]);     
    }

    public function SubpickRateDetail($id=''){
        $data = ConstructionSubPickRateModel::getOne($id);
        $this->assign('contract_id',ContractModel::column('id,title'));  
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }   

       /*
        材料入场
     */
    public function materialin_index($sort=''){
        $map = [];
        $order = 'date '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','number','date','obj_id','maker'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map['a.'.$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ConstructionSubpickClearModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
        
    }
    public function materalinAdd(){

    }


















}