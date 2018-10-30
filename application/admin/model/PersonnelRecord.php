<?php
/**
 * Created by PhpStorm.
 * User: 咖啡
 * Date: 2018/8/29
 * Time: 1:28
 */

namespace app\admin\model;

use think\Model;

class PersonnelRecord extends Model
{
    protected $name = 'personnel_user_record';

    public function getDateOnBoardAttr($value)
    {
        return date('Y-m-d', $value);
    }
    public function setDateOnBoardAttr($value)
    {
        return   $value ?strtotime($value) : time();
    }

    public function getWorkDateAttr($value)
    {
        return date('Y-m-d', $value);
    }
    public function setWorkDateAttr($value)
    {
        return   $value ?strtotime($value) : time();
    }

    public function getGraduationDateAttr($value)
    {
        return date('Y-m-d', $value);
    }
    public function setGraduationDateAttr($value)
    {
        return   $value ?strtotime($value) : time();
    }
    public function getTitleAcquisitionDateAttr($value)
    {
        return date('Y-m-d', $value);
    }
    public function setTitleAcquisitionDateAttr($value)
    {
        return   $value ?strtotime($value) : time();
    }


    public function getPoliticalStatusDateAttr($value)
    {
        return date('Y-m-d', $value);
    }
    public function setPoliticalStatusDateAttr($value)
    {
        return   $value ?strtotime($value) : time();
    }
    public function getResignationDateAttr($value)
    {
        return date('Y-m-d', $value);
    }
    public function setResignationDateAttr($value)
    {
        return   $value ?strtotime($value) : time();
    }

    public function getPositiveDateAttr($value)
    {
        return date('Y-m-d', $value);
    }
    public function setPositiveDateAttr($value)
    {
        return   $value ?strtotime($value) : time();
    }

}