<?php include("inc/librerias.php"); ?>

  <body>
	<?php include("inc/header.php"); ?>
	<?php include("inc/menu.php"); ?>
	
	 
	<div id="loader" class="text-center"> <img src="giphy.gif"></div>
  <div class="content-wrapper">


	<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Pacientes</h1>
          </div>
      
  
       
        </div>
      </div><!-- /.container-fluid -->
    </section>


	    <!-- Main content -->
			<section class="content">
      <div class="row">
        <div class="col-12">

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Listado de pacientes</h3>
            </div>
            <!-- /.card-header -->
            <div id="loader" class="card-body">
							
						<div class="datos_ajax_delete"></div><!-- Datos ajax Final -->
	        	<div class="outer_div"></div><!-- Datos ajax Final -->

            </div>
            <!-- /.card-body -->

          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <?php include("inc/scripts.php"); ?>


	<script src="js/pacientes.js"></script>
	<script>
		$(document).ready(function(){
			load(1);
		});
  </script>

 </body>
</html>