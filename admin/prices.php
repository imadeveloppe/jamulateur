<?php session_start(); if(!isset($_SESSION['admin'])) header("location:index.php");

require_once '../inc/functions.php';
$db = db_connect();

if(isset($_POST['address'],$_POST['id'])){
  extract($_POST);
  $query = $db->prepare("UPDATE `contents` SET `content` = ?  WHERE id = $id");
  $query->execute( array($address) );
}

?>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel='shortcut icon' href="../images/logo.png" type="image/x-icon" />
    <title>Admin - Jamulateur</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
      .btn-remove img{
          height: 22px;
          margin-left: 24px;
          cursor: pointer;
      }
      .fa.fa-thumbs-o-up,
      .fa.fa-thumbs-o-down{
          margin-top: 22px;
      }
      .nbr-participants .small-box .icon{
        margin-top: 11px;
      }
      .nbr-participants p{
        margin: 0;
      }
      .nbr-participants .small-box h3 {
          font-size: 38px;
          font-weight: bold;
          margin: 0 0 7px 0;
          white-space: nowrap;
          padding: 0;
      }
      @media (max-width: 990px) { 
      div .no-padding-990 {
          padding: 0 !important;
      }

      }
    </style>
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="./home.php" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>J</b>AM</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>JAMULATEUR</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
           
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="logout.php" class=""> 
                  <span class="hidden-xs">Déconnexion</span>
                </a>
                 
              </li>
              <!-- Control Sidebar Toggle Button --> 
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
         
          <!-- search form -->
      
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
         <?php $activePage = 'prices' ?>
         <?php include 'menu.php'; ?>
         
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Coûts & Forfaits
          </h1>
          <ol class="breadcrumb">
            <li><a href="./"><i class="fa fa-dashboard"></i> accueil</a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content"> 
          <div class="row">  
            <div class="col-sm-12 col-md-6">
                <!-- Custom Tabs -->
                  <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                      <li class="active"><a href="#tab_1" data-toggle="tab">Jam Mobile</a></li>
                      <li><a href="#tab_2" data-toggle="tab">Jam Son</a></li>
                      <li><a href="#tab_3" data-toggle="tab">Les Visuels</a></li> 
                      <li><a href="#tab_4" data-toggle="tab">Le Son</a></li> 
                      <li><a href="#tab_5" data-toggle="tab">Les Options</a></li> 
                      <li><a href="#tab_6" data-toggle="tab">Autres</a></li> 
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane active" id="tab_1">
                        <form method="post" action="update-prices.php">
                          <div class="row form-group">
                           <label class="col-xs-2"  align="right">Nombre de jour</label>
                           <label class="col-xs-10">Coût</label>
                          </div>

                          <?php  
                            $query = $db->query("SELECT * FROM JamMobile");
                            $result = $query->fetchAll(PDO::FETCH_ASSOC);
                          ?>   
                          <?php foreach ($result as $key => $row): ?>
                            <div class="row form-group">
                             <label class="col-xs-2" align="right" style="padding-top: 7px"><?= $row['nbrJours'] ?></label>
                             <div class="col-xs-10">
                                <input type="text" class="form-control" name="<?= $row['idJamMobile'] ?>" value="<?= $row['TotalPrice'] ?>">
                             </div>
                            </div>

                          <?php endforeach ?>

                          <div class="row form-group">
                           <label class="col-xs-2"  align="right"></label>
                           <label class="col-xs-10">
                             <input type="hidden" name="type" value="JamMobile">
                             <button class="btn btn-block btn-success">Mise à jour</button>
                           </label>
                          </div>
                        </form>
                      </div>
                      <!-- /.tab-pane -->
                      <div class="tab-pane" id="tab_2">
                          <form method="post" action="update-prices.php">
                            <div class="row form-group">
                             <label class="col-xs-2"  align="right">Nombre de jour</label>
                             <label class="col-xs-10">Coût</label>
                            </div>

                            <?php  
                              $query = $db->query("SELECT * FROM JamSon");
                              $result = $query->fetchAll(PDO::FETCH_ASSOC);
                            ?>   
                            <?php foreach ($result as $key => $row): ?>
                              <div class="row form-group">
                               <label class="col-xs-2" align="right" style="padding-top: 7px"><?= $row['nbrJours'] ?></label>
                               <div class="col-xs-10">
                                  <input type="text" class="form-control" name="<?= $row['idJamSon'] ?>" value="<?= $row['price'] ?>">
                               </div>
                              </div>

                            <?php endforeach ?>

                            <div class="row form-group">
                             <label class="col-xs-2"  align="right"></label>
                             <label class="col-xs-10">
                               <input type="hidden" name="type" value="JamSon">
                               <button class="btn btn-block btn-success">Mise à jour</button>
                             </label>
                            </div>
                          </form>
                      </div>
                      <!-- /.tab-pane -->
                      <div class="tab-pane" id="tab_3">
                         
                      <form method="post" action="update-prices.php">
                            <div class="row form-group">
                             <label class="col-xs-3">Images animées</label>
                             <label class="col-xs-3">Coût</label>
                             <label class="col-xs-6">Description</label>
                            </div>

                            <?php  
                              $query = $db->query("SELECT * FROM visuel");
                              $result = $query->fetchAll(PDO::FETCH_ASSOC);
                            ?>   
                            <?php foreach ($result as $key => $row): ?>
                              <div class="row form-group">
                               <div class="col-xs-3">
                                 <textarea class="form-control" name="fields[<?= $key ?>][name]"><?= ($row['name']) ?></textarea>
                               </div>
                               <div class="col-xs-3">
                                  <input type="hidden" name="fields[<?= $key ?>][id]" value="<?= $row['idVisuel'] ?>">
                                  <input type="text" class="form-control" name="fields[<?= $key ?>][price]" value="<?= $row['price'] ?>" >
                               </div>
                               <div class="col-xs-6">
                                 <textarea class="form-control" rows="8" name="fields[<?= $key ?>][description]"><?= ($row['description']) ?></textarea>
                               </div>
                              </div>

                            <?php endforeach ?>

                            <div class="row form-group">
                             <label class="col-xs-9"  align="right"></label>
                             <label class="col-xs-3" align="right">
                               <input type="hidden" name="type" value="visuel">
                               <button class="btn btn-success btn-block">Mise à jour</button>
                             </label>
                            </div>
                          </form>

                      </div>
                      <!-- /.tab-pane -->
                       <div class="tab-pane" id="tab_4">
                         
                         <form method="post" action="update-prices.php">
                            <div class="row form-group">
                             <label class="col-xs-3">Son</label>
                             <label class="col-xs-3">Coût</label>
                             <label class="col-xs-6">Description</label>
                            </div>

                            <?php  
                              $query = $db->query("SELECT * FROM son");
                              $result = $query->fetchAll(PDO::FETCH_ASSOC);
                            ?>   
                            <?php foreach ($result as $key => $row): ?>
                              <div class="row form-group">
                               <div class="col-xs-3">
                                 <textarea class="form-control" name="fields[<?= $key ?>][name]"><?= ($row['name']) ?></textarea>
                               </div>
                               <div class="col-xs-3">
                                  <input type="hidden" name="fields[<?= $key ?>][id]" value="<?= $row['idSon'] ?>">
                                  <input type="text" class="form-control" name="fields[<?= $key ?>][price]" value="<?= $row['price'] ?>" >
                               </div>
                               <div class="col-xs-6">
                                 <textarea class="form-control" rows="8" name="fields[<?= $key ?>][description]"><?= ($row['description']) ?></textarea>
                               </div>
                              </div>

                            <?php endforeach ?>

                            <div class="row form-group">
                             <label class="col-xs-9"  align="right"></label>
                             <label class="col-xs-3" align="right">
                               <input type="hidden" name="type" value="son">
                               <button class="btn btn-success btn-block">Mise à jour</button>
                             </label>
                            </div>
                          </form>
                         
                      </div>
                      <!-- /.tab-pane -->
                       <div class="tab-pane" id="tab_5">
                          
                          <form method="post" action="update-prices.php">
                            <div class="row form-group">
                             <label class="col-xs-3">Options</label>
                             <label class="col-xs-3">Coût</label>
                             <label class="col-xs-6">Description</label>
                            </div>

                            <?php  
                              $query = $db->query("SELECT * FROM options");
                              $result = $query->fetchAll(PDO::FETCH_ASSOC);
                            ?>   
                            <?php foreach ($result as $key => $row): ?>
                              <div class="row form-group">
                               <div class="col-xs-3">
                                 <textarea rows="3" class="form-control" name="fields[<?= $key ?>][name]"><?= ($row['name']) ?></textarea>
                               </div>
                               <div class="col-xs-3">
                                  <input type="hidden" name="fields[<?= $key ?>][id]" value="<?= $row['idOption'] ?>">
                                  <input type="text" class="form-control" name="fields[<?= $key ?>][price]" value="<?= $row['price'] ?>">
                               </div>
                               <div class="col-xs-6">
                                 <textarea class="form-control" rows="8" name="fields[<?= $key ?>][description]"><?= ($row['description']) ?></textarea>
                               </div>
                              </div>

                            <?php endforeach ?>

                            <div class="row form-group">
                             <label class="col-xs-9"  align="right"></label>
                             <label class="col-xs-3" align="right">
                               <input type="hidden" name="type" value="options">
                               <button class="btn btn-success btn-block">Mise à jour</button>
                             </label>
                            </div>
                          </form>
                         
                         
                        </div>
                        <!-- /.tab-pane -->

                        <div class="tab-pane" id="tab_6">
                          <form method="post" action="update-prices.php">
                            <div class="row form-group">
                             <label class="col-xs-8">Options</label>
                             <label class="col-xs-4">Coût</label> 
                            </div>

                            <?php  
                              $query = $db->query("SELECT * FROM autres");
                              $result = $query->fetchAll(PDO::FETCH_ASSOC);
                            ?>   
                             <hr>
                            <div class="row form-group">
                             <div class="col-xs-8">
                                Coût d’hébergement - restauration d’une journée d’intervenant image
                             </div>
                             <div class="col-xs-4">
                                <input type="hidden" name="fields[0][id]" value="<?= $result[0]['id'] ?>">
                                <input type="text" class="form-control" name="fields[0][price]" value="<?= $result[0]['price'] ?>">
                             </div> 
                            </div>
                            <hr>
                            <div class="row form-group">
                             <div class="col-xs-8">
                                Coût d’hébergement - restauration d’une journée d’intervenant son
                             </div>
                             <div class="col-xs-4">
                                <input type="hidden" name="fields[1][id]" value="<?= $result[1]['id'] ?>">
                                <input type="text" class="form-control" name="fields[1][price]" value="<?= $result[1]['price'] ?>">
                             </div> 
                            </div>
                            <hr>
                            <div class="row form-group">
                             <div class="col-xs-8">
                                Coût de déplacement image / Km
                             </div>
                             <div class="col-xs-4">
                                <input type="hidden" name="fields[2][id]" value="<?= $result[2]['id'] ?>">
                                <input type="text" class="form-control" name="fields[2][price]" value="<?= $result[2]['price'] ?>">
                             </div> 
                            </div> 
                            <hr>
                            <div class="row form-group">
                             <div class="col-xs-8">
                                Coût de déplacement son / Km
                             </div>
                             <div class="col-xs-4">
                                <input type="hidden" name="fields[3][id]" value="<?= $result[3]['id'] ?>">
                                <input type="text" class="form-control" name="fields[3][price]" value="<?= $result[3]['price'] ?>">
                             </div> 
                            </div> 
                            <hr>
                            <div class="row form-group">
                             <label class="col-xs-9"  align="right"></label>
                             <label class="col-xs-3" align="right">
                               <input type="hidden" name="type" value="autres">
                               <button class="btn btn-success btn-block">Mise à jour</button>
                             </label>
                            </div>
                          </form>
                        </div>
                    </div>
                    <!-- /.tab-content -->
                  </div>
                  <!-- nav-tabs-custom -->
            </div>


            <?php  
              $query = $db->query("SELECT * FROM contents where slug = 'adresse_depot' ");
              $result = $query->fetchAll(PDO::FETCH_ASSOC)[0];
            ?> 

            <div class="col-sm-6">
              <div class="box">
                <div class="box-header">L'address du dépot</div> 
                <div class="box-body table-responsive ">
                  <form method="post" action="">
                      <div class="form-group">
                        <label for="exampleFormControlInput1"></label>
                        <input type="text" class="form-control" name="address" placeholder="" required value="<?= $result['content'] ?>">
                        <input type="hidden" name="id" value="<?= $result['id'] ?>">
                      </div>
                      <div class="form-group">
                        <button class="btn btn-block btn-success">Mise à jour</button>
                      </div>
                  </form>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>

          </div>
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      

      <!-- Control Sidebar -->
     
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->
 
    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script> 
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
  </body>
</html>