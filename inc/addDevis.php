<?php  require 'functions.php'; 
 
if(isset($_POST)):
	extract($_POST); 

	$db = db_connect();

	$time_stamp = time();

	$dateDebut 	= strtotime( $dateDebut );
	$dateFin 	= strtotime( $dateFin );

	$query = $db->query(" INSERT INTO `devis` (

	 	`type`, 
	 	`lieu`, 
	 	`rueEvent`, 
	 	`cpEvent`, 
	 	`villeEvent`,
	 	`distance`,
	 	`largeur`, 
	 	`hauteur`, 
	 	`dateDebut`, 
	 	`dateFin`, 
	 	`visuel`, 
	 	`nbrBoucles`, 
	 	`son`, 
	 	`options`, 
	 	`email`, 
	 	`tel`, 
	 	`societe`, 
	 	`fname`, 
	 	`lname`, 
	 	`address1`, 
	 	`address2`,  
	 	`cp`,
	 	`ville`,
	 	`dateDevis`) 

	 	VALUES (
  
	 	'$type', 
	 	'$lieu', 
	 	'$rueEvent', 
	 	'$cpEvent',
	 	'$villeEvent', 
	 	'$distance', 
	 	'$largeur', 
	 	'$hauteur', 
	 	'$dateDebut', 
	 	'$dateFin', 
	 	'$visuel', 
	 	'$nbrBoucles', 
	 	'$son', 
	 	'$options', 
	 	'$email', 
	 	'$tel', 
	 	'$societe', 
	 	'$fname', 
	 	'$lname', 
	 	'$address1', 
	 	'$address2',  
	 	'$cp', 
	 	'$ville', 
	 	'$time_stamp' )"
	);

	if( $query ){

		$idDevis = $db->lastInsertId();  
		
		if( count($_FILES) > 0 ){
			uploadFiles( $idDevis, $_FILES, '../admin/uploads/' );
		}

		
		$result = generatePDFDevis( $idDevis );
		extract($result);
		include 'generatePdfDevis.php';
		$output = $dompdf->output(); 

		file_put_contents( $infos['addAttachment'], $output );  

		include '../libraries/PHPMailer/PHPMailerAutoload.php';
		// if( sendEmailToCLient( array("email"=>$infos['email'], "addAttachment"=> $infos['addAttachment']) )  &&  sendEmailToAdmin( array("addAttachment"=> $infos['addAttachment'] ) ) ){
		if( sendEmailToCLient( array("email"=>$infos['email'], "addAttachment"=> $infos['addAttachment']) )  ){
			if(file_exists($infos['addAttachment'])){
				unlink($infos['addAttachment']);
			}
		}  

		echo $idDevis;
	}else{
		echo 0;
	} 

 
endif;
?>