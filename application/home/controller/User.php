<?php
namespace app\home\controller;
use app\common\service\UserService;
class User extends Base {

    public function index(){
//        $b = UserService::getAllData();
//        echo json_encode($b);die;
        return view();
    }

}