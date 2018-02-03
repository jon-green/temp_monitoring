<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="60" />
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>  
	</head>


		 <br><br><br>
 <div class="col-md-4 text-center"></div>
  
 <div class="col-md-4 text-center">  

			  <div><button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='/temps/graphs/temp1.png'">	  
				Outside: <br>	  
				<?php
				  $rawtemp = exec('/home/jon/temps/gettemp.sh outside');
				  $temp = ($rawtemp / 1000);
				  $finaltemp = number_format((float)$temp, 1, '.', '');
				  
				  
				  echo $finaltemp
				  ?>
				  </button>
			  </div>

<br>

<!--                          <div><button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='/temps/graphs/temp2.png'">
                                Dining Room: <br>
                                <?php
                                  $rawtemp = exec('/home/jon/temps/gettemp.sh dining');
                                  $temp = ($rawtemp / 1000);
                                  $finaltemp = number_format((float)$temp, 1, '.', '');


                                  echo $finaltemp
                                  ?>
                                  </button>
                          </div>

<br>

<!--                          <div><button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='/temps/graphs/temp4.png'">
                                Lounge: <br>
                                <?php
                                  $rawtemp = exec('/home/jon/temps/gettemp.sh lounge');
                                  $temp = ($rawtemp / 1000);
                                  $finaltemp = number_format((float)$temp, 1, '.', '');


                                  echo $finaltemp
                                  ?>
                                  </button>
                          </div>

<br>
-->
                          <div><button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='/temps/graphs/temp5.png'">
                                Bedroom: <br>
                                <?php
                                  $rawtemp = exec('/home/jon/temps/gettemp.sh underfloor');
                                  $temp = ($rawtemp / 1000);
                                  $finaltemp = number_format((float)$temp, 1, '.', '');


                                  echo $finaltemp
                                  ?>
                                  </button>
                          </div>
<br>

                          <div><button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='/temps/graphs/temp3.png'">
                                Heating: <br>
                                <?php
                                  $rawtemp = exec('/home/jon/temps/gettemp.sh heating');
                                  $temp = ($rawtemp / 1000);
                                  $finaltemp = number_format((float)$temp, 1, '.', '');


                                  echo $finaltemp
                                  ?>
                                  </button>
                          </div>
<div>

<br><a href=/temps/graphs/all1.png>Combined graph</a>
<br>Last updated: <?php
$filename = '/tmp/rawtemps'; 
    echo date ("F d Y H:i", filemtime($filename));

?>
</div>
 <div class="col-md-4 text-center"></div>
</div>

</html>
