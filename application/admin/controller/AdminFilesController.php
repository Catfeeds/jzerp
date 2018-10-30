<?php
namespace app\admin\controller;
use think\request;
use app\admin\model\AdminFilesModel;
//文件

class AdminFilesController extends AdminController{
	 //文件上传
    public function UpLoadFiles($name = 'file', $to_dir= 'other', $rule = [], $desc = '', $size = 0){
//		    	$name可以是个数组或,隔开
	        //默认file name名 为file
//		        $rule = 'jpg,png' -> 上传验证后缀名
//				$to_dir 上传文件夹
			$rule = empty($rule) ? config('upload_file_ext') : $rule;
			$size = empty($size) ? config('upload_file_size') : $size;
			$validate = [];
			if($rule){
				$validate['ext'] = $rule;
			}
			if($size){
				$validate['size'] = $size;
			}

	    	  // 获取表单上传文件
	        $files = $this -> request -> file($name);
//        halt($files);
	        if (empty($files)) {
	            $this->error('请选择上传文件');
	        }
			$success = [];
			$fail = [];
			if(!is_array($files)) $files = [$files];
			foreach($files as $file){
				 // 移动到框架应用根目录/public/uploads/ 目录下
	        	$info = $file->validate($validate)->move(ROOT_PATH . 'public' . DS . 'uploads'.DS.$to_dir);
	        	$infos = $file -> getInfo();
	        	$arr = [];
	        	$arr['name'] = $infos['name'];
	        	$arr['size'] = $infos['size'];
                    $arr['ext'] = pathinfo($infos['name'])['extension'];
		        if ($info) {
		        	$arr['path'] = '\uploads' . DS .$to_dir. DS .$info->getSaveName();
		        	$arr['user_id'] = UID;
		        	$arr['desc'] = $desc;
		        	$success[] = $arr;
		        } else {
		        	$arr['err'] =  $file ->getError();
		        	$fail[] = $arr;
		            // 上传失败获取错误信息
		        }
			}
	       $saveFile = new AdminFilesModel;
	       $model = $saveFile -> saveAll($success);
	       if($model){
        		return ajax(1, '上传成功', '', ['success' => $model, 'fail' => $fail]);
	        } else {
        		return ajax(0, '上传失败', '', ['success' => $model, 'fail' => $fail]);
	        }
    }
    
    //	导出Excel文件
	//	    name : 标题
	//		$list: 数据列表
	//		$keys: 数据列表的下标
	//		$filename: 文件名
	//		$addExcelHeadName: Excel栏位添加
	//      $setTitle: Sheet1
	 public function DownloadExcel($name = [], $list = [], $keys = [], $filename = '', $setTitle = 'Sheet1', $addExcelHeadName = []){
	 	    $ExcelHeadName = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S','T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
	 		$ExcelHeadName = array_merge($ExcelHeadName, $addExcelHeadName);
	 		vendor('PHPExcel.PHPExcel');
	 		$objPHPExcel = new \PHPExcel();
	 		$objPHPExcel->getDefaultStyle()->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
	 		$objPHPExcel->getDefaultStyle()->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
	 		foreach($name as $key => $val){
              		$objPHPExcel ->setActiveSheetIndex(0)-> setCellValue($ExcelHeadName[$key].'1', $val);
	 	  			$objPHPExcel->setActiveSheetIndex(0)->getColumnDimension($ExcelHeadName[$key])->setWidth(20);
	 		}
	   		for($i=0;$i<count($list);$i++){
	   			$abs = 0;		//横坐标
	 		  	foreach($keys as $v) {
	 	            $objPHPExcel->getActiveSheet()->setCellValue($ExcelHeadName[$abs].($i+2),$list[$i][$v]);//ID
	        	  		++ $abs;
	        	  	}
      	  		}
      	    $filename = $filename ? $filename.'.xls' : date('Y-m-d H:i:s',time()).'.xls';
       	//8.设置当前激活的sheet表格名称；
         $objPHPExcel->getActiveSheet()->setTitle($setTitle);
         //9.设置浏览器窗口下载表格
         header("Content-Type: application/force-download");  
         header("Content-Type: application/octet-stream");  
         header("Content-Type: application/download");  
         header('Content-Disposition:inline;filename="'.$filename.'"');  
         //生成excel文件
         $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
         //下载文件在浏览器窗口
         $objWriter->save('php://output');
          exit;
	 }
    
    //删除文件
    
//	    public function deleteFiles($path = ''){
//	    	if($path == ''){
//	    		return ajax(0, '请传入删除文件的路径');
//	    	} else {
//	    		if(is_array($path)){
//	    			foreach($path as $v) {
//	    				unlink($v);
//	    			}
//	    		} else {
//  				unlink($path);
//	    		}
//	    	}
//	    }



}