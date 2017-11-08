<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisPage = "BamRules";
	require_once('BamHeader.php');
?>
  
    <section class="NavBar">
      <ul>
        <li class="history">
          <a href="BamHome.php">Home</a>
          <strong>&lsaquo;<strong>
          <a href="BamMajors.php">Majors</a>
          <strong>&lsaquo;<strong>
          <a href="BamComputerScience.php">Computer Science</a>
          <strong>&lsaquo;<strong>
          <a href="BamCS400s.php">CS400s</a>
		  <strong>&lsaquo;<strong>
		  <a href="BamRules.php">Rules for Posts</a>
        </li>
      </ul>
    </section>
	
    <section class = "Title">
	  <p id = "MiniTitle">
        Rules for Posts
      </p>
    </section>
	
	<section class = "Posts collapsible">
	  <section class = "PostHeader">
	    <article class = "PosterInfo"> <!--Left side-->
	      <p>
		    Tyler Egan
		  </p>
            <img src="images/BamMajors.jpg" alt="UserIcon" width="80%" height="80%">
		  <p id = "SubPosterInfo">
			Title: Admin <br>
			Major: Computer Science <br>
			Posts: 1 
		  </p>
	    </article>
	  
	    <article class = "PostInfo"> <!--Right side-->
		  <p>
		    by Tyler Egan on October 6, 2017 at 2:04 P.M.
		  </p>
	    </article>
	  </section>
	  
	  <section class = "PostContent">
        <p>
	      First the obvious stuff:<br>
		  <br>
	      Some cussing is allowed, but excessive cussing isn't. I.E. "This is fucking hard"
		  and "This is a DAMN nice spot" is fine, but anything similar to "Holy Fuck this damn
		  thing is FUCKING IMPOSSIBLE" will not be tolerated.<br>
		  <br>
		  Pictures are meant to show off a location for an activity. Any picture showing off a person
		  or that is even remotely related to porn is not allowed. Anything obviously designed for
		  sexual arousal will not be tolerated.<br>
		  <br>
		  Profile pictures related to sexual arrousal will also not be tolerated. <br>
		    <br>
	      </p>
	    </article>
	  </section>
	</section>

    <section class="NewPost">
      <form> <!--action="/action_page.php"-->
        Post: <input type="text" name="Post">
        <br>
        TL;DR: <input type="text" name="TLDR">
        <br><br>
        <input type="submit" value="Submit">
      </form>
    </section>
	
<?php
    require_once('BamFooter.php');
?>







