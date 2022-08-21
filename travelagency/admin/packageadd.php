        <?php 
            include_once "../config.php";
            if(isset($_POST['Submit'])){
                $place = $_POST['Place'];
                $description = $_POST['description'];
                $cost = $_POST['cost'];
                $image = $_FILES['image']['name'];
            
                $sql = "insert into packages (Place,description,cost,images) values ('$place','$description','$cost','$image')";
            
                move_uploaded_file($_FILES['image']['tmp_name'],'../images/'.$image);
            
                mysqli_query($conn,$sql);
                header("location:dashboard.php");
            }
        ?>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                <h1>Add Package</h1>
                <form action="" method="post" enctype="multipart/form-data">
                    <p>
                   <input type="text" name="Place" placeholder="Place">
                    </p>
                    <p>
                       
                        <textarea name="description" placeholder="Description"  rows="10"></textarea>
                    </p>
                    <p>
                       
                        <input type="text" name="cost" placeholder="Cost in NRs"  >
                    </p>
                    <P>
                       
                        <input type="file" name="image" placeholder="Images">
                    </P>
        

                    <button name="Submit">Submit</button>
                </form>
                </div>
            </div>
           
        </div>


