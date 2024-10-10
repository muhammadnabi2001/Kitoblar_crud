<?php
include "App/Models/kitoblar.php";

use App\Models\Model;

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
    Model::create($data);
    header("location: /kitoblar");


    echo $nomi;
    echo $muallif_id;
    echo $janr_id;
    echo $description;
}
