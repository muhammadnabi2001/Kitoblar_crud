<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
    .janr-link {
        text-decoration: none;
    }
</style>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-2">
                <h1><a href="/" class="janr-link">Muallif</a></h1>
            </div>
            <div class="col-2">
                <h1><a href="/janrlar" class="janr-link">Janrlar</a></h1>
            </div>
            <div class="col-2">
                <h1><a href="/kitoblar" class="janr-link">Kitoblar</a></h1>
            </div>
        </div>
        <div class="row">
            <h1>Kitoblar bo'limi</h1>
        </div>
        <div class="row">
            <div class="col-4">

                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createModal">
                    AddKitob
                </button>

                <div class="modal fade" id="createModal" tabindex="-1" aria-labelledby="createModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="createModalLabel">Modal title</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="/createbook" method="post" enctype="multipart/form-data">
                                    <div class="mb-3">
                                        <label for="nomi" class="form-label">Kitob Nomi</label>
                                        <input type="text" class="form-control" id="nomi" name="nomi" placeholder="Book Name" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="muallif" class="form-label">Kitob Muallifi</label>
                                        <select class="form-select" id="muallif" name="muallif" required>
                                            <?php
                                            foreach ($muallif as $m) { ?>
                                                <option value="<?= $m['id'] ?>"><?= $m['fio'] ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="janr" class="form-label">Kitob Janri</label>
                                        <select class="form-select" id="janr" name="janr">
                                            <?php
                                            include "App/Models/Janrlar.php";

                                            use App\Models\Janrlar;

                                            $janrlar = Janrlar::all();
                                            foreach ($janrlar as $janr) { ?>
                                                <option value="<?= $janr['id'] ?>"><?= $janr['name'] ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="desc" class="form-label">Kitob Description</label>
                                        <textarea class="form-control" id="desc" name="desc" rows="2" required></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label for="desc" class="form-label">Kitob Description</label>
                                        <input type="file" class="form-control" name="rasm" required>
                                    </div>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" name="ok">Add</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-10">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Kitob nomi</th>
                            <th scope="col">Kitob muallif</th>
                            <th scope="col">Kitob description</th>
                            <th scope="col">Kitob Rasmi</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $con=new PDO("mysql:host=localhost;dbname=php_darslar",'root','root');
                        $sql="SELECT kitoblar.id,kitoblar.nomi, muallif.fio AS muallif, janr.name, kitoblar.description, kitoblar.rasm 
                        FROM kitoblar 
                        LEFT JOIN muallif ON kitoblar.muallif_id = muallif.id 
                        LEFT JOIN janr ON kitoblar.janr_id = janr.id;
                        ";
                        $st=$con->query($sql);
                        $kitoblar=$st->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($kitoblar as $m) { ?>
                            <tr>
                                <td><?= $m['id'] ?></td>
                                <td><?= $m['nomi'] ?></td>
                                <td><?= $m['muallif'] ?></td>
                                <td><?= $m['description'] ?></td>
                                <td><img src="<?php echo 'rasm/'.$m['rasm']?>" alt="" width="100px"></td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editModal<?= $m['id'] ?>">
                                        Edit
                                    </button>

                                    <div class="modal fade" id="editModal<?= $m['id'] ?>" aria-labelledby="editModalLabel<?= $m['id'] ?>" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="editModal<?= $m['id'] ?>">Change Muallif Info</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="/edit" method="post">
                                                        <div class="mb-3">
                                                            <input type="hidden" name="id" value="<?= $m['id'] ?>">
                                                            <label for="name" class="form-label">Kitob nomi</label>
                                                            <input type="text" class="form-control" id="name" name="name" value="<?= $m['nomi'] ?>">
                                                        </div>
                                                        <div class="mb-3">
                                                            <input type="hidden" name="id" value="<?= $m['id'] ?>">
                                                            <label for="name" class="form-label">Kitob muallifi</label>
                                                            <input type="text" class="form-control" id="muallifi" name="muallif" value="<?= $m['muallif'] ?>">
                                                        </div>
                                                        <div class="mb-3">
                                                            <input type="hidden" name="id" value="<?= $m['id'] ?>">
                                                            <label for="name" class="form-label">Kitob Description</label>
                                                            <input type="text" class="form-control" id="desc" name="desc" value="<?= $m['description'] ?>">
                                                        </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary" name="ok">Update</button>
                                                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <form action="/delete" method="post">
                                        <input type="hidden" name="id" value="<?= $m['id'] ?>">
                                        <button type="submit" name="ok" class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        <?php }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>