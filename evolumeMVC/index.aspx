﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="evolumeMVC.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>eVolume</title>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&amp;subset=latin-ext" rel="stylesheet">
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <header class="site-header">
        <div class="top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p>Aluguel de acessórios para carros</p>
                    </div>
                    <div class="col-sm-6">
                        <ul class="list-inline pull-right">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                            <li><a href="tel:+902222222222"><i class="fa fa-phone"></i> +90 222 222 22 22</a></li>
                        </ul>                        
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-default">
			<div class="container">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar-collapse">
					<span class="sr-only">Toggle Navigation</span>
					<i class="fa fa-bars"></i>
				</button>
				<a href="index.html" class="navbar-brand">
					<img src="img/logo.jpg" alt="Post" height="130" width="130">
				</a>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-navbar-collapse">
                    <ul class="nav navbar-nav main-navbar-nav">
                    <!--
                        <li class="active"><a href="index.html" title="">HOME</a></li>
                        <li class="dropdown">
                            <a href="#" title="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">DROPDOWN MENU <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#" title="">SUB MENU 1</a></li>
                                <li><a href="#" title="">SUB MENU 2</a></li>
                                <li><a href="#" title="">SUB MENU 3</a></li>
                            </ul>
                        </li>
                        <li><a href="page.html" title="">PAGE</a></li>
                        <li><a href="category.html" title="">CATEGORY</a></li>
                        <li><a href="#" title="">MENU ITEM</a></li>
                        <li><a href="#" title="">MENU ITEM</a></li>
                         <li><a href="page.html" title="">Buscar</a></li>
                        -->
                        <li class="active"><a href="index.html" title="">>> Entrar</a></li>
                        <li class="active"><a href="index.html" title="">>> Contratar</a></li>
                       
                        <li>
                            <div class="clearfix"></div>
                            <br/>
                        	<div class="login-form-1">
                                <form id="login-form" class="text-left">
                                    <div class="login-form-main-message"></div>
                                    <div class="main-login-form">
                                        <div class="login-group">
                                            <div class="form-group">
                                                <label for="ad" class="sr-only">Buscar</label>
                                                <input type="text" class="form-control" id="ad" name="ad" placeholder="Buscar">
                                            </div>
                                        </div>
                                        <button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
                                    </div>
                                </form>
                            </div>
                                                      
                        </li>
                    </ul>                           
                </div><!-- /.navbar-collapse -->                
				<!-- END MAIN NAVIGATION -->
			</div>
		</nav>        
    </header>
    <main class="site-main">
        <section class="hero_area">
            <div class="hero_content">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <!--<h1>eVolume</h1>-->
                            <h2>Aluguel de acessórios para carros</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="boxes_area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="box">
                            <h3>ENCONTRE</h3>
                            <p>Encontre o acessório mais próximo a sua localização de acordo com seu carro e necessidade.</p>
                            <i class="fa fa-cogs"></i>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="box">
                            <h3>CONTRATE</h3>
                            <p>Contrate o acessório escolhido com segurança e conforto.</p>
                            <i class="fa fa-exclamation-triangle"></i>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="box">
                            <h3>USE</h3>
                            <p>Use o acessório para o que deseja. Passear, viajar, pedalar... Agora é pé na estrada!</p>
                            <i class="fa fa-clipboard"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="services">
            <h2 class="section-title">ACESSÓRIOS</h2>
            <p class="desc">Os acessórios que voê precisa</p>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="fa fa-cogs"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">SUPORTES PARA BICICLETAS</h4>
                                <p>Lorem ipsum dolor amet,consectetur adipiscing elit. Proin id pulvinar magna. Aenean accumsan iaculis lorem, nec sodales lectus auctor tempor.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="fa fa-user-md"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">RACKS PARA TETOS</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id pulvinar magna. Aenean accumsan iaculis lorem, nec sodales lectus auctor tempor.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="fa fa-stethoscope"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">BAGAGEIROS DE CARGA</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id pulvinar magna. Aenean accumsan iaculis lorem, nec sodales lectus auctor tempor.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="fa fa-graduation-cap"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">SUPORTES PARA EQUIPAMENTOS DE ESPORTES PARA ÁGUA</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id pulvinar magna. Aenean accumsan iaculis lorem, nec sodales lectus auctor tempor.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="fa fa-file-text-o"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">SUPORTES PARA EQUIPAMENTOS DE ESPORTES DE INVERNO</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id pulvinar magna. Aenean accumsan iaculis lorem, nec sodales lectus auctor tempor.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="fa fa-heartbeat"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">BOLSAS E RACKS PARA BICICLETAS</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id pulvinar magna. Aenean accumsan iaculis lorem, nec sodales lectus auctor tempor.</p>
                            </div>
                        </div>
                    </div>                     
                </div>
            </div>
        </section>
        <section class="home-area">
            <div class="home_content">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12"><h2 class="sub_title">NOVIDADES</h2></div>
                        <div class="home_list">
                            <ul>
                                <li class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="thumbnail">
                                        <img src="img/h1.jpeg" alt="Post">
                                        <div class="caption">
                                            <h3><a href="#">Post Title</a></h3>
                                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                                            <a href="#" class="btn btn-link" role="button">More</a>
                                        </div>
                                    </div>                                        
                                </li>
                                <li class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="thumbnail">
                                        <img src="img/h2.jpg" class="img-responsive" alt="Post">
                                        <div class="caption">
                                            <h3><a href="#">Post Title</a></h3>
                                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                                            <a href="#" class="btn btn-link" role="button">More</a>
                                        </div>
                                    </div>                                        
                                </li>
                                <li class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="thumbnail">
                                        <img src="img/h3.jpeg" class="img-responsive" alt="Post">
                                        <div class="caption">
                                            <h3><a href="#">Post Title</a></h3>
                                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                                            <a href="#" class="btn btn-link" role="button">More</a>
                                        </div>
                                    </div>                                        
                                </li>
                                <li class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="thumbnail">
                                        <img src="img/h4.jpeg" class="img-responsive" alt="Post">
                                        <div class="caption">
                                            <h3><a href="#">Post Title</a></h3>
                                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                                            <a href="#" class="btn btn-link" role="button">More</a>
                                        </div>
                                    </div>                                        
                                </li>                                    
                            </ul>
                        </div>
                        
                        <div class="col-sm-9 home_bottom">
                            <h2 class="sub_title">REFERÊNCIAS</h2>
                            <div class="clearfix"></div>
                            <div class="row">
                                <div class="carousel slide" data-ride="carousel" data-type="multi" data-interval="6000" id="myCarousel">
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <div class="col-md-2 col-sm-6 col-xs-12 p10">
                                                <a href="#"><img src="img/l1.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12 p10">
                                                <a href="#"><img src="img/l2.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l3.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l4.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l5.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l6.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l7.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l8.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12 p10">
                                                <a href="#"><img src="img/l1.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12 p10">
                                                <a href="#"><img src="img/l2.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l3.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l4.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l5.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l6.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l7.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col-md-2 col-sm-6 col-xs-12">
                                                <a href="#"><img src="img/l8.jpg" class="img-responsive" alt="Reference"></a>
                                            </div>
                                        </div>                                        
                                    </div>
                                    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                                    <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
                                </div>
                            </div>                            
                        </div>
                        <div class="col-sm-3">
                            <h2 class="sub_title w10">CONTATO</h2>
                            <div class="clearfix"></div>
                            <div class="login-form-1">
                                <form id="login-form" class="text-left">
                                    <div class="login-form-main-message"></div>
                                    <div class="main-login-form">
                                        <div class="login-group">
                                            <div class="form-group">
                                                <label for="ad" class="sr-only">Nome</label>
                                                <input type="text" class="form-control" id="ad" name="ad" placeholder="Nome">
                                            </div>
                                            <div class="form-group">
                                                <label for="tel" class="sr-only">Telefone</label>
                                                <input type="text" class="form-control" id="tel" name="tel" placeholder="Telefone">
                                            </div>
                                        </div>
                                        <button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
                                    </div>
                                </form>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12 fbox">
                    <h4>eVolume</h4>
                    <p class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam congue lectus diam, sit amet cursus massa efficitur sed. </p>
                    <ul class="list-inline">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>                        
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 fbox">
                    <h4>SERVIÇOS</h4>
                    <ul class="big">
                        <li><a href="#" title="">Title One</a></li>
                        <li><a href="#" title="">Title Two</a></li>
                        <li><a href="#" title="">Title Three</a></li>
                        <li><a href="#" title="">Title Four</a></li>
                        <li><a href="#" title="">Title Five</a></li>
                        <li><a href="#" title="">Title Six</a></li>
                        <li><a href="#" title="">Title Seven</a></li>
                        <li><a href="#" title="">Title Eight</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 fbox">
                    <h4>CONTENT</h4>
                    <ul class="big">
                        <li><a href="#" title="">Title One</a></li>
                        <li><a href="#" title="">Title Two</a></li>
                        <li><a href="#" title="">Title Three</a></li>
                        <li><a href="#" title="">Title Four</a></li>
                        <li><a href="#" title="">Title Five</a></li>
                        <li><a href="#" title="">Title Six</a></li>
                        <li><a href="#" title="">Title Seven</a></li>
                        <li><a href="#" title="">Title Eight</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 fbox">
                    <h4>CONTATO NOS</h4>
                    <p class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p><a href="tel:+902222222222"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> +90 222 222 22 22</a></p>
                    <p><a href="mailto:iletisim@agrisosgb.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> mail@awebsitename.com</a></p>
                </div>
            </div>
        </div>
        <div id="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <p class="pull-left">&copy; 2017 EVOLUME</p>
                    </div>
                    <div class="col-md-8">
                        <ul class="list-inline navbar-right">
                            <li><a href="#">HOME</a></li>
                            <li><a href="#">MENU ITEM</a></li>
                            <li><a href="#">MENU ITEM</a></li>
                            <li><a href="#">MENU ITEM</a></li>
                            <li><a href="#">MENU ITEM</a></li>
                            <li><a href="#">MENU ITEM</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>        
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $('.carousel[data-type="multi"] .item').each(function(){
          var next = $(this).next();
          if (!next.length) {
            next = $(this).siblings(':first');
          }
          next.children(':first-child').clone().appendTo($(this));

          for (var i=0;i<4;i++) {
            next=next.next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }

            next.children(':first-child').clone().appendTo($(this));
          }
        });        
    </script>
</body>
</html>