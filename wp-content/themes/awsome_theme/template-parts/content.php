	<h2><a href='<?php the_permalink() ?>'><?php the_title() ?></a></h2>
		<div class="container">
			<?php if( is_singular() ) : ?>
				<?php the_excerpt(); ?>
				<blockquote>hello excerpt</blockquote>
			<?php else : ?>
				<?php the_content(); ?>
				<blockquote>hello content</blockquote>
				
			<?php endif ?>
		</div>