<?php
	namespace app\admin\validate;
	use think\validate;
class BalanceIndexValidate extends validate{
	protected $rlues = [
		    ["title", 'require', '标题不能为空'],
		    ["code", 'require', '编号不能为空'],
		    ["cate", 'require', '类别不能为空'],
		    ["spec", 'require', '规格不能为空'],
		    ["random", 'require', '测量范围不能为空'],
		    ["exact", 'require', '精确度不能为空'],
		    ["maker", 'require', '制造商不能为空'],
		    ["number", 'require', '出厂编号不能为空'],
		    ["purchaser", 'require', '采购人不能为空'],
		    ["end_time", 'require|date', '质保到期日不能为空'],
		    ["age_limit", 'require', '折旧年限不能为空'],
		    ["remaining", 'require', '残值率不能为空'],
		    ["verification", 'require', '检定机构不能为空'],
		    ["cycle", 'require', '检定周期不能为空'],
		    ["verification_number", 'require', '检定编号不能为空'],
		    ["verification_date", 'require|date', '检定日期不能为空'],
		    ["result", 'require', '检定结果不能为空'],
		    ["expir", 'require|date', '检定日期不能为空'],
		    ["invoice_moeny", 'require|number', '发票金额不能为空'],
		    ["invoice_date", 'require|date', '发票日期不能为空'],
		    ["recipient", 'require', '领用人不能为空'],
		    ["duty", 'require', '责任部门不能为空'],
		    ["status", 'require', '状态不能为空'],
	];
}
