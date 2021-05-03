<?php 
$student["name"] = "Lop truong TH1";
$student["add"] = "DHTL CS2";
$list[]=$student;
$list[]=$student;
$list[]=$student;
$list[]=$student;

?>
Ten :<?echo $list[0]['add']?><br/>
Dia chi :<?echo $list[0]['name']?><br/>
<table>
	<tr>
		<td>STT</td>
		<td>Ho Ten</td>
		<td>Dia chi</td>
	</tr>
	
	<?for($i=1;$i<count($list);$i++){$dat=$list[$i];?>
	<tr>
		<td><?echo ($i)?></td>
		<td><?echo $dat['add']?></td>
		<td><?echo $dat['name']?></td>
	</tr>
	<?}?>
</table>

<style>
table {border:1px solid red;}
table td{border:1px solid red;}
</style>