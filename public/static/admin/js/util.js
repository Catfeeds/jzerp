
	
		Date.prototype.dateFormat = function( format, timestamp ) {
		var dateTime = timestamp ? new Date( timestamp ) : new Date(),
			fullYears = dateTime.getFullYear(),
			month = dateTime.getMonth() + 1,
			day = dateTime.getDate(),
			hours = dateTime.getHours(),
			minute = dateTime.getMinutes(),
			seconds = dateTime.getSeconds(),
			week = dateTime.getDay();
		var o = {
			"M+": addFix( month ),
			"d+": addFix( day ),
			"H+": addFix( hours ),
			"m+": addFix( minute ),
			"s+": addFix( seconds ),
			"w+": [ '日', '一', '二', '三', '四', '五', '六' ][week],
			"q+": Math.floor( ( month + 3 ) / 3 ),
			"S": dateTime.getMilliseconds(),
		};
		
		if ( /(y+)/.test( format ) ) format = format.replace( RegExp.$1, ( fullYears + "" ) );
		for ( var k in o )
			if ( new RegExp( "(" + k + ")" ).test( format ) ) format = format.replace( RegExp.$1, ( RegExp.$1.length == 1 ) ? ( o[ k ] ) : ( ( "00" + o[ k ] ).substr( ( "" + o[ k ] ).length ) ) );
		return format;
	}
	


function addFix( number ) {
	return number >= 10 ? number : '0' + number;
}
var util = {
		//	表单处理  id  form表单id,  validate验证[{name:'',  msg: '', right: '', regx: ''}]  del 删除的name值['title', 'id']  append 要添加的键值 [name, value]
	ajax: function (option){
		return new Promise(function(resolve, reject){
			if (!option.id) {
				reject({code : 0, msg: '请传入form表单ID'});
				return false;
			}
			var form = document.getElementById(option.id);
			var formData = new FormData(form);
				//往formData添加额外数据
			
			if (option.hasOwnProperty('append')) {
				var append = option.append;
				for (var i = 0; i < append.length; i ++) {
					formData.append(append[i][0], append[i][1]);
				}
			}
			//验证formData数据, 传入regx 正则, 不传则默认验证不为空, right:
//			option.validate 二维数组, [name, msg, right, regx] 0 name名, 1 返回消息, 2 true 验证正确时返回, false验证失败时返回, 默认失败时返回, 3 正则
			if (option.hasOwnProperty('validate')) {
				var next = false;
				for (var i in r = option.validate) {
					var regx = r[i][3] || /^[\s\S]*.*[^\s][\s\S]*$/;
					var right = r[i][2] || false;
					var name = r[i][0] || '';
					if(regx.test(formData.get(name))){
						if (right) {
							var error = {code: 0, msg: r[i][1] || '', data: r[i][0]};
							resolve(error);
							next = true;
						}
					} else {
						if (!right) {
							var error = {code: 0, msg: r[i][1] || '', data: r[i][0]};
							resolve(error);
							next = true;
						}
					}
					if (next) break;
				}
				if (next) return false;
			}
			//删除formData不必要数据
			
			if (option.hasOwnProperty('del')) {
				for (var j in d = option.del) {
					formData.delete(d[j]);
				}
			}
			
//			if(option.hasOwnProperty('debug') && option.debug){
//				if(option.debug instanceof String){
//					console.log(option.debug, formData.get(option.debug));
//				} else {
//					var i = formData.entries();
//					console.log(i);
//					for (;j;j = i.next) {
//					   console.log(j); 
//					}
//				}
//				return false;
//			}
		
			//自己处理formData 则传入 dispose : true
			if (option.hasOwnProperty('dispose') && option.dispose) {
				resolve({code: 1, data: formData, msg: '成功'});
				return false;
			}
			$.ajax({
				type: option.type ? option.type : "POST",
				url:option.url ? option.url : '',
				data: formData,
				async:false,
				cache: false,
		        processData : false,
		        contentType : false,
				success: function(res){
					//后台返回的数据
					resolve(res);
				},
				error: function(err){
					//返回错误
					reject(err);
				}
			});
		})
	}
}


window.alert = function(msg = '', url = false, time = 2){
	layer.msg(msg, {
		time: 1000 * time
	});
	if(url) {
		setTimeout(() => {
			location.href = url;
		}, time * 1000)
	}
}
		//多选框
		var checkAll = $('input.check-all');
	    var checkboxes = $('input.ids');	      	
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
            //handle : 'checkbox',
        });
        //全选反选		
	    checkAll.on('ifChecked ifUnchecked', function(event) {
	        if (event.type == 'ifChecked') {
	            checkboxes.iCheck('check');
	        } else {
	            checkboxes.iCheck('uncheck');	
	            checkboxes.removeProp('checked');
	        }		  
	    });
	    checkboxes.on('ifChanged', function(event){
	        if(checkboxes.filter(':checked').length == checkboxes.length) {
	            checkAll.prop('checked', 'checked');
	        } else {	        	
	            checkAll.removeProp('checked');
	        }
	        checkAll.iCheck('update');
	    });
	    //批量删除
		function deleteAll(url){
			var str = "";
			var ids="";
			if(!url){
				console.log('请传入URL');
				return false;
			}
			checkboxes.each(function(){			 	
		        if(true == $(this).is(':checked')){
		            str+=$(this).val()+",";
		        }
		    });
		    if(str.substr(str.length-1)== ','){
		        ids = str.substr(0,str.length-1);
		    }	
		    if(ids == ''){
		 		alert('请选择');
		 		return false;
		 	}
			layer.confirm('确定要删除',{
				time:0,
				btn:['必须啊','考虑下'],
				yes:function(index){
					console.log(ids);
					$.ajax({
						type:"POST",
						data: {ids: ids},
						url:url,
						async:true,
						success:function(msg){
							alert(msg.msg)
							if(msg.code == 1){
								setTimeout(function(){
				             		location.reload();
				                },1000);	
			               }
						}
					});
				},	
			})	    
		}

	   //打印
		function doPrint() {
			
			var bdhtml=window.document.body.innerHTML,
			regs = /<!--startprint-->[\s\S]*?<!--endprint-->/g,
			prnhtml=bdhtml.match(regs).join(''),
			reg = /<!--startRemove-->[\s\S]*?<!--endRemove-->/g,
			prnhtml=`<style type="text/css">
					table{
						text-align: center;
						margin:0;border-collapse:collapse;border-spacing:0;
					}
					th,td{
						border: 1px solid #ddd;
						padding:10px;
					    white-space: nowrap;
					}
					a{
						text-decoration: none;
					}
					h3{
						text-align: center;
					}
				</style><h3>${parent.activeTitle?parent.activeTitle:''}</h3>` + prnhtml.replace(reg, ''),
			
			f = document.createElement('iframe');
            f.style.display = 'none';
            document.querySelector('body').appendChild(f)
            f.contentDocument.write(prnhtml);
            f.contentDocument.close();
            f.contentWindow.print();
		}
	   

   