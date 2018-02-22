<?php

$dsn = "mysql:host=localhost;dbname=products";
$username = 'root';
$password = null;
$conn = new PDO ($dsn, $username, $password);

function getOne($query, array $binds = [])
{
    //Define global variables that will be needed
    global $conn;

    $statement = $conn->prepare($query);
    foreach($binds as $key => $value) {
        $statement->bindValue($key, $value);
    }
    $statement->execute();
    $result = $statement->fetch();
    $statement->closeCursor();

    return $result;
}

function getMany($query, array $binds = [])
{
    //Define global variables that will be needed
    global $conn;

    $statement = $conn->prepare($query);
    foreach($binds as $key => $value) {
        $statement->bindValue($key, $value);
    }
    $statement->execute();
    $results = $statement->fetchAll();
    $statement->closeCursor();

    return $results;
}

// This function will insert html code for the category tables
function displayTable($items, $index, $divClass = "tab-pane fade")
{ ?>
    <div class="<?= $divClass ?>" id="list-cat<?= $index ?>" role="tabpane">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <!-- Go through every item in the cat1 array -->
                <?php foreach($items as $item): ?>
                    <tr>
                        <td><?= $item['code'] ?></td>
                        <td><?= $item['name'] ?></td>
                        <td><?= $item['price'] ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
<?php }
