<?php get_header(); 
while(have_posts()){
    the_post();
    pageBanner();
?>

<div class="container container--narrow page-section">
        
  
<div class="generic-content">
   <div class="metabox metabox--position-up metabox--with-home-link">
        <p>
         
          <a class="metabox_blog-home-link" href="<?php echo site_url('/blog');?>"><i class="fa fa-home" aria-hidden="true"></i>Blog Home </a> <span class="metabox_main">post by <?php the_author_posts_link(); ?> on <?php the_time('M d, Y');?> in <?php echo get_the_category_list(','); ?> 
</span>
        </p>
</div>
      <?php the_content(); ?>
    </div>


<?php
}
?>

<?php get_footer(); ?>