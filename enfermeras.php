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
            <h1>Enfermeras</h1>
          </div>
          <div class="col-sm-6">
					<h3 class='text-right'>		
          <a href="enfermeraRegistro.php">
				<button type="button" class="btn btn-success" ><i class='glyphicon glyphicon-plus'></i> Agregar</button></a>
			</h3>
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
              <h3 class="card-title">Listado de enfermeras</h3>
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


	<script src="js/medicos.js"></script>
	<script>
		$(document).ready(function(){
			load(1);
		});
  </script>

 </body>
</html>