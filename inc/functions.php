<?php   
	function printR($array)
	{
		echo "<pre>";
			print_r($array);
		echo "</pre>";

		die();
	}
	function db_connect(){
		
		// $servername = "db696840967.db.1and1.com";
		// $username = "dbo696840967";
		// $password = "Zento&EI@2017"; // 
		// $dbname = "db696840967";

		$servername = "localhost";
		$username = "root";
		$password = "root"; // Zento&EI@2017
		$dbname = "jammulator";

		try {
			    $db = new PDO("mysql:host=$servername;dbname=".$dbname, $username, $password);
			    // set the PDO error mode to exception
			    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 

			    return $db;
		}
		catch(PDOException $e){
		    echo "Connection failed: " . $e->getMessage();
		}
	} 

	function getTypeLabel($idType){
		$db = db_connect();
		$query = $db->query("SELECT * from types where idType = $idType ");
		return $query->fetchAll()[0]['name'];
	}

	function datediff($dateDebut, $dateFin){ 
		$datediff = $dateFin - $dateDebut; 
		return floor($datediff / (60 * 60 * 24));
	}
	function getContactInfo()
	{
		$db = db_connect();
		$query = $db->query("SELECT * FROM representant");
        return $query->fetchAll(PDO::FETCH_ASSOC)[0];
	}
	function GetForfaisTexts()
	{	
		$data = array();
		$db = db_connect();
		//////////////////////// Visuel ////////////////////////
		$query = $db->query("SELECT name, description from visuel");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['visuel'][$key]['name'] = $value['name'];
			$data['visuel'][$key]['description'] = $value['description'];
		}
		///////////////////////////////////////////////////////

		//////////////////////// SON ////////////////////////
		$query = $db->query("SELECT  name, description from son");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['son'][$key]['name'] = $value['name'];
			$data['son'][$key]['description'] = $value['description'];
		}
		////////////////////////////////////////////////////////

		//////////////////////// Option ////////////////////////
		$query = $db->query("SELECT  name, description from options");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['options'][$key]['name'] = $value['name'];
			$data['options'][$key]['description'] = $value['description'];
		}
		////////////////////////////////////////////////////////
 		
		return $data;
	}
	function getDataPrices()
	{
		$db = db_connect();
		$data = array(
			"visuel" => array(),
			"son" => array(),
			"options" => array(),
			"autres" => array(),
			"JamMobile" => array(),
			"JamSon" => array()
		);

		///////////////////////// Visuel ////////////////////////
		$query = $db->query("SELECT slug, price from visuel");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['visuel'][$value['slug']] = intval($value['price']);
		}
		///////////////////////// Visuel ////////////////////////


		///////////////////////// Son ///////////////////////////
		$query = $db->query("SELECT slug, price from son");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['son'][$value['slug']] = intval($value['price']);
		}
		/////////////////////////////////////////////////////////


		///////////////////////// Options ///////////////////////
		$query = $db->query("SELECT slug, price from options");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['options'][$value['slug']] = intval($value['price']);
		}
		/////////////////////////////////////////////////////////


		///////////////////////// Autre ///////////////////////
		$query = $db->query("SELECT slug, price from autres");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['autres'][$value['slug']] = floatval($value['price']);
		}
		/////////////////////////////////////////////////////////


		/////////////////////// JamMobile ///////////////////////
		$query = $db->query("SELECT nbrJours, TotalPrice from JamMobile");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['JamMobile'][$value['nbrJours']] = intval($value['TotalPrice']);
		}
		/////////////////////////////////////////////////////////

		///////////////////////// JamSon ///////////////////////
		$query = $db->query("SELECT nbrJours, price from JamSon");
		$result = $query->fetchAll(PDO::FETCH_ASSOC);
		foreach ($result as $key => $value) {
			$data['JamSon'][$value['nbrJours']] = intval($value['price']);
		}
		/////////////////////////////////////////////////////////
		//printR($data);
		return $data;

	}
	function generateJsonDataPrice($value='')
	{
		$fp = fopen('js/data.json', 'w');
		fwrite($fp, json_encode( getDataPrices() ));
		fclose($fp);
	}
	function TVA( $amount ){

		return ($amount * 20)/100;
	}

	function getFrenchDate( $timestamp ){	
		
		$days = array('Dimanche','Lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi');
		$months = array('janvier','février','mars','avril','mai','juin','juillet','août','septembre','octobre','novembre','décembre');
		
			return $days[date('w', $timestamp)].date(' j ', $timestamp).$months[date('n', $timestamp)-1].date(' Y', $timestamp);
	}
	function generatePDFDevis( $idDevis ){
		$data = array();
		$db = db_connect();
		$query = $db->query("SELECT * from devis where idDevis = $idDevis ");
		$result = $query->fetchAll(PDO::FETCH_ASSOC)[0]; 


		$infos = array(
			"devisNumber" 	=> date('Yj', $result['dateDevis']).$result['idDevis'],
			"fname" 		=> $result['fname'],
			"lname" 		=> $result['lname'],
			"email" 		=> $result['email'],
			"tel" 			=> $result['tel'],
			"societe" 		=> $result['societe'],
			"address1"  	=> $result['address1'],
			"cp" 			=> $result['cp'],
			"ville"			=> $result['ville'], 
			"distance"			=> $result['distance'], 

			"dateDebut"		=> getFrenchDate( $result['dateDebut'] ),
			"dateFin"		=> getFrenchDate( $result['dateFin'] ),
			"nbrJours"		=> datediff($result['dateDebut'], $result['dateFin']),

			"dateDevis"		=> getFrenchDate( $result['dateDevis'] ), 
			"validateDate" 	=> getFrenchDate( $result['dateDevis'] + (3600 * 24 * 30) ), 

			"options"		=> (strpos(',', $result['options']) !== false ) ? array($result['options']) : explode(',', $result['options']),
			"contact"		=> getContactInfo()

		);
		$DataPrices = getDataPrices(); 



		////// Transport et hebergement ///////////////
		$priceHebergementImage 	= $DataPrices['autres']['priceHebergementImage'];
		$priceHebergementSon 	= $DataPrices['autres']['priceHebergementSon'];

		$priceDeplacementImage 	= $DataPrices['autres']['priceDeplacementImage'];
		$priceDeplacementSon 	= $DataPrices['autres']['priceDeplacementSon'];

		$PriceTransportHeberg = 0;

		// Hebergement
	 	$PriceTransportHeberg += ($priceHebergementImage * 2) * ($infos['nbrJours'] + 2);
	 	$PriceTransportHeberg +=  ( $DataPrices['son'][ $result['son'] ] > 0 ) ? $priceHebergementSon * ($infos['nbrJours'] + 2) : 0 ;

	 	// Transport
	 	$PriceTransportHeberg += $priceDeplacementImage * $infos['distance'];
	 	$PriceTransportHeberg +=  ( $DataPrices['son'][ $result['son'] ] > 0 ) ? $priceDeplacementSon * $infos['distance'] : 0 ;

		////////////////////////////////////////////////

		////// Demarches administratives ///////////////
	 	$GestDemarAdmin = (in_array('GestDemarAdmin', $infos['options'])) ? $DataPrices['options']['GestDemarAdmin'] : 0;
		////////////////////////////////////////////////

		////// Options ///////////////
	 	$captationVideo = (in_array('captationVideo', $infos['options'])) ? $DataPrices['options']['captationVideo'] : 0;
	 	$liveVideo = (in_array('liveVideo', $infos['options'])) ? $DataPrices['options']['liveVideo'] : 0;
	 	$siteWeb = (in_array('siteWeb', $infos['options'])) ? $DataPrices['options']['siteWeb'] : 0;
	 	$affiche = (in_array('affiche', $infos['options'])) ? $DataPrices['options']['affiche'] : 0;
		////////////////////////////////////////////////
		
		$DataCalcule = array(
			/////////////////////////////////////////// VIDÉO MAPPING /////////////////////////////////////////////////////////////
			"visuel" => array(
				"qte" 			=> $result['nbrBoucles'],
				"prixUnitaire" 	=> $DataPrices['visuel'][ $result['visuel'] ],
				"totalHT" 		=> $DataPrices['visuel'][ $result['visuel'] ] * $result['nbrBoucles'],
				"TVA" 			=> TVA( $DataPrices['visuel'][ $result['visuel'] ] * $result['nbrBoucles'] ),
				"TotalTTC" 		=> ($DataPrices['visuel'][ $result['visuel'] ] * $result['nbrBoucles']) + TVA( $DataPrices['visuel'][ $result['visuel'] ] * $result['nbrBoucles'] )	
			),
			"JamMobile" => array(
				"qte" 			=> 1,
				"prixUnitaire" 	=> $DataPrices['JamMobile'][ $infos['nbrJours'] ],
				"totalHT" 		=> $DataPrices['JamMobile'][ $infos['nbrJours'] ],
				"TVA" 			=> TVA( $DataPrices['JamMobile'][ $infos['nbrJours'] ] ),
				"TotalTTC" 		=> $DataPrices['JamMobile'][ $infos['nbrJours'] ] + TVA( $DataPrices['JamMobile'][ $infos['nbrJours'] ] )	
			),

			/////////////////////////////////////////////// SONORISATION /////////////////////////////////////////////////////////
			"son" => array(
				"qte" 			=> $result['nbrBoucles'],
				"prixUnitaire" 	=> $DataPrices['son'][ $result['son'] ],
				"totalHT" 		=> $DataPrices['son'][ $result['son'] ] * $result['nbrBoucles'],
				"TVA" 			=> TVA( $DataPrices['son'][ $result['son'] ] * $result['nbrBoucles'] ),
				"TotalTTC" 		=> ($DataPrices['son'][ $result['son'] ] * $result['nbrBoucles']) + TVA( $DataPrices['son'][ $result['son'] ] * $result['nbrBoucles'] )	
			),
			"JamSon" => array(
				"qte" 			=> 1,
				"prixUnitaire" 	=> $DataPrices['JamSon'][ $infos['nbrJours'] ],
				"totalHT" 		=> $DataPrices['JamSon'][ $infos['nbrJours'] ],
				"TVA" 			=> TVA( $DataPrices['JamSon'][ $infos['nbrJours'] ] ),
				"TotalTTC" 		=> $DataPrices['JamSon'][ $infos['nbrJours'] ] + TVA( $DataPrices['JamSon'][ $infos['nbrJours'] ] )	
			), 

			/////////////////////////////////////////////// Demarches administratives /////////////////////////////////////////////////////////
			"GestDemarAdmin" => array(
				"qte" 			=> ($GestDemarAdmin > 0) ? 1 : 0,
				"prixUnitaire" 	=> $GestDemarAdmin,
				"totalHT" 		=> $GestDemarAdmin,
				"TVA" 			=> TVA( $GestDemarAdmin ),
				"TotalTTC" 		=> $GestDemarAdmin + TVA( $GestDemarAdmin )	
			),

			/////////////////////////////////////////////// options  /////////////////////////////////////////////////////////
			"captationVideo" => array(
				"qte" 			=> ($captationVideo > 0) ? 1 : 0,
				"prixUnitaire" 	=> $captationVideo,
				"totalHT" 		=> $captationVideo,
				"TVA" 			=> TVA( $captationVideo ),
				"TotalTTC" 		=> $captationVideo + TVA( $captationVideo )	
			),
			"liveVideo" => array(
				"qte" 			=> ($liveVideo > 0) ? 1 : 0,
				"prixUnitaire" 	=> $liveVideo,
				"totalHT" 		=> $liveVideo,
				"TVA" 			=> TVA( $liveVideo ),
				"TotalTTC" 		=> $liveVideo + TVA( $liveVideo )	
			),
			"affiche" => array(
				"qte" 			=> ($affiche > 0) ? 1 : 0,
				"prixUnitaire" 	=> $affiche,
				"totalHT" 		=> $affiche,
				"TVA" 			=> TVA( $affiche ),
				"TotalTTC" 		=> $affiche + TVA( $affiche )	
			),
			"siteWeb" => array(
				"qte" 			=> ($siteWeb > 0) ? 1 : 0,
				"prixUnitaire" 	=> $siteWeb,
				"totalHT" 		=> $siteWeb,
				"TVA" 			=> TVA( $siteWeb ),
				"TotalTTC" 		=> $siteWeb + TVA( $siteWeb )	
			)
		);

		$subTotal = array(
			"videoMapimg" => array(
				"HT"  => $DataCalcule['visuel']['totalHT'] + $DataCalcule['JamMobile']['totalHT'] ,
				"TVA" => $DataCalcule['visuel']['TVA'] + $DataCalcule['JamMobile']['TVA'],
				"TTC" => $DataCalcule['visuel']['TotalTTC'] + $DataCalcule['JamMobile']['TotalTTC']
			),
			"sonorisation" => array(
				"HT"  => $DataCalcule['son']['totalHT'] + $DataCalcule['JamSon']['totalHT'] ,
				"TVA" => $DataCalcule['son']['TVA'] + $DataCalcule['JamSon']['TVA'],
				"TTC" => $DataCalcule['son']['TotalTTC'] + $DataCalcule['JamSon']['TotalTTC']
			), 
			"transpHeberg" => array(
				"HT"  => $DataCalcule['transpHeberg']['totalHT'] ,
				"TVA" => $DataCalcule['transpHeberg']['TVA'],
				"TTC" => $DataCalcule['transpHeberg']['TotalTTC']
			), 
			"GestDemarAdmin" => array(
				"HT"  => $DataCalcule['GestDemarAdmin']['totalHT'] ,
				"TVA" => $DataCalcule['GestDemarAdmin']['TVA'],
				"TTC" => $DataCalcule['GestDemarAdmin']['TotalTTC']
			), 
			"options" => array(
				"HT"  => $DataCalcule['captationVideo']['totalHT'] + $DataCalcule['liveVideo']['totalHT'] + $DataCalcule['affiche']['totalHT'] + $DataCalcule['siteWeb']['totalHT'] ,
				"TVA" => $DataCalcule['captationVideo']['TVA'] + $DataCalcule['liveVideo']['TVA'] + $DataCalcule['affiche']['TVA'] + $DataCalcule['siteWeb']['TVA'],
				"TTC" => $DataCalcule['captationVideo']['TotalTTC'] + $DataCalcule['liveVideo']['TotalTTC'] + $DataCalcule['affiche']['TotalTTC'] + $DataCalcule['siteWeb']['TotalTTC']
			)
		);
		$Total = array();
		$Total["HT"] = $subTotal['videoMapimg']['HT'] + $subTotal['sonorisation']['HT'] + $subTotal['transpHeberg']['HT'] + $subTotal['GestDemarAdmin']['HT'] + $subTotal['options']['HT'];

		$nbrJourFromNow = datediff(time(),$result['dateDebut']);
		if( $nbrJourFromNow >= (30*6) ){
            $Total['HT'] = $Total['HT'] - ($Total['HT'] * 10) / 100;
        }
        $Total['TVA'] = TVA( $Total['HT'] );
        $Total['TTC'] =  $Total['HT'] + $Total['TVA'];


 	
 
		$infos['addAttachment'] = "Devis_".time().".pdf";

		return array( 
			"infos" 		=> $infos,
			"DataCalcule"	=> $DataCalcule,
			"subTotal"		=> $subTotal,
			"Total"			=> $Total 
		);
  

	}


	function sendEmailToCLient( $infos ){
		
		 
		

		$mail = new PHPMailer;
		$mail->setFrom( getContactInfo()['email'], 'ATHEM & SKERTZÒ');
		$mail->addAddress( $infos['email'] );
		$mail->addCC( getContactInfo()['email'] );
		$mail->Subject  = 'JAMULATEUR - ATHEM & SKERTZÒ';
		$mail->addAttachment( $infos['addAttachment'] );
		$mail->IsHTML(true); 
		$mail->CharSet = 'UTF-8';
		$mail->Body     = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-6-I"/><title>Untitled Document</title></head><body>Madame, Monsieur,<br/><br/>Merci vivement d&rsquo;avoir utilis&eacute; le JAMULATEUR pour r&eacute;aliser votre devis ci joint,<br/><br/>Cette proposition financi&egrave;re peut probablement &ecirc;tre optimis&eacute;e, n&rsquo;h&eacute;sitez pas &agrave; me contacter par courriel ou t&eacute;l&eacute;phone.<br/><br/>Restant &agrave; votre disposition,<br/><br/>Tr&egrave;s cordialement,<br/><br/>Philippe<br/><a href="mailto:contact@athem-skertzo.com">contact@athem-skertzo.com</a><br/>GSM + 33 (0)6 07 32 09 21<br/>ATELIER ATHEM &amp; SKERTZ&Ograve;<br/><a href="http://www.athem-skertzo.com/" target="_blank">ATHEM &amp; SKERTZ&Ograve; WEBSITE</a> - <a href="https://www.facebook.com/athem" target="_blank">FACEBOOK</a> - <a href="https://plus.google.com/u/0/b/101244148760564709999/101244148760564709999/posts" target="_blank">GOOGLE+</a> - <a href="https://www.pinterest.com/stagedbyathem/" target="_blank">PINTEREST</a> - <a href="https://twitter.com/StagedbyATHEM" target="_blank">TWITTER</a></body></html>';

		return ( $mail->send() ) ? true : false;
	}

	function sendEmailToAdmin( $infos ){ 

		// $mail = new PHPMailer;
		// $mail->setFrom( 'noreply@athem-skertzo.com', 'ATHEM & SKERTZÒ');
		// $mail->addAddress( getContactInfo()['email'] );
		// $mail->Subject  = 'Devis généré - ATHEM & SKERTZÒ';
		// $mail->addAttachment( $infos['addAttachment'] );
		// $mail->CharSet = 'UTF-8';
		// $mail->IsHTML(true); 
		// $mail->Body     = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-6-I"/><title>Untitled Document</title></head><body><p>Bonjour,<br><br>Un nouveau devis, ci-joint, a été émis et envoyé par le JAMULATEUR<br><br>Cordialement</p></body></html>';

		// return ( $mail->send() ) ? true : false;
	}

	function slugify($slug){ 
		$slug = preg_replace('@[\s!:;_\?=\\\+\*/%&#]+@', '-', $slug);  
		$slug = mb_strtolower($slug); 
		$slug = trim($slug, '-');  

	    $slug = iconv('UTF-8', 'ISO-8859-1//IGNORE', $slug); 

	  return $slug;
	}

	function insetFile( $data ){
		extract($data);
		$db = db_connect();
		$query = $db->query("INSERT INTO `uploads` (idDevis, fileName, realName) VALUES ('$idDevis','$fileName','$realName') " );
	}

	function uploadFiles( $idDevis, $files, $uploaddir ){  ;

		foreach ($files as $key => $file) {
  
			$fileName = time()."_". basename( slugify($file['name']) );
			$uploadfile = $uploaddir .$fileName; 

			if (move_uploaded_file($file['tmp_name'], $uploadfile)) {
			    
			    insetFile(array(
			    	"idDevis"  => $idDevis,
			    	"fileName" => $fileName,
			    	"realName" => $file['name']
			    ));
			}

		} 
	} 

	function getConditionsGenerales()
	{	
		$db = db_connect();
		$query = $db->query("SELECT * FROM contents where slug = 'conditions_generales'");
        return $query->fetchAll(PDO::FETCH_ASSOC)[0]['content'];
	}

	function getDepotAddress()
	{	
		$db = db_connect();
		$query = $db->query("SELECT * FROM contents where slug = 'adresse_depot'");
        return $query->fetchAll(PDO::FETCH_ASSOC)[0]['content'];
	}












?>