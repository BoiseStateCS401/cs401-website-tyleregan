		<?php if($thisTopic == "Activity"){ ?>
		<section class="NavBar">
			<ul>
				<li class="history">
					<a href="BamHome.php">Home</a>
					<?php if($thisLevel > 1){ ?>
					<strong>&lsaquo;<strong>
					<a href="BamActivityList.php">ActivityList</a>
					<?php if($thisLevel > 2) { ?>
					<strong>&lsaquo;<strong>
					<a href="BamActivity.php?Activity=<?php echo $thisActivity ?>"><?php echo $thisActivity ?></a>
					<?php if($thisLevel > 3) { ?>
					<strong>&lsaquo;<strong>
					<a href="BamActivityThreadList.php?Activity=<?php echo $thisActivity ?>&List=<?php echo $thisList ?>"><?php echo $thisList ?></a>
					<?php if($thisLevel > 4) { ?>
					<strong>&lsaquo;<strong>
					<a href="<?php echo $thisPage ?>.php"><?php echo $thisPage ?></a>
					<?php }}}} ?>
				</li>
			</ul>
		</section>
		
		
		<?php } else if($thisTopic == "Major"){ ?>
		<section class="NavBar">
			<ul>
				<li class="history">
					<a href="BamHome.php">Home</a>
					<?php if($thisLevel > 1){ ?>
					<strong>&lsaquo;<strong>
					<a href="BamMajorList.php">MajorList</a>
					<?php if($thisLevel > 2) { ?>
					<strong>&lsaquo;<strong>
					<a href="BamMajor.php?Major=<?php echo $thisMajor ?>"><?php echo $thisMajor ?></a>
					<?php if($thisLevel > 3) { ?>
					<strong>&lsaquo;<strong>
					<a href="BamMajorThreadList.php?Major=<?php echo $thisMajor ?>&List=<?php echo $thisList ?>"><?php echo $thisList ?></a>
					<?php if($thisLevel > 4) { ?>
					<strong>&lsaquo;<strong>
					<a href="<?php echo $thisPage ?>.php"><?php echo $thisPage ?></a>
					<?php }}}} ?>
				</li>
			</ul>
		</section>
		
		<?php } else { ?>
		<section class="NavBar">
			<ul>
				<li class="history">
					<a href="BamHome.php">Home</a>
					<strong>&lsaquo;<strong>
					<p>Something went wrong</p>
				</li>
			</ul>
		</section>
		<?php } ?>