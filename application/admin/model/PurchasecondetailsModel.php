<?php
namespace app\admin\model;
use traits\model\SoftDelete;
use think\Model;

class PurchasecondetailsModel extends Model
{
    use SoftDelete;
    protected $autoWriteTimestamp = true;
    protected $deleteTime = 'delete_time';
    protected $name ='purchase_condetails';


}
