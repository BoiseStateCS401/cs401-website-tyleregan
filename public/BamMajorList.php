<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisTopic = "Major";
	$thisPage = "BamMajorList";
	$thisLevel = 2;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
		<section class="Topics">
			<ul>
				<li><a href="BamMajor.php?Major=?Accountancy">Accountancy</a></li>
				<li><a href="BamMajor.php?Major=Anthropology">Anthropology</a></li>
				<li><a href="BamMajor.php?Major=Art">Art</a></li>
				<li><a href="BamMajor.php?Major=Biological Sciences">Biological Sciences</a></li>
				<li><a href="BamMajor.php?Major=Chemistry/Biochemistry">Chemistry/Biochemistry</a></li>
				<li><a href="BamMajor.php?Major=Civil Engineering">Civil Engineering</a></li>
				<li><a href="BamMajor.php?Major=Communication">Communication</a></li>
				<li><a href="BamMajor.php?Major=Community and Environmental Health">Community and Environmental Health</a></li>
				<li><a href="BamMajor.php?Major=Computer Science">Computer Science</a></li>
				<li><a href="BamMajor.php?Major=Construction Management">Construction Management</a></li>
				<li><a href="BamMajor.php?Major=Criminal Justice">Criminal Justice</a></li>
				<li><a href="BamMajor.php?Major=Curruculum, Instruction, and Foundational Studies">Curruculum, Instruction, and Foundational Studies</a></li>
				<li><a href="BamMajor.php?Major=Early and Special Education">Early and Special Education</a></li>
				<li><a href="BamMajor.php?Major=Economics">Economics</a></li>
				<li><a href="BamMajor.php?Major=Electrical Engineering">Electrical Engineering</a></li>
				<li><a href="BamMajor.php?Major=Engineering Science">Engineering Science</a></li>
				<li><a href="BamMajor.php?Major=English">English</a></li>
				<li><a href="BamMajor.php?Major=Environmental Studies">Environmental Studies</a></li>
				<li><a href="BamMajor.php?Major=Finance">Finance</a></li>
				<li><a href="BamMajor.php?Major=Games, Interactive Media, and Mobile">Games, Interactive Media, and Mobile</a></li>
				<li><a href="BamMajor.php?Major=Gender Studies">Gender Studies</a></li>
				<li><a href="BamMajor.php?Major=Geosciences">Geosciences</a></li>
				<li><a href="BamMajor.php?Major=Global Studies">Global Studies</a></li>
				<li><a href="BamMajor.php?Major=History">History</a></li>
				<li><a href="BamMajor.php?Major=Industrial Engineering">Industrial Engineering</a></li>
				<li><a href="BamMajor.php?Major=Information Technology and Supply Chain Management">Information Technology and Supply Chain Management</a></li>
				<li><a href="BamMajor.php?Major=Kinesiology">Kinesiology</a></li>
				<li><a href="BamMajor.php?Major=Literacy, Language, and Culture">Literacy, Language, and Culture</a></li>
				<li><a href="BamMajor.php?Major=Management">Management</a></li>
				<li><a href="BamMajor.php?Major=Marketing">Marketing</a></li>
				<li><a href="BamMajor.php?Major=Mathematics">Mathematics</a></li>
				<li><a href="BamMajor.php?Major=Mechanical Engineering">Mechanical Engineering</a></li>
				<li><a href="BamMajor.php?Major=Materials Science and Engineering">Materials Science and Engineering</a></li>
				<li><a href="BamMajor.php?Major=Multidisciplinary Studies">Multidisciplinary Studies</a></li>
				<li><a href="BamMajor.php?Major=Music">Music</a></li>
				<li><a href="BamMajor.php?Major=Nursing">Nursing</a></li>
				<li><a href="BamMajor.php?Major=Philosophy">Philosophy</a></li>
				<li><a href="BamMajor.php?Major=Physics">Physics</a></li>
				<li><a href="BamMajor.php?Major=Political Science">Political Science</a></li>
				<li><a href="BamMajor.php?Major=Psychological Science">Psychological Science</a></li>
				<li><a href="BamMajor.php?Major=Radiologic Sciences">Radiologic Sciences</a></li>
				<li><a href="BamMajor.php?Major=Respiratory Care">Respiratory Care</a></li>
				<li><a href="BamMajor.php?Major=Social Work">Social Work</a></li>
				<li><a href="BamMajor.php?Major=Sociology">Sociology</a></li>
				<li><a href="BamMajor.php?Major=Theatre Arts">Theatre Arts</a></li>
				<li><a href="BamMajor.php?Major=Urban Studies and Community Development Program">Urban Studies and Community Development Program</a></li>
				<li><a href="BamMajor.php?Major=World Languages">World Languages</a></li>
			</ul>
		</section>

<?php
    require_once('BamFooter.php');
?>