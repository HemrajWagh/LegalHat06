<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<?php
include_once '../include/database.php';
session_start();
// echo "<pre>";
// print_r($_REQUEST['name']);
// echo "<pre>";
// var_dump($_POST);
if(isset($_POST['save']))
{	
	// var_dump($_POST); 
	$errors = [];
	$name = $contactno = $email = $city = $services =  " ";


	if (empty($_POST["name"])) {
		$errors['name'] = "Name is required";
	} else {
		$name = $_POST["name"];
	}

	if (empty($_POST["contactno"])) {
		$errors['contactno'] = "contactno is required";
	} else {
		$contactno = $_POST["contactno"];
	}	
	
	if (empty($_POST["email"])) {
		$errors['email'] = "email is required";
	} else {
		$email = $_POST["email"];
	}

	if (empty($_POST["city"])) {
		$errors['city'] = "city is required";
	} else {
		$city=$_POST["city"];
	}
	

	if (empty($_POST["services"])) {
		$errors['services'] = "Type of Service is required";
	} else {
		$services = implode(",", $_POST["services"]);
	}
	

		// echo "<pre>";
		// print_r($projectname);
		// echo "<pre>";



	

	// if (empty($_POST["dob"])) {
	// 	$errors['dob'] = "DOB is required";
	// } else {
	// 	$dob = $_POST["dob"];
	// }

	


	if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
	  $errors['email'] = "Invalid email formate";
	}else if(isset($_POST['email']) && !empty($_POST['email'])){
	  $email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
	}else{
	  $errors['email'] = "Email is Required";
	}

	



	
	// echo "<pre>";
	// print_r($_REQUEST['interestedinbuying']);
	// echo "<pre>";
	



	// if (empty($_POST["otp"])) {
	// 	$errors['otp'] = "otp is required";
	// } else {
	// 	$otp = $_POST["otp"];
	// }

	// if($_POST['revisit_form'] == 'update_form'){
	// 	unset($errors['otp']);
	// }

	

	$params =[
		'name' => $name,
		'email'=>$email,
		'contactno'=>$contactno,
	];



		// var_dump($errors);
	if(empty($errors)){
			// var_dump($errors);
		
					
					 $sql = "INSERT INTO leads (lead_name,mobile,email,service,city) VALUES ('$name','$contactno','$email','$services','$city')";

					
						// if ($conn->query($sql) === TRUE) {
						//   echo "New record created successfully";
						// } else {
						//   echo "Error: " . $sql . "<br>" . $conn->error;
						// }

						// print $sql;
						// $conn->close();
						// $q=mysqli_query($conn, $sql) or dia('Not inserted');
					if (mysqli_query($conn, $sql)){
						// print $sql;
						// $last_id = mysqli_insert_id($conn);
						// $params['form_id']	=  $last_id;
						// $res_rcube = rcube($params);
						// $sms_msg  = "Please give us feedback on below link.";
						// $sms_msg .= "https://www.kumarproperties.co.in/kumar-enquiry/feedback";

						// 	$res_sms = sendSms($contactno,$sms_msg);

							// echo "<script>alert('data submited successfully');</script>";
							// swal("Thank You!", "Data Submited Successfully", "success");
						?>
						<!-- <script>	 -->
							
						<!-- </script>	  -->
							<?php  
							// $to_email = $email;
							// $subject = "Testing PHP Mail";
							// $message = "This mail is sent using the PHP mail function";
							// $headers = "From: info@megapolis.co.in";
							// mail($to_email,$subject,$message,$headers);

							$_SESSION['success'] = "Enquiry Submitted Successfully";
							header('Location:index');
							// session_destroy();
						}else{
							$_SESSION['errors'] = 'error'.mysqli_error($conn);
						}
								
				}else{
						$_SESSION['errors'] = $errors;
							header('Location:index.html');

					}
				}				// }else{
							// 	$_SESSION['notmatched'] = "Mobile No Already Taken. Please fill <a style='color: #337ab7	;' href='https://www.kumarproperties.co.in/kumar-enquiry/revisit'>Revisit Form</a> ";
									// echo "<script>alert('Mobile No Already Taken');</script>";
							// header('Location:enquiry1.php');
					
												

function rcube($data)
{

	$name=$data['name'];
	$email=$data['email'];
	$contactno=$data['contactno'];
	// echo("<script>console.log(".$name.");</script>"); 
	// if (isset($_REQUEST['name'])) {
	//     $name=$_REQUEST['name'];
	// };
	// if (isset($_REQUEST['contactno'])) {
	//     $contactno=$_REQUEST['contactno'];
	// };
	// if (isset($_REQUEST['email'])) {
	//     $email=$_REQUEST['email'];
	// };
	// echo "<pre>";
	// print_r($name);
	// print_r($_REQUEST['name']);
	// echo "<pre>";
	// $message="Enquiry form lead. Formid - Form_ID_".$data['form_id']." ";


	
	// $source = $data['source'];


	// if (!is_null($_REQUEST['digitalsubsource'] || $_REQUEST['channelsubsource'])){
	// 	$subsource=$_REQUEST['digitalsubsource'] || $_REQUEST['channelsubsource'];	
	// }
	// else{
	// 	$subsource=$_REQUEST['enquirysource'];
	// };
			
	// $source=$_REQUEST['enquirysource'];

	 	// echo "<pre>";
	 	// print_r($source);
	 	// echo "<pre>";
	// $source= 'MP_Digital_Walkin';
	// $wuid='527748409256816694_ws_527660047398816469';
	// $uid='527660047398816469';
	// $campaign= $data['campaign'];
	// $proj='KP_Walkin';
	// $siteUrl='https://www.kumarworld.com/kumar-enquiry/index';

	// $utmSource=$enquirysource;
	// var_dump($utmSource);
	// $utmMedium=$channelsubsource;
	// $utmCampaign='';
	// if(is_null($utmSource)){
	// 	$utmSource='';
	// }
	// else{
	// 	$utmSource='';
	// 	$utmSource=$enquirysource;
	// };

	// if(is_null($utmMedium)){
	// 	$utmMedium='';
	// }
	// else{
	// 	$utmMedium='';
	// 	$utmMedium=$channelsubsource;
	// };

	
	// if(is_null($utmCampaign)) {
	// 	$utmCampaign='';
	// }
	// $PopUp='NA';
	// $country='India';
	

	// $post = array (
	// 	'Name'=> $name,
	// 	'Email'=>$email,
	// 	'Phone'=>$contactno,
	// 	'Remarks'=>$PopUp,
	// 	'Project'=>$proj,
	// 	'LandingPage'=>$siteUrl,
	// 	'Referral'=>$subsource,
	// 	'Utm_Source'=>$utmSource,
	// 	'Utm_Medium'=>$utmMedium,
	// 	'Utm_Campaign'=>$utmCampaign,
	// 	'Country'=>$country
	// );
	// $qString=http_build_query($post);
	// $Test=json_encode($post);
	// // echo "<pre>";
	// // print_r($Test);
	// // echo "<pre>";
	                
	// $ch = curl_init();
	// curl_setopt($ch, CURLOPT_URL,"https://quadraleads.in/QleadsKW/EnquiryModule/Common/EnquiryToExternalSource");
	// curl_setopt($ch, CURLOPT_POST, 1);
	// curl_setopt($ch, CURLOPT_HEADER,false);
   // curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
	// curl_setopt($ch, CURLOPT_RETURNTRANSFER,false);
	// $resp = trim(curl_exec($ch));
	// // $resp = curl_exec($ch);
	// // $json = json_decode($resp);
	// $decoded = json_decode($resp);
	// $encoded = json_encode($decoded,true);
	// if ($e = curl_error($ch)) {
	// 	echo $e;
	// }
	// else{
		// $decoded = json_decode($resp);
	   // print_r($resp);
		// echo "<pre>";
		// print_r($decoded);
	// 	echo "<pre>";
	//    // var_dump($decoded);
		// $encoded = json_encode($decoded,true);
	//       // var_dump  ($encoded);

	//           foreach ($decoded as $key => $value) 
	//           {
	//               echo $key .':'.$value.'<br>';
	//            }
	// };
	// $status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
	// echo $status_code;
	// curl_close ($ch);

	// echo("<script>console.log(".$resp.");</script>");     
	// return $encoded;
};

function sendSms($contactno,$text)
{
	$smsmessage = urlencode("Your OTP is ".$text." PEGASUS PROPERTIES");
// $contactno = 9834704560;
$sms_url1 = "http://sms.advaitteleservices.com/V2/http-api.php?apikey=suekSTSdBJozV11Q&senderid=KMRPRO&number=$contactno&message=$smsmessage&format=json";
$smsresponse1 = file_get_contents($sms_url1);
$smsresdata1 = json_decode($smsresponse1, true);
   return $smsresdata1;
}
											

?>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.rtl.min.css"/>
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>