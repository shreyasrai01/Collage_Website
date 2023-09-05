<!Doctype html>
    <html>
        <head>
            
            <?php wp_head(); ?>
        </head>
<body>
<header class="site-header">
      <div class="container">
        <h1 class="school-logo-text float-left">
          <a href="<?php echo site_url();?>"><strong>Poornima</strong> Group</a>
        </h1>
        <span class="js-search-trigger site-header__search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
        <i class="site-header__menu-trigger fa fa-bars" aria-hidden="true"></i>
        <div class="site-header__menu group">
          <nav class="main-navigation">


          <? /*php 
           wp_nav_menu(array(
               'theme_location' => 'headerMenuLocation'
           ));
           */
          ?>
            <ul>
              <!-- parent id is highlight and also child(parent id)-->
              <li <?php if (is_page('about-us') or wp_get_post_parent_id(0)==11) {echo 'class="current-menu-item"';} ?> ><a href="<?php echo site_url('/About-us');?>">About Us</a></li>
              
              <li <?php if (get_post_type()=='stream' OR is_page('stream')) {echo 'class="current-menu-item"';}?> ?> <a href="<?php echo site_url('/stream');?>">Stream</a></li>
              
              <li <?php if (get_post_type()=='event' OR is_page('past-events')){echo 'class="current-menu-item"';}?> ?> <a href="<?php echo get_post_type_archive_link('event');?>"> Events</a></li>

              <li <?php if (get_post_type()=='campus' OR is_page('campus')) {echo 'class="current-menu-item"';}?> ?> <a href="<?php echo site_url('/campus');?>">Campuses</a></li>
              
              <li <?php if (get_post_type()=='post'){echo 'class="current-menu-item"';} ?> ? ><a href="<?php echo site_url('/Blog');?>">Blog</a></li>
            </ul>


          </nav>
          <div class="site-header__util">
          <?php
               if(is_user_logged_in()){ ?>
                 <a href="<?php echo wp_logout_url(); ?>" class="btn btn--small btn--dark-orange float-left btn--with-photo">
                 <span class="site-header__avatar"> <?php echo get_avatar(get_current_user_id(),60); ?> </span>
                 <span class="btn_text">Log out</span>
              </a>

          <?php }
               else{?>
                 <a href="<?php wp_login_url(); ?>" class="btn btn--small btn--orange float-left push-right">Login</a>
                 <a href="<?php echo wp_registration_url(); ?>" class="btn btn--small btn--dark-orange float-left">Sign Up</a>
          <?php }
          ?>

            <span class="search-trigger js-search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
          </div>
        </div>
      </div>
    </header>