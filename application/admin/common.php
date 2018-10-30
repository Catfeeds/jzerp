<?php

//性别
if (!function_exists('get_sex')) {
    function get_sex($sex)
    {	
        switch ($sex) {
        	case 1:
        		return '男';
        		break;
        	case 2:
        		return '女';
        		break;
        	case 0:
        		return '空';
        		break;
        }
    }
}

//
if (!function_exists('get_certificate_type')) {

    function get_certificate_type($certificate_type_id)
    {	
    	$name = model('admin/TypeModel') -> where(['id' => $certificate_type_id]) -> value('name');
       return $name ? $name : '空';
    }
}

/*
    修改证件状态
    0=到期，1=即将到期5=借出2=异常9=闲置
    $id 需要改变状态的ID
    $status 状态值
    $or 添加或者修改 update|abnormal
    @return 返回受影响的行数
*/
if(!function_exists('certificate_status')){
    function certificate_status($id='',$status='',$or='update')
    {
        if($or!='update' && $or!='abnormal'){
            return '请输入正确的状态值';
        }
        if($or == 'update'){
            return model('admin/CertificatesModel')->where('id', $id)->update(['status' => $status]);
        }elseif($or == 'abnormal') {
            $sta = model('admin/CertificatesModel')->where('id',$id)->value('status');
            $msg = $sta.','.$status;
            return model('admin/CertificatesModel')->where('id', $id)->update(['status' => $msg]);
        }
    }
}


/*
    培训课程
*/
if(!function_exists('lecturer_name')){
    function lecturer_name($id)
    {
        return model('admin/TraininglecturerModel')->where('id',$id)->value('lecturer_name');
    }
}



/**
 * 改变指定用户的指定状态
 *
 * @param  int  $id
 * @param  status  $status   改变的字段
 * @param  value  $value   改变的值
 * @return \think\Response
 */
if (!function_exists('PersonneSta')) {
    function PersonneSta($id = '',$status='working_state',$value='1')
    {
        return model('admin/PersonnelRecord')->where('rid',$id)->update([$status => $value]);
    }
}
/**
 * 改变合同状态
 *
 * @param  int  $id
 * @param  status  $status   改变的字段
 * @param  value  $value   改变的值
 * @return \think\Response
 */
if (!function_exists('LaborName')) {
    function LaborName($id = '')
    {
        return model('admin/ContractlaborModel')->where('id',$id)->update([ 'statu' => '2']);
    }
}

/**
 * 改变合同状态
 */
if(!function_exists('LaborStas')) {
    function LaborStas()
    {
        $time = time();
        $data = model('admin/ContractlaborModel')->where('etime','<',$time)->where('trtime','not null')->column('id');
        $info = array();
        foreach ($data as $key => $value) {
            $info[$key]['id'] = $value;
            $info[$key]['statu'] = 0;
        }
        $res = model('admin/ContractlaborModel')->saveAll($info);

        return $res;
    }
}
