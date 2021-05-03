<?php 
$student["name"] = "Lop truong TH1";
$student["add"] = "DHTL CS2";
$list[]=$student;
$list[]=$student;
$list[]=$student;
$list[]=$student;
?>
<table>
	<tr>
		<td>STT</td>
		<td>Ho Ten</td>
		<td>Dia chi</td>
	</tr>	
	<? $i=0;
		foreach($list as $dat){
		$i++;
	?>
	<tr>
		<td><?echo ($i)?></td>
		<td><?echo $dat['add']?></td>
		<td><?echo $dat['name']?></td>
	</tr>
	<?	}?>
</table>
<style>
table {border:1px solid red;}
table td{border:1px solid red;}
</style>