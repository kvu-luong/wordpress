<!-- body -->
		<!-- upper content of body -->
		<div class="upper_content">
			<div class="container">
				<div class="row">
					<div class="col-xs-6 left-part">
						<div id="carousel-id" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-id" data-slide-to="0" class=""></li>
								<li data-target="#carousel-id" data-slide-to="1" class=""></li>
								<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item">
									<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/slide2.jpg" alt="First slide" >
									<div class="container">
										<div class="carousel-caption">
											<h1>Example headline.</h1>
											<p>Note: If you're viewing this page via a </p>
											<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
										</div>
									</div>
								</div>
								<div class="item">
									<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/slide2.jpg" alt="Second slide" >
									<div class="container">
										<div class="carousel-caption">
											<h1>Another example headline.</h1>
											<p>Cras justo odio, dapibus ac facilisis in,</p>
											<p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
										</div>
									</div>
								</div>
								<div class="item active">
									<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/slide2.jpg" alt="Third slide" >
									<div class="container">
										<div class="carousel-caption">
											<h1>One more for good measure.</h1>
											<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
											<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
										</div>
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
							<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
						</div>	
					</div>
					<div class="col-xs-6 right part">
						<div class="row">
							<div class="info_content">
								<div class="row">
										<div class="col-xs-12 col-sm-2 col-md-3 col-lg-4 text-center">
												<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/icon1.png" atl="icon1" width="50px" height="50px">
										</div>
										<div class="col-xs-12 col-sm-10 col-md-9 col-lg-8">
												<h4>Brand Identity</h4>
											<p>fusce rutrum retrum posuere.
													Ut auctor, nisis sit amet volutpat aliquam.
												maeceanas Ioboris dolar at mauris rhancus feugiat. </p>
										</div>
								</div>
							</div>
						</div>
						<div class="row">
								<div class="info_content">
										<div class="row">
												<div class="col-xs-12 col-sm-2 col-md-3 col-lg-4 text-center">
														<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/icon2.jpg" alt="icon2"  width="50px" height="50px">
												</div>
												<div class="col-xs-12 col-sm-10 col-md-9 col-lg-8">
														<h4>Visaul Design</h4>
														<p>maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere.
															Ut auctor, nisis sit amet volutpat aliquam.
														</p>
												</div>
										</div>
									</div>
						</div>
						<div class="row">
								<div class="info_content">
										<div class="row">
												<div class="col-xs-12 col-sm-2 col-md-3 col-lg-4 text-center">
														<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/icon3.png" alt="icon3"  width="50px" height="50px">
												</div>
												<div class="col-xs-12 col-sm-10 col-md-9 col-lg-8">
														<h4>Digital UX</h4>
														<p>maeceanas Ioboris dolar at mauris rhancus feugiat. fusce rutrum retrum posuere.
															Ut auctor, nisis sit amet volutpat aliquam.
														</p>
												</div>
										</div>
									</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end upper content of body -->
		<!-- start the team part -->
		<div class="the_team">
				<div class="container">
					<div class="row text-center">
						<h4>The Team</h4>
					</div>
					<div class="row text-center">
						<div class="member">
							<?php 
							$memberOfOurTeam = new WP_Query(array('post_type'=>'member'));
							while($memberOfOurTeam -> have_posts()){
								$memberOfOurTeam -> the_post();
								$nameOfMember = get_field("member1_post");
								$positionOfMember = get_field("member_position");
								$memberImage = get_field("member_image");
								$groupOfMember = get_the_terms($post->ID,"member_taxonomy");
								

							?>
							<div class="col-xs-12 col-sm-6 col-md-3">
								<img src="<?php echo $memberImage['url'];?>" alt="member1" width="200px" height="200px">
								<div class="member-infor">
									<h4><?php echo $nameOfMember;?></h4>
									<h5><?php echo $positionOfMember;?></h5>
									<?php
									foreach($groupOfMember as $mygroup){ ?>
									<h6><?php echo $mygroup->name; ?> from taxonomy</h6>
								    <?php } ?>									
								</div>
							</div>

						<?php } wp_reset_query(); ?>
						</div>
					</div>
				</div>
		</div>
		<!-- end the team part -->
    <!-- end body -->