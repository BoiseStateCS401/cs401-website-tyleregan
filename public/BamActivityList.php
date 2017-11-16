<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['Category'] = "Activity";
	$_SESSION['Level'] = 2;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
		<section class="Topics">
			<ul>
				<li><a href="BamActivity.php?Activity=Archery`">Archery</a></li>
				<li><a href="BamActivity.php?Activity=Badminton">Badminton</a></li>
				<li><a href="BamActivity.php?Activity=Ballet">Ballet</a></li>
				<li><a href="BamActivity.php?Activity=Baseball">Baseball</a></li>
				<li><a href="BamActivity.php?Activity=Basketball">Basketball</a></li>
				<li><a href="BamActivity.php?Activity=Bicycling">Bicycling</a></li>
				<li><a href="BamActivity.php?Activity=Billiards">Billiards</a></li>
				<li><a href="BamActivity.php?Activity=Bowling">Bowling</a></li>
				<li><a href="BamActivity.php?Activity=Boxing">Boxing</a></li>
				<li><a href="BamActivity.php?Activity=Calisthenics">Calisthenics</a></li>
				<li><a href="BamActivity.php?Activity=Capture the Flag">Capture the Flag</a></li>
				<li><a href="BamActivity.php?Activity=Canoeing">Canoeing</a></li>
				<li><a href="BamActivity.php?Activity=Cheerleading">Cheerleading</a></li>
				<li><a href="BamActivity.php?Activity=Cricket">Cricket</a></li>
				<li><a href="BamActivity.php?Activity=Cross Training">Cross Training</a></li>
				<li><a href="BamActivity.php?Activity=Dance">Dance</a></li>
				<li><a href="BamActivity.php?Activity=Disk Golf">Disk Golf</a></li>
				<li><a href="BamActivity.php?Activity=Diving">Diving</a></li>
				<li><a href="BamActivity.php?Activity=Fishing">Fishing</a></li>
				<li><a href="BamActivity.php?Activity=Football">Football</a></li>
				<li><a href="BamActivity.php?Activity=Golf">Golf</a></li>
				<li><a href="BamActivity.php?Activity=Gymnastics">Gymnastics</a></li>
				<li><a href="BamActivity.php?Activity=Hacky Sack">Hacky Sack</a></li>
				<li><a href="BamActivity.php?Activity=Hang Gliding">Hang Gliding</a></li>
				<li><a href="BamActivity.php?Activity=Hiking">Hiking</a></li>
				<li><a href="BamActivity.php?Activity=Hockey">Hockey</a></li>
				<li><a href="BamActivity.php?Activity=Hunting">Hunting</a></li>
				<li><a href="BamActivity.php?Activity=Ice Skating">Ice Skating</a></li>
				<li><a href="BamActivity.php?Activity=Jump Rope">Jump Rope</a></li>
				<li><a href="BamActivity.php?Activity=Kayaking">Kayaking</a></li>
				<li><a href="BamActivity.php?Activity=Kickball">Kickball</a></li>
				<li><a href="BamActivity.php?Activity=Lacrosse">Lacrosse</a></li>
				<li><a href="BamActivity.php?Activity=Martial Arts">Martial Arts</a></li>
				<li><a href="BamActivity.php?Activity=Paddelboarding">Paddelboarding</a></li>
				<li><a href="BamActivity.php?Activity=Paintball">Paintball</a></li>
				<li><a href="BamActivity.php?Activity=Parkour">Parkour</a></li>
				<li><a href="BamActivity.php?Activity=Pickleball">Pickleball</a></li>
				<li><a href="BamActivity.php?Activity=Pilates">Pilates</a></li>
				<li><a href="BamActivity.php?Activity=Ping Ping (Table Tennis)">Ping Pong (Table Tennis)</a></li>
				<li><a href="BamActivity.php?Activity=Quidditch">Quidditch</a></li>
				<li><a href="BamActivity.php?Activity=Racquetball">Racquetball</a></li>
				<li><a href="BamActivity.php?Activity=Rafting">Rafting</a></li>
				<li><a href="BamActivity.php?Activity=Rock Climbing">Rock Climbing</a></li>
				<li><a href="BamActivity.php?Activity=Roller Skating">Roller Skating</a></li>
				<li><a href="BamActivity.php?Activity=Rugby">Rugby</a></li>
				<li><a href="BamActivity.php?Activity=Running">Runnning</a></li>
				<li><a href="BamActivity.php?Activity=Skateboarding">Skateboarding</a></li>
				<li><a href="BamActivity.php?Activity=Skiing">Skiing</a></li>
				<li><a href="BamActivity.php?Activity=Slacklining">Slacklining (Slacking)</a></li>
				<li><a href="BamActivity.php?Activity=Sledding">Sledding</a></li>
				<li><a href="BamActivity.php?Activity=Snorkeling">Snorkeling</a></li>
				<li><a href="BamActivity.php?Activity=Snowboarding">Snowboarding</a></li>
				<li><a href="BamActivity.php?Activity=Soccer">Soccer</a></li>
				<li><a href="BamActivity.php?Activity=Softball">Softball</a></li>
				<li><a href="BamActivity.php?Activity=Squash">Squash</a></li>
				<li><a href="BamActivity.php?Activity=Swimming">Swimming</a></li>
				<li><a href="BamActivity.php?Activity=Tennis">Tennis</a></li>
				<li><a href="BamActivity.php?Activity=Track and Field">Track and Field</a></li>
				<li><a href="BamActivity.php?Activity=Ultimate Frisbee">Ultimate Frisbee</a></li>
				<li><a href="BamActivity.php?Activity=Volleyball">Volleyball</a></li>
				<li><a href="BamActivity.php?Activity=Walking">Walking</a></li>
				<li><a href="BamActivity.php?Activity=Watervolleyball">Watervolleyball</a></li>
				<li><a href="BamActivity.php?Activity=Weight Lifting">Weight Lifting</a></li>
				<li><a href="BamActivity.php?Activity=Whiffle Ball">Whiffle Ball</a></li>
				<li><a href="BamActivity.php?Activity=Wrestling">Wrestling</a></li>
				<li><a href="BamActivity.php?Activity=Yoga">Yoga</a></li>
			</ul>
		</section>

<?php
    require_once('BamFooter.php');
?>