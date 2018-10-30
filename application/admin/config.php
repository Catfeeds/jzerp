<?php

// $admin_config = [];

// $html_config = include_once 'html.conf.php';
// return array_merge($admin_config,$html_config);
//
return [
		'template' => [
	    // 模板布局开关
		    'layout_on'    => true,
		    // 模板布局文件
		    'layout_name'  => 'layer',
		],
	  'view_replace_str'  =>  [
		      '__PUBLIC__'=>'/public',
		      '__ADMIN_STATIC__' => '/static/admin',
		      '__UPLOAD__' => '/public/uploads',
		      '__ROOT__'=>''
  		],
	];
