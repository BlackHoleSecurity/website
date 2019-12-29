<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $site_title; ?></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link rel="shorcut icon" href="<?php echo base_url() .
     'theme/images/favicon.png'; ?>">
	<!-- SEO Tag -->
    <meta name="description" content="<?php echo $site_desc; ?>"/>
    <link rel="canonical" href="<?php echo site_url(); ?>" />
    <meta property="og:locale" content="id_ID" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="<?php echo $site_title; ?>" />
    <meta property="og:description" content="<?php echo $site_desc; ?>" />
    <meta property="og:url" content="<?php echo site_url(); ?>" />
    <meta property="og:site_name" content="<?php echo $site_name; ?>" />
    <meta property="og:image" content="<?php echo base_url() .
        'theme/images/logo.png'; ?>" />
    <meta property="og:image:secure_url" content="<?php echo base_url() .
        'theme/images/logo.png'; ?>" />
    <meta property="og:image:width" content="560" />
    <meta property="og:image:height" content="315" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:description" content="<?php echo $site_desc; ?>" />
    <meta name="twitter:title" content="<?php echo $site_title; ?>" />
    <meta name="twitter:site" content="<?php echo $site_twitter; ?>" />
    <meta name="twitter:image" content="<?php echo base_url() .
        'theme/images/logo.png'; ?>" />
    <!-- End SEO Tag. -->
	
	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	
	<!-- Stylesheets -->
	<link href="<?php echo base_url() .
     'theme/plugins/bootstrap.css'; ?>" rel="stylesheet">
	<link href="<?php echo base_url() .
     'theme/fonts/ionicons.css'; ?>" rel="stylesheet">
	<link href="<?php echo base_url() .
     'theme/common/styles.css'; ?>" rel="stylesheet">
	
</head>
<body>
	
	<?php echo $header; ?>
	
	<section class="ptb-0">
		<div class="mb-30 brdr-ash-1 opacty-5"></div>
	</section>

	<div class="container">
		<div class="h-600x h-sm-auto">
			<div class="h-2-3 h-sm-auto oflow-hidden">
		
				<?php foreach ($post_header->result() as $row): ?>
				<div class="pb-5 pr-5 pr-sm-0 float-left float-sm-none w-2-3 w-sm-100 h-100 h-sm-300x">
					<a class="pos-relative h-100 dplay-block" href="<?php echo site_url(
         'blog/' . $row->post_slug
     ); ?>">
					
						<div class="img-bg bg-grad-layer-6" style="background: url(<?php echo base_url(
          'assets/images/' . $row->post_image
      ); ?>) no-repeat center; background-size: cover;"></div>
						
						<div class="abs-blr color-white p-20 bg-sm-color-7">
							<h3 class="mb-15 mb-sm-5 font-sm-13"><b><?php echo $row->post_title; ?></b></h3>
							<ul class="list-li-mr-20">
								<li>by <span class="color-primary"><b><?php echo $row->user_name; ?></b></span> <?php echo date(
    'd M Y',
    strtotime($row->post_date)
); ?></li>
								<li><i class="color-primary mr-5 font-12 ion-eye"></i><?php echo number_format(
            $row->post_views
        ); ?></li>
							</ul>
						</div><!--abs-blr -->
					</a><!-- pos-relative -->
				</div><!-- w-1-3 -->
				<?php endforeach; ?>
				<div class="float-left float-sm-none w-1-3 w-sm-100 h-100 h-sm-600x">
					<?php foreach ($post_header_2->result() as $row): ?>
					<div class="pl-0 pb-5 pl-sm-0 ptb-sm-5 pos-relative h-50">
						<a class="pos-relative h-100 dplay-block" href="<?php echo site_url(
          'blog/' . $row->post_slug
      ); ?>">
						
							<div class="img-bg bg-grad-layer-6" style="background: url(<?php echo base_url(
           'assets/images/thumb/' . $row->post_image
       ); ?>) no-repeat center; background-size: cover;"></div>
							
							<div class="abs-blr color-white p-20 bg-sm-color-7">
								<h4 class="mb-10 mb-sm-5"><b><?php echo $row->post_title; ?></b></h4>
								<ul class="list-li-mr-20">
									<li><?php echo date('d M Y', strtotime($row->post_date)); ?></li>
									<li><i class="color-primary mr-5 font-12 ion-eye"></i><?php echo number_format(
             $row->post_views
         ); ?></li>
								</ul>
							</div><!--abs-blr -->
						</a><!-- pos-relative -->
					</div><!-- w-1-3 -->
					<?php endforeach; ?>
					
				</div><!-- float-left -->

			</div><!-- h-2-3 -->
			
			<div class="h-1-3 oflow-hidden">
			<?php foreach ($post_header_3->result() as $row): ?>
				<div class="pr-0 pr-sm-0 pt-8 float-left float-sm-none w-1-3 w-sm-100 h-100 h-sm-600x">
					<a class="pos-relative h-100 dplay-block" href="<?php echo site_url(
         'blog/' . $row->post_slug
     ); ?>">
					
						<div class="img-bg bg-grad-layer-6" style="background: url(<?php echo base_url(
          'assets/images/thumb/' . $row->post_image
      ); ?>) no-repeat center; background-size: cover;"></div>
							
						<div class="abs-blr color-white p-20 bg-sm-color-7">
							<h4 class="mb-10 mb-sm-5"><b><?php echo $row->post_title; ?></b></h4>
							<ul class="list-li-mr-20">
								<li><?php echo date('d M Y', strtotime($row->post_date)); ?></li>
								<li><i class="color-primary mr-5 font-12 ion-eye"></i><?php echo number_format(
            $row->post_views
        ); ?></li>
							</ul>
						</div><!--abs-blr -->
					</a><!-- pos-relative -->
				</div><!-- w-1-3 -->
			<?php endforeach; ?>
				
			</div><!-- h-2-3 -->
		</div><!-- h-100vh -->
	</div><!-- container -->
	
	
	<section>
		<div class="container">
			<div class="row">
			
				<div class="col-md-12 col-lg-8">
					
					<h4 class="p-title mt-0"><b>LATEST POSTS</b></h4>
					<div class="row">
						<?php foreach ($latest_post->result() as $row): ?>
						<div class="col-sm-6">
							<a href="<?php echo site_url(
           'blog/' . $row->post_slug
       ); ?>"><img src="<?php echo base_url() .
    'assets/images/thumb/' .
    $row->post_image; ?>" alt=""></a>
							<h4 class="pt-20"><a href="<?php echo site_url(
           'blog/' . $row->post_slug
       ); ?>"><b><?php echo $row->post_title; ?></b></a></h4>
							<ul class="list-li-mr-20 pt-10 mb-30">
								<li class="color-lite-black">by <a href="#" class="color-black"><b><?php echo $row->user_name; ?>,</b></a>
								<?php echo date('d M Y', strtotime($row->post_date)); ?></li>
							</ul>
						</div><!-- col-sm-6 -->
						<?php endforeach; ?>
						
					</div><!-- row -->
					
					<a class="dplay-block btn-brdr-primary mt-20 mb-md-50" href="<?php echo site_url(
         'blog'
     ); ?>"><b>VIEW MORE</b></a>
				</div><!-- col-md-9 -->
				
				<div class="d-none d-md-block d-lg-none col-md-3"></div>
				<div class="col-md-6 col-lg-4">
					<div class="pl-20 pl-md-0">
						
						<div>
							<h4 class="p-title"><b>POPULAR POSTS</b></h4>
							<?php foreach ($popular_post->result() as $row): ?>
							<a class="oflow-hidden pos-relative mb-20 dplay-block" href="<?php echo site_url(
           'blog/' . $row->post_slug
       ); ?>">
								<div class="wh-100x abs-tlr"><img src="<?php echo base_url() .
            'assets/images/thumb/' .
            $row->post_image; ?>" alt=""></div>
								<div class="ml-120 min-h-100x">
									<h5><b><?php echo $row->post_title; ?></b></h5>
									<h6 class="color-lite-black pt-10">by <span class="color-black"><b><?php echo $row->user_name; ?>,</b></span> <?php echo date(
    'd M Y',
    strtotime($row->post_date)
); ?></h6>
								</div>
							</a><!-- oflow-hidden -->
							<?php endforeach; ?>
							
						</div><!-- mtb-50 -->
						
						<div class="mtb-50 mb-md-0">
							<h4 class="p-title"><b>NEWSLETTER</b></h4>
							<p class="mb-20">Anda dapat berlangganan untuk mendapatkan notifikasi artikel terbaru.</p>
							<?php echo $this->session->flashdata('msg'); ?>
							<form class="nwsltr-primary-1" action="<?php echo base_url(
           'home/subscribe'
       ); ?>" method="post">
								<input type="email" name="email" placeholder="Your email" required/>
								<button type="submit"><i class="ion-ios-paperplane"></i></button>
							</form>
						</div><!-- mtb-50 -->
						
					</div><!--  pl-20 -->
				</div><!-- col-md-3 -->
				
			</div><!-- row -->
		</div><!-- container -->
	</section>

	<?php echo $footer; ?>

<!-- SCIPTS -->
	<script type="text/javascript" src="<?php echo base_url() .
     'theme/plugins/jquery-3.2.1.min.js'; ?>"></script>
	<script type="text/javascript" src="<?php echo base_url() .
     'theme/plugins/tether.min.js'; ?>"></script>
	<script type="text/javascript" src="<?php echo base_url() .
     'theme/plugins/bootstrap.js'; ?>"></script>
	<script type="text/javascript" src="<?php echo base_url() .
     'theme/common/scripts.js'; ?>"></script>
	
</body>
</html>
	