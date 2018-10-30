<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/17 0017
 * Time: 11:02
 */

namespace app\admin\controller;


use app\admin\model\CompleteReport;

//竣工报告
class CompleteReportController extends FlowcommonController
{
    public function index()
    {
        $keyword = ['title'];
        //假装排序与搜索有重名的示例, 其中 create_time作为重名处理, update_time 不重名
        //示例参数
//        $sort = [['create_time' => 'create_times desc'], 'update_time'] asc为默认排序, 可不传, 不传则默认desc
        $sort = [['create_time' => 'create_times asc']];
        $between = ['create_time' => ['s_time', 'e_time', 'time']];
        $result = $this->page_parm_request($keyword, $sort, $between);

        if (isset($result['map']['create_time'][1])) {
            //将字符转换为相同类型即可比对
            if (is_array($result['map']['create_time'][1])) {
                foreach ($result['map']['create_time'][1] as &$value) {
                    $value = date('Y-m-d', $value);
                }
            } else {
                $result['map']['create_time'][1] = date('Y-m-d', $result['map']['create_time'][1]);
            }
        }
        $data = CompleteReport::getList($result['map'], $result['order'], $result['page_parm']);
        //获取项目名
        $project = projectList();
        //获取用户名
        $userName = get_personnel_list();
        foreach ($data as &$value) {
            $value->maker = array_column($userName, 'nickname', 'id')[$value->maker];
            $value->project_name = (array_column($project, 'title', 'id')[$value->project_name]);
        }
        return $this->fetch('', ['data' => $data, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
    }

    public function add()
    {
        //编辑
        if (count(input()) == 1 && isset(input()['id'])) {
            $data = CompleteReport::get(input()['id'])->toArray();
        } else {
            $data = [];
        }
        if ($this->request->isPost()) {
            $data = $this->request->post();
            $result = $this->validate($data, [
                'title'                        => 'require',
                'project_name'                 => 'number',
                'Number_of_people'             => 'require',
                'the_weather_in_the_morning'   => 'number',
                'the_weather_in_the_afternoon' => 'number',
            ], [
                'title'                        => '标题为必填',
                'project_name'                 => '项目为必填',
                'Number_of_people'             => '工人人数为必填为必填',
                'the_weather_in_the_morning'   => '上午天气必填',
                'the_weather_in_the_afternoon' => '下午天气必填',
            ]);
            if (true !== $result) {
                return ajax(0, $result);
            }
            if (isset($data['id'])) {
                $a = new CompleteReport();
                if ($a->allowField(true)->save($data, ['id' => $data['id']])) {
                    return ajax(1, '编辑成功');
                } else {
                    return ajax(0, '编辑失败');
                }
            }
            if ($c=CompleteReport::create($data)) {
                flow_approval($c['id']);
                return ajax(1, '添加成功');
            } else {
                return ajax(0, '添加失败');
            }
        }

        $projectList = projectList(['status'=>1]);
        $this->assign('the_weather_in_the_morning', [
            '晴', '雨', '阴',
        ]);
        $this->assign('the_weather_in_the_afternoon', [
            '晴', '雨', '阴',
        ]);
        $this->assign('project_name', array_column($projectList, 'title', 'id'));
        $this->assign('data', $data);
        return $this->fetch('sponsor/sponsor_list');
    }

    /**
     * @return array|bool
     */
    public function delete()
    {
        if ($this->request->isPost()) {
            if (is_string(input()['ids']) && is_array(explode(',', input()['ids']))) {

                if ($count = CompleteReport::destroy(input()['ids'])) {
                    return ajax(1, '成功删除' . $count . '条数据');
                } else {
                    return ajax(0, '删除失败');
                }
            }
        }
        return false;
    }

    /**
     * @return array|mixed
     * @throws \think\Exception
     * @throws \think\exception\DbException
     */
    public function view()
    {
        $data = CompleteReport::get(input()['id'])->toArray();


        $projectList = projectList();
        $this->assign('the_weather_in_the_morning', [
            '晴', '雨', '阴',
        ]);
        $this->assign('the_weather_in_the_afternoon', [
            '晴', '雨', '阴',
        ]);
        $this->assign('project_name', array_column($projectList, 'title', 'id'));
        return $this->fetch('sponsor/details', ['data' => $data]);
    }


    public function test()
    {

//        $file = fopen('D:\phpStudy\PHPTutorial\WWW\gittest_gotbash\jzerp\application\admin\controller\CompleteReportController.php', "r");  //打开文件url
//        header("Content-Type: application/octet-stream"); //指定mime类型为八进制文件流
//        header("Accept-Ranges: bytes");
////        header("Accept-Length: ".filesize('CompleteReportController.php'));
//        header("Content-Disposition: attachment; filename='CompleteReportController.php'");  //$name是文件的名字，一般在$url的最后
//        echo fread($file,filesize('D:\phpStudy\PHPTutorial\WWW\gittest_gotbash\jzerp\application\admin\controller\CompleteReportController.php'));
//        fclose($file);

    }
}