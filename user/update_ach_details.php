<?php 
	include("../connection.php");

	$id = base64_decode($_GET['q']);
	$q = "select * from achievement_details where ach_id='$id'";
	$result = $con->query($q);
	if ($result->num_rows > 0)
	{
    	while($r = $result->fetch_assoc())
    	{
    		$reg_id = $r['reg_id'];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Connectify</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/symbol.png" type="image/icon type">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

</head>
<body style="background-color: #343a40;color: white">

<section class="testimonial py-5" id="testimonial">
    <div class="container">
    	<form method="post" action="update_ach.php" enctype="multipart/form-data">
	        <div class="row ">
		            <div class="col-md-4 py-5 bg-primary text-white text-center ">
		                <div class=" ">
		                    <div class="card-body">
		                        <img src="img/symbol.png" style="width:30%" title="Connectify">
		                        <h2 class="py-3 text-warning">Achievement Details</h2>
		                        <p class="text-white">Welcome to the Connectify. This is the registration page for creating your own portfolio for the better experience.</p>

		                    </div>
		                </div>
		            </div>
		            <div class="col-md-8 py-5 border">
		            	 <h1 class="pb-4 text-warning">Achievement Details</h1>
							<p class="text-info"><b>You can add only one record at a time. After adding a record submit provide other informations.</b></p>
		                    <!-- <a href="index.php" class="text-primary">Click here to move next</a> <br><br> -->

		                    <div class="form-row">	
		                        <div class="form-group col-md-6">
		                        <?php 
		                        		$query=mysqli_query($con,"select * from reg_users where reg_id='$reg_id'");
		                        		if(mysqli_num_rows($query)>0)
		                        		{
		                        			while ($row=mysqli_fetch_array($query)) {
		                        ?>
		                        <div class="form-row">
			                        <div class="form-group col-md-10">
			                        
			                        <input type="hidden" name="reg_id" value="<?php echo $reg_id; ?>">
			                        <input type="hidden" name="ach_id" value="<?php echo $r['ach_id']; ?>">
			                          <input id="Full Name" name="name" placeholder="Full Name" class="form-control" type="text" required="" value="<?php echo $row['reg_name']; ?>" disabled>
			                        </div>
			                        <div class="form-group col-md-10">
			                          <input type="email" class="form-control email" id="email" placeholder="Email" name="email" required="" value="<?php echo $row['reg_email'] ?>" disabled>
			                        </div>
		                    	</div>
		                        <?php }} ?>	
		                        </div>
		                    </div>
		                    
		                    <img src="certificates/<?php echo $r['ach_certy']; ?>" style="width: 20%;height: 20%%;" alt="Certy Image" title="certificate"><br><br>

		                    <div class="form-row">
			                        <div class="form-group col-md-12">
			                        	<input type="text" name="ach_name" placeholder="Achievement Name" class="form-control" required="" value="<?php echo $r['ach_name']; ?>">
			                        </div>
			                         <div class="form-group col-md-12">
			                        	<input type="text" name="ach_rank" placeholder="Achievement Rank" class="form-control" required="" value="<?php echo $r['ach_rank']; ?>">
			                        </div>
			                        
		                    </div>

		                    <div class="form-row">
			                        <div class="form-group col-md-12">
			                        	<input type="text" name="ach_year" placeholder="Achievement year" class="form-control" required="" value="<?php echo $r['ach_year']; ?>">
			                        </div>
			                        <div class="col-md-12 form-group">
			                        	<label class="text-warning">Achivement certificate</label>
			                        	<input type="file" name="ach_certy" id="ach_certy">
			                        	<input type="hidden" name="ach_certy_old" value="<?php echo $r['ach_certy']; ?>">
									</div>
		                    </div>

		                     <div class="form-row">
			                
		                     <p class="text-info">Please provide some accurate details with us so we can make your portfolio more attractive and reliable with the provided details.</p>
		                    <div class="form-row">
		                        <input type="submit" class="btn btn-danger" name="submit" value="Update">
		                    </div>
		            </div>
	        </div>
   		</form>
    </div>
</section>

</body>
</html>
<?php }} ?>