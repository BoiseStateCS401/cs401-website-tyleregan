		<section class="NavBar">
			<ul>
				<li class="history">
					<a href="BamHome.php">Home</a>
					<?php if($_SESSION['Level'] > 1){ ?>
					<strong>&lsaquo;<strong>
					<a href="Bam<?php echo $_SESSION['Category'] ?>List.php"><?php echo $_SESSION['Category'] ?>List</a>
					<?php if($_SESSION['Level'] > 2) { ?>
					<strong>&lsaquo;<strong>
					<a href="Bam<?php echo $_SESSION['Category'] ?>.php?<?php echo $_SESSION['Category'] ?>=<?php echo $_SESSION['Table'] ?>"><?php echo $_SESSION['Table'] ?></a>
					<?php if($_SESSION['Level'] > 3) { ?>
					<strong>&lsaquo;<strong>
					<a href="Bam<?php echo $_SESSION['Category'] ?>ThreadList.php?<?php echo $_SESSION['Category'] ?>=<?php echo $_SESSION['Table'] ?>&List=<?php echo $_SESSION['List'] ?>"><?php echo $_SESSION['List'] ?></a>
					<?php if($_SESSION['Level'] > 4) { ?>
					<strong>&lsaquo;<strong>
					<a href="<?php echo $_SESSION['Thread'] ?>.php"><?php echo $_SESSION['Thread'] ?></a>
					<?php }}}} ?>
				</li>
			</ul>
		</section>