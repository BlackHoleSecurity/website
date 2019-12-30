    <header>
<!--
 _________________________________________ 
/ JFTCAZTJMZ2HSIDNNFWGY2LPNYQHAZLPOBWGKID \
| TMF4SAYJAMZXW63DJONUCA5DINFXGOLBANF2C   |
| O4ZAON2GS3DMEBQSAZTPN5WGS43IEB2GQ2LOM4X |
\ AUCIJFUWSAQTFOJ2HEYLOMQQFE5LTONSWY3AK   /
 ----------------------------------------- 
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

-->

		<div class="bg-191">
			<div class="container">	
				<div class="oflow-hidden color-ash font-9 text-sm-center ptb-sm-5">
				
					<ul class="float-left float-sm-none list-a-plr-10 list-a-plr-sm-5 list-a-ptb-15 list-a-ptb-sm-10">
						<li><a class="pl-0 pl-sm-10" href="<?php echo site_url(); ?>">Home</a></li>
						<?php
      $query = $this->db->get('tbl_tags', 3);
      foreach ($query->result() as $row): ?>
						<li><a href="<?php echo site_url(
          'tag/' . $row->tag_name
      ); ?>"><?php echo $row->tag_name; ?></a></li>
						<?php endforeach;
      ?>
						<li><a href="<?php echo site_url('blog'); ?>">Blog</a></li>
						<li><a href="<?php echo site_url('contact'); ?>">Contact</a></li>
					</ul>
					<?php
     $query = $this->db->get('tbl_site', 1);
     $data = $query->row_array();
     ?>
					<ul class="float-right float-sm-none list-a-plr-10 list-a-plr-sm-5 list-a-ptb-15 list-a-ptb-sm-5">
						<li><a class="pl-0 pl-sm-10" href="<?php echo $data[
          'site_facebook'
      ]; ?>"><i class="ion-social-facebook"></i></a></li>
						<li><a href="<?php echo $data[
          'site_twitter'
      ]; ?>"><i class="ion-social-twitter"></i></a></li>
						<li><a href="<?php echo $data[
          'site_linkedin'
      ]; ?>"><i class="ion-social-linkedin"></i></a></li>
						<li><a href="<?php echo $data[
          'site_instagram'
      ]; ?>"><i class="ion-social-instagram"></i></a></li>
						<li><a href="<?php echo $data[
          'site_pinterest'
      ]; ?>"><i class="ion-social-pinterest"></i></a></li>
					</ul>
					
				</div><!-- top-menu -->
			</div><!-- container -->
		</div><!-- bg-191 -->
		
		<div class="container">
			<a class="logo" href="<?php echo site_url(); ?>"><img src="<?php echo base_url() .
    'theme/images/' .
    $data['site_logo_header']; ?>" alt="<?php echo $data['site_name']; ?>"></a>
			
			<a class="right-area src-btn" href="#" >
				<i class="active src-icn ion-search"></i>
				<i class="close-icn ion-close"></i>
			</a>
			<div class="src-form">
				<form method="get" action="<?php echo site_url('search'); ?>">
					<input type="text" name="search_query" placeholder="Search here" required>
					<button type="submit"><i class="ion-search"></i></a></button>
				</form>
			</div><!-- src-form -->
			
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			
			<ul class="main-menu" id="main-menu">
				<li><a href="<?php echo site_url(); ?>">HOME</a></li>
				<?php
    $query = $this->db->get('tbl_category', 3);
    foreach ($query->result() as $row): ?>
				<li><a href="<?php echo site_url(
        'category/' . $row->category_slug
    ); ?>"><?php echo strtoupper($row->category_name); ?></a></li>
				<?php endforeach;
    ?>
				<li><a href="<?php echo site_url('contact'); ?>">CONTACT</a></li>
			</ul>
			<div class="clearfix"></div>
		</div><!-- container -->
	</header>
