<?php
    require_once ('./db.php');

    //Get all the categories from the database
    $categories = getMany("SELECT * FROM categories");
    //Now get all the products from specific categories
    $products_cat1 = getMany("SELECT * FROM products WHERE category_id = 1");
    $products_cat2 = getMany("SELECT * FROM products WHERE category_id = 2");
    $products_cat3 = getMany("SELECT * FROM products WHERE category_id = 3");
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Game Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        Products
                    </div>
                    <div class="card-body">
                        <div class="row mb-5">
                            <div class="col-4">
                                <div class="list-group mb-5" id="list-tab" role="tablist">
                                    <!-- Go through each category and create a list group item for it -->
                                    <?php foreach($categories as $index => $category): ?>
                                        <!-- We need to make sure that the first item in the list is set active and the others aren't -->
                                        <?php if($index == 0): ?>
                                            <a class="list-group-item list-group-item-action active"
                                                id="list-cat<?= $category['id'] ?>-list"
                                                href="#list-cat<?= $category['id'] ?>"
                                                data-toggle="list"><?= $category['name'] ?></a>
                                        <?php else: ?>
                                            <a class="list-group-item list-group-item-action"
                                                id="list-cat<?= $category['id'] ?>-list"
                                                href="#list-cat<?= $category['id'] ?>"
                                                data-toggle="list"><?= $category['name'] ?></a>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="tab-content" id="nav-tabContent">
                                    <!-- Category 1 tab -->
                                    <?php displayTable($products_cat1, 1, "tab-pane fade show active"); ?>
                                    <!-- Category 2 tab -->
                                    <?php displayTable($products_cat2, 2); ?>
                                    <!-- Category 3 tab -->
                                    <?php displayTable($products_cat3, 3); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
