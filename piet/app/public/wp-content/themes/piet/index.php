<?php
get_header();  
?>


<div class="page-banner">
      <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/college.jpg')?>)"></div>
      <div class="page-banner__content container container--narrow">
        <h1 class="page-banner__title"><?php the_title();?></h1>
        <div class="page-banner__intro">
          <p>This is a Blog Page.</p>
        </div>
      </div>
    </div>
</div>

<div class="container container--narrow page-section">
  
<?php
while(have_posts()){
    the_post();

?>
 <div class="post-item">
   <h2 class="headline headline--medium headline-post-title"> <a href=" <?php the_permalink(); ?>"><?php the_title(); ?> </a> </h2>
  
  <div class="metabox">
         post by <?php the_author_posts_link(); ?> on <?php the_time('M d, Y');?> in <?php echo get_the_category_list(','); ?> 

  </div>
  
  
  
  
   <div class="generic-content">  <?php the_excerpt(); ?> </div>
 <p ><a class="btn btn--blue" href="<?php the_permalink();  ?>"> Continue Reading </a></p>


</div>


<?php 

} 
echo paginate_links();
?>
</div>



<?php
get_footer();
?>