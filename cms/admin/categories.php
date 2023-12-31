<?php include "includes/admin_header.php"; ?>


<div id="wrapper">

    <!-- Navigation -->
    <?php include "includes/admin_navigation.php"; ?>

    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">


                    <h1 class="page-header">
                        Welkom to Admin
                        <small>Author welkom</small>
                    </h1>

                    <div class="col-xs-6">


                        <?php 
                        //Add categories
                        insert_categories(); ?>


                        <form action="" method="post">
                            <div class="form-group">
                                <label for="cat_title">Add Category </label>
                                <input class="form-control" type="text" name="cat_title">
                            </div>
                            <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
                        </form>

                        <?php
                        //Update and Include
                        if (isset($_GET['edit'])) {
                            $cat_id = $_GET['edit'];
                            include "includes/update_categories.php";
                        }
                        ?>


                    </div>



                    <div class="col-xs-6">

                        <?php

                        ?>

                        <table class="table table_bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Category Title</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <?php 
                                    //find all Categories query
                                    findAllCategories();
                                    ?>

                                    <?php
                                        //delete query
                                    deleteCategories();
                                    ?>
                                </tr>
                            </tbody>
                        </table>
                    </div>





                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<?php include "includes/admin_footer.php"; ?>