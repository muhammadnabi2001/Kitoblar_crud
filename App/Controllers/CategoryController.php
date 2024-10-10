<?php

namespace App\Controllers;

use App\Models\Category;
use App\Models\Janrlar;
use App\Models\Kitoblar;
use PDO;

class CategoryController
{
    public function index()
    {
        $con = new PDO("mysql:host=localhost;dbname=php_darslar", 'root', 'root');
        $sql = "SELECT muallif.id,muallif.fio,COUNT(kitoblar.muallif_id) AS soni FROM muallif LEFT JOIN kitoblar ON muallif.id=kitoblar.muallif_id GROUP BY muallif.id";
        $st = $con->query($sql);
        $muallif = $st->fetchAll(PDO::FETCH_ASSOC);
        return view('index', 'Home', $muallif);
    }
    public function janrlar()
    {
        $con = new PDO("mysql:host=localhost;dbname=php_darslar", 'root', 'root');
        $sql = "SELECT janr.id,janr.name,COUNT(kitoblar.janr_id) AS soni FROM janr LEFT JOIN kitoblar ON janr.id=kitoblar.janr_id GROUP BY janr.id";
        $st = $con->query($sql);
        $janrlar = $st->fetchAll(PDO::FETCH_ASSOC);
        return view('janrlar', 'janrlar', $janrlar);
    }
    public function createbook()
    {
        if (isset($_POST['ok'])) {
            $nomi = $_POST['nomi'];
            $muallif_id = $_POST['muallif'];
            $janr_id = $_POST['janr'];
            $description = $_POST['desc'];

            $data = explode('.', $_FILES['rasm']['name']);
            $filePath = date('Y-m-d_H-i-s') . '.' . $data[1];
            move_uploaded_file($_FILES['rasm']['tmp_name'], 'rasm/' . $filePath);
            $data = [
                'nomi' => $nomi,
                'muallif_id' => $muallif_id,
                'janr_id' => $janr_id,
                'description' => $description,
                'rasm' => $filePath
            ];
            Kitoblar::create($data);
            header("location: /kitoblar");

            return view('createbook', 'create book');
        }
    }
    public function kitoblar()
    {
        $muallif = Category::all();
        return view('kitoblar', 'kitoblar', $muallif);
    }
    public function edit()
    {
        if (isset($_POST['ok'])) {
            $data = [
                'fio' => $_POST['name']
            ];
            Category::update($data, $_POST['id']);
            header("location: /");
        }
    }
    public function updatejanr()
    {
        if (isset($_POST['ok'])) {
            $data = [
                'name' => $_POST['name']
            ];
            Janrlar::update($data, $_POST['id']);
            header("location: /janrlar");
        }
    }
    public function create()
    {
        if (isset($_POST['ok'])) {
            $data = [
                'fio' => $_POST['fio']
            ];
            Category::create($data);
            header('location: /');
        }
    }
    public function add()
    {
        if (isset($_POST['ok'])) {
            $data = [
                'name' => $_POST['name']
            ];
            Janrlar::create($data);
            header('location: /janrlar');
        }
    }
    public function delete()
    {
        if (isset($_POST['ok'])) {
            $id = $_POST['id'];
            Category::delete($id);
            header('location: /');
        }
    }
    public function deletejanr()
    {
        if (isset($_POST['ok'])) {
            $id = $_POST['id'];
            janrlar::delete($id);
            header('location: /janrlar');
        }
    }
    public function show()
    {
        if (isset($_POST['ok'])) {
            $id = $_POST['id'];
            $models = Category::show($id);
            return view('show', 'show', $models);
        }
    }
}
