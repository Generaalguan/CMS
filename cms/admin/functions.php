<?php

function confirm($result){

    global $connection;

    if(!$result){
        die("Query failed ." . mysqli_error($connection));

    }
}


function insert_categories()
{
    global $connection;

    if (isset($_POST['submit'])) {

        $cat_title = $_POST['cat_title'];

        if ($cat_title == "" || empty($cat_title)) {
            echo "this field should not be empty";
        } else {
            $query = "INSERT INTO categories(cat_title) ";
            $query .= "value('{$cat_title}') ";

            $create_categorie_query = mysqli_query($connection, $query);

            if (!$create_categorie_query) {
                die("Query falied" . mysqli_error($connection));
            }

        }

    }
}

function findAllCategories()
{

    global $connection;

    $query = "SELECT * FROM categories ";
    $select_categories = mysqli_query($connection, $query);



    while ($row = mysqli_fetch_assoc($select_categories)) {
        $cat_id = $row['cat_id'];
        $cat_title = $row['cat_title'];


        echo "<tr>";
        echo "<td>{$cat_id}</td>";
        echo "<td>{$cat_title}</td>";
        echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>";
        echo "<td><a href='categories.php?edit={$cat_id}'>edit</a></td>";
        echo "</tr>";
    }
}

function deleteCategories()
{
    global $connection;

    if (isset($_GET['delete'])) {
        $the_cat_id = $_GET['delete'];
        $query = "DELETE FROM categories WHERE cat_id = {$the_cat_id}";
        $delete_query = mysqli_query($connection, $query);
        header("location: categories.php");
    }
}