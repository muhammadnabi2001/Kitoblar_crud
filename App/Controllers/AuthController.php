<?php
namespace App\Controllers;
use App\Helpers\Views;
use App\Models\User;
class Authcontroller
{
    public function __construct()
    {
        //layout(loginMain);
    }
    public function loginPage()
    {
        return view('auth/login','Login');
    }
    public function registerPage()
    {
        return view('auth/register','Register');
    }
    public function login()
    {
        $data=[
            'email'=>$_POST['email'],
            'password'=>$_POST['password']
        ];
        $user=User::attach($data);
        if($user){
            $_SESSION['Auth']=$user;
            header("location: /");
        }else{
            $_SESSION['message']='email yoki password xato';
            header('location: /login');
        }
    }
    public function logout()
    {
        unset($_SESSION['Auth']);
        header("location: /login");
    }

}
?>
