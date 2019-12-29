<!DOCTYPE HTML>
<html lang="en">
<head>
	<title><?php echo $title; ?></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link rel="shorcut icon" href="<?php echo base_url() .
     'theme/images/favicon.png'; ?>">
	<!-- SEO Tags -->
    <meta name="description" content="<?php echo $description; ?>"/>
    <link rel="canonical" href="<?php echo site_url('blog/' . $slug); ?>" />
    <meta property="og:locale" content="id_ID" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="<?php echo $title; ?>" />
    <meta property="og:description" content="<?php echo $description; ?>" />
    <meta property="og:url" content="<?php echo site_url(
        'blog/' . $slug
    ); ?>" />
    <meta property="og:site_name" content="<?php echo $site_name; ?>" />
    <meta property="article:publisher" content="<?php echo $site_facebook; ?>" />
    <meta property="article:section" content="<?php echo $category; ?>" />
    <meta property="og:image" content="<?php echo base_url() .
        'assets/images/' .
        $image; ?>" />
    <meta property="og:image:secure_url" content="<?php echo base_url() .
        'assets/images/' .
        $image; ?>" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:description" content="<?php echo $description; ?>" />
    <meta name="twitter:title" content="<?php echo $title; ?>" />
    <meta name="twitter:site" content="<?php echo $site_twitter; ?>" />
    <meta name="twitter:image" content="<?php echo base_url() .
        'assets/images/' .
        $image; ?>" />
    <!-- / End SEO Tags. -->
	
	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<!-- Stylesheets -->
	<link href="<?php echo base_url() .
     'theme/plugins/bootstrap.css'; ?>" rel="stylesheet">
	<link href="<?php echo base_url() .
     'theme/fonts/ionicons.css'; ?>" rel="stylesheet">
	<link href="<?php echo base_url() .
     'theme/common/styles.css'; ?>" rel="stylesheet">
	<link href="<?php echo base_url() .
     'theme/common/jssocials.css'; ?>" rel="stylesheet">
	<link href="<?php echo base_url() .
     'theme/common/jssocials-theme-flat.css'; ?>" rel="stylesheet">
	<style type="text/css">
		.blog-post p{
			line-height: 1.7em;
			margin-bottom: 10px;
		}
	</style>
	
</head>
<body>
	
	<?php echo $header; ?>
	
	<section class="ptb-0">
		<div class="brdr-ash-1 opacty-5"></div>
	</section>

	<section>
		<div class="container">
			<div class="row justify-content-md-center">
			
				<div class="col-md-12 col-lg-8">
					<img src="<?php echo base_url() . 'assets/images/' . $image; ?>" alt="">
					<h3 class="mt-30"><b><?php echo $title; ?></b></h3>
					<ul class="list-li-mr-20 mtb-15">
						<li>by <a href="#"><b><?php echo $author; ?> </b></a>, <?php echo date(
     'd M Y',
     strtotime($date)
 ); ?></li>
						<li><i class="color-primary mr-5 font-12 ion-folder"></i><a href="<?php echo site_url(
          'category/' . $category_slug
      ); ?>"><?php echo $category; ?></a></li>
						<li><i class="color-primary mr-5 font-12 ion-eye"></i><?php echo number_format(
          $views
      ); ?></li>
						<li><i class="color-primary mr-5 font-12 ion-chatbubbles"></i><?php echo number_format(
          $comment
      ); ?></li>
					</ul>
					<div class="blog-post">
						<?php echo $content; ?>
					</div>
					<div class="float-left-right text-center mt-40 mt-sm-20">
				
						<ul class="mb-30 list-li-mt-10 list-li-mr-5 list-a-plr-15 list-a-ptb-7 list-a-bg-grey list-a-br-2 list-a-hvr-primary ">
							<?php
       $split_tag = explode(",", $tags);
       foreach ($split_tag as $tag): ?>
							<li><a href="<?php echo site_url(
           'tag/' . $tag
       ); ?>">#<?php echo $tag; ?></a></li>
							<?php endforeach;
       ?>
						</ul>
						<ul class="mb-30 list-a-bg-grey list-a-hw-radial-35 list-a-hvr-primary list-li-ml-5">
							<li class="mr-10 ml-0">Share:</li>
							<li><div class="SocialShare" style="color: #fff;"></div></li>
						</ul>
						
					</div><!-- float-left-right -->
				
					<div class="brdr-ash-1 opacty-5"></div>
					
					<h4 class="p-title mt-50"><b>ARTIKEL TERKAIT</b></h4>
					<div class="row">
						<?php foreach ($related_post->result() as $row): ?>
						<div class="col-sm-6">
							<a href="<?php echo site_url('blog/' . $row->post_slug); ?>">
								<img src="<?php echo base_url() .
            'assets/images/thumb/' .
            $row->post_image; ?>" alt="">
							</a>
							<h4 class="pt-20"><a href="<?php echo site_url(
           'blog/' . $row->post_slug
       ); ?>"><b><?php echo $row->post_title; ?></b></a></h4>
							<ul class="list-li-mr-20 pt-10 mb-30">
								<li class="color-lite-black">by <a href="#" class="color-black"><b><?php echo $row->user_name; ?>,</b></a>
								<?php echo date('d M Y', strtotime($row->post_date)); ?></li>
								<li><i class="color-primary mr-5 font-12 ion-eye"></i><?php echo $row->post_views; ?></li>
							</ul>
						</div><!-- col-sm-6 -->
						<?php endforeach; ?>
						
					</div><!-- row -->
					
					<h4 class="p-title mt-20"><b><?php echo $comment; ?> COMMENTS</b></h4>
					<?php foreach ($show_comments->result() as $row): ?>
					<div class="sided-70 mb-40">
					
						<div class="s-left rounded">
							<img src="<?php echo base_url() .
           'assets/images/' .
           $row->comment_image; ?>" alt="">
						</div><!-- s-left -->
						
						<div class="s-right ml-100 ml-xs-85">
							<h5><b><?php echo $row->comment_name; ?>, </b> <span class="font-8 color-ash"><?php echo date(
    'd M Y H:i:s',
    strtotime($row->comment_date)
); ?></span></h5>
							<p class="mtb-15"><?php echo $row->comment_message; ?></p>
						</div><!-- s-right -->
						
					</div><!-- sided-70 -->
					
						<?php
      $comment_id = $row->comment_id;
      $query = $this->db->query(
          "SELECT * FROM tbl_comment WHERE comment_status='1' AND comment_parent='$comment_id'"
      );
      foreach ($query->result() as $i): ?>
						<div class="sided-70 ml-100 ml-xs-20 mb-40">
						
							<div class="s-left rounded">
								<img src="<?php echo base_url() .
            'assets/images/' .
            $i->comment_image; ?>" alt="">
							</div><!-- s-left -->
							
							<div class="s-right ml-100 ml-xs-85">
								<h5><b><?php echo $i->comment_name; ?>, </b> <span class="font-8 color-ash"><?php echo date(
    'd M Y H:i:s',
    strtotime($i->comment_date)
); ?></span></h5>
								<p class="mtb-10"><?php echo $i->comment_message; ?></p>
							</div><!-- s-right -->
							
						</div><!-- sided-70 -->
						<?php endforeach;
      ?>

					<?php endforeach; ?>
					
					<h4 class="p-title mt-20"><b>LEAVE A COMMENT</b></h4>
					<?php echo $this->session->flashdata('msg'); ?>
					<form class="form-block form-plr-15 form-h-45 form-mb-20 form-brdr-lite-white mb-md-50" method="post" action="<?php echo site_url(
         'send_comment'
     ); ?>">
						<input type="hidden" name="post_id" value="<?php echo $post_id; ?>" required>
                        <input type="hidden" name="slug" value="<?php echo $slug; ?>" required>
						<input type="text" name="name" placeholder="Name*:" required>
						<input type="text" name="email" placeholder="Email*:" required>
						<textarea class="ptb-10" name="comment" placeholder="Comment*" required></textarea>
						<button class="btn-fill-primary plr-30" rows="4" cols="50" type="submit"><b>SEND COMMENT</b></button>
					</form>
				</div><!-- col-md-9 -->
				
				<div class="d-none d-md-block d-lg-none col-md-3"></div>
				
			</div><!-- row -->
			
		</div><!-- container -->
	</section>
	
	
	<?php echo $footer; ?>
	
	<!-- SCIPTS -->
	
	<script src="<?php echo base_url() .
     'theme/plugins/jquery-3.2.1.min.js'; ?>"></script>
	<script src="<?php echo base_url() .
     'theme/plugins/tether.min.js'; ?>"></script>
	<script src="<?php echo base_url() . 'theme/plugins/bootstrap.js'; ?>"></script>
	<script src="<?php echo base_url() . 'theme/common/scripts.js'; ?>"></script>
	<script src="<?php echo base_url() .
     'theme/plugins/jssocials.min.js'; ?>"></script>
	<script>
		$(document).ready(function(){
			$(".SocialShare").jsSocials({
                    showCount: true,
                    showLabel: true,
                    shareIn: "popup",
                    shares: [
                    { share: "twitter", label: "Twitter" },
                    { share: "facebook", label: "Facebook" },
                    { share: "googleplus", label: "Google+" },
                    { share: "linkedin", label: "Linked In" }
                    ]
            });
		});
	</script>
	
</body>
</html>