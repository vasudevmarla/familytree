<?php

include "config.php";

if($_REQUEST['status'] && ($_REQUEST['status']=='getfamilydata'))
{

	$selectQuery = "select c.Child_Name,c.Child_Gender,c.Child_age,p.Father_Name, p.Mother_Name, f.Family_Name from ChildrenTable c, ParentsTable p, FamilyTable f where c.Parent_ID = p.Parent_ID AND p.Family_ID = f.Family_ID";

	$resultsSet=mysql_query($selectQuery);

	
	if($rows=mysql_num_rows($resultsSet))
	{
		echo '<table style="" class="table table-striped">';
		echo '<tr>';
			echo '<th>';
				echo 'Child Name';
			echo '</th>';
			echo '<th>';
				echo 'Gender';
			echo '</th>';
			echo '<th>';
				echo 'Age';
			echo '</th>';
			echo '<th>';
				echo 'Father Name';
			echo '</th>';
			echo '<th>';
				echo 'Mother Name';
			echo '</th>';
			echo '<th>';
				echo 'Family Name';
			echo '</th>';
		echo '</tr>';
		while($row=mysql_fetch_assoc($resultsSet))
		{
			echo '<tr>';
				echo '<td>';
					echo $row['Child_Name'];
				echo '</td>';
				echo '<td>';
					echo $row['Child_Gender'];
				echo '</td>';
				echo '<td>';
					echo $row['Child_age'];
				echo '</td>';
				echo '<td>';
					echo $row['Father_Name'];
				echo '</td>';
				echo '<td>';
					echo $row['Mother_Name'];
				echo '</td>';
				echo '<td>';
					echo $row['Family_Name'];
				echo '</td>';
			echo '</tr>';
		}
		echo '</table>';

	}

}


?>