

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row)
{
	$footer_about = $row['footer_about'];
	$contact_email = $row['contact_email'];
	$contact_phone = $row['contact_phone'];
	$contact_address = $row['contact_address'];
	$footer_copyright = $row['footer_copyright'];
	$total_recent_post_footer = $row['total_recent_post_footer'];
    $total_popular_post_footer = $row['total_popular_post_footer'];
    $newsletter_on_off = $row['newsletter_on_off'];
    $before_body = $row['before_body'];
}
?>


<?php if($newsletter_on_off == 1): ?>
<section class="home-newsletter">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="single">
					<?php
			if(isset($_POST['form_subscribe']))
			{

				if(empty($_POST['email_subscribe'])) 
			    {
			        $valid = 0;
			        $error_message1 .= LANG_VALUE_131;
			    }
			    else
			    {
			    	if (filter_var($_POST['email_subscribe'], FILTER_VALIDATE_EMAIL) === false)
				    {
				        $valid = 0;
				        $error_message1 .= LANG_VALUE_134;
				    }
				    else
				    {
				    	$statement = $pdo->prepare("SELECT * FROM tbl_subscriber WHERE subs_email=?");
				    	$statement->execute(array($_POST['email_subscribe']));
				    	$total = $statement->rowCount();							
				    	if($total)
				    	{
				    		$valid = 0;
				        	$error_message1 .= LANG_VALUE_147;
				    	}
				    	else
				    	{
				    		// Sending email to the requested subscriber for email confirmation
				    		// Getting activation key to send via email. also it will be saved to database until user click on the activation link.
				    		$key = md5(uniqid(rand(), true));

				    		// Getting current date
				    		$current_date = date('Y-m-d');

				    		// Getting current date and time
				    		$current_date_time = date('Y-m-d H:i:s');

				    		// Inserting data into the database
				    		$statement = $pdo->prepare("INSERT INTO tbl_subscriber (subs_email,subs_date,subs_date_time,subs_hash,subs_active) VALUES (?,?,?,?,?)");
				    		$statement->execute(array($_POST['email_subscribe'],$current_date,$current_date_time,$key,0));

				    		// Sending Confirmation Email
				    		$to = $_POST['email_subscribe'];
							$subject = 'Subscriber Email Confirmation';
							
							// Getting the url of the verification link
							$verification_url = BASE_URL.'verify.php?email='.$to.'&key='.$key;

							$message = '
										Thanks for your interest to subscribe our newsletter!<br><br>
										Please click this link to confirm your subscription:
															'.$verification_url.'<br><br>
										This link will be active only for 24 hours.
										';

							$headers = 'From: ' . $contact_email . "\r\n" .
										'Reply-To: ' . $contact_email . "\r\n" .
										'X-Mailer: PHP/' . phpversion() . "\r\n" . 
										"MIME-Version: 1.0\r\n" . 
										"Content-Type: text/html; charset=ISO-8859-1\r\n";

							// Sending the email
							mail($to, $subject, $message, $headers);

							$success_message1 = LANG_VALUE_136;
				    	}
				    }
			    }
			}
			if($error_message1 != '') {
				echo "<script>alert('".$error_message1."')</script>";
			}
			if($success_message1 != '') {
				echo "<script>alert('".$success_message1."')</script>";
			}
			?>
				<form action="" method="post">
					<?php $csrf->echoInputField(); ?>
					<h2><?php echo LANG_VALUE_93; ?></h2>
					<div class="input-group">
			        	<input type="email" class="form-control" placeholder="<?php echo LANG_VALUE_95; ?>" name="email_subscribe">
			         	<span class="input-group-btn">
			         	<button class="btn btn-theme" type="submit" name="form_subscribe"><?php echo LANG_VALUE_92; ?></button>
			         	</span>
			        </div>
				</div>
				</form>
			</div>
		</div>
	</div>
</section>
<?php endif; ?>

<div class="footer-bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-12 copyright">
				<?php echo $footer_copyright; ?>
			</div>
		</div>
	</div>
</div>

<!-- <div class="phone-number" style = " position: fixed;bottom: 20px;left: 15px;font-size: 24px;font-weight: bold;padding: 10px;background-color: rgba(0, 0, 0, 0.7);border-radius: 30px;">
	<span class="glow" style = "color: #fff; text-shadow: 0 0 5px #00f, 0 0 10px #00f, 0 0 20px #00f, 0 0 30px #00f, 0 0 40px #00f, 0 0 50px #00f, 0 0 60px #00f; animation: glow 1.5s infinite alternate; ">HOTLINE: 123456789</span>
</div> -->

<div id="chat-circle" class="chat-circle" style=" position: fixed;
    bottom: 20px;
    left: 20px;
    width: 60px;
    height: 60px;
    background-color: #007bff;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    z-index: 1000;">
        <div id="chat-icon" style="font-size: 30px;color: white;">💬</div>
</div>
<div id="chat-box" class="chat-box" style="position: fixed;
    bottom: 20px;
    left: 20px;
    width: 300px;
    height: 400px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    display: none;
    flex-direction: column;
    z-index: 1000;">
    <div id="chat-header" class="chat-header" style="padding: 10px;
        background-color: #007bff;
        color: white;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        display: flex;
        justify-content: space-between;
        align-items: center;"
        >Chat with Admin
        <button id="close-chat" style="width: 20px;color: black;">X</button>
    </div>
    <div id="chat-messages" class="chat-messages" style="display: flex; flex-direction: column; padding: 10px; overflow-y: auto;"></div>
    <div id="chat-input" class="chat-input" style="padding: 10px;border-top: 1px solid #ccc;display: flex;">
        <input type="text" id="message-input" placeholder="Type a message..." style="flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;">
        <button id="send-message" style="padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;"
        >Send</button>
    </div>
</div>

<a href="#" class="scrollup">
	<i class="fa fa-angle-up"></i>
</a>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $stripe_public_key = $row['stripe_public_key'];
    $stripe_secret_key = $row['stripe_secret_key'];
}
?>

<script>
	document.addEventListener('DOMContentLoaded', () => {
    const chatCircle = document.getElementById('chat-circle');
    const chatBox = document.getElementById('chat-box');
    const closeChatButton = document.getElementById('close-chat');
    const sendMessageButton = document.getElementById('send-message');
    const messageInput = document.getElementById('message-input');
    const chatMessages = document.getElementById('chat-messages');

    let senderId = null;
    <?php if (isset($_SESSION['customer']['cust_id'])): ?>
        senderId = <?php echo $_SESSION['customer']['cust_id']; ?>;
    <?php endif; ?>

    const receiverId = 1; // ID của admin, giả sử admin có ID là 1

    chatCircle.addEventListener('click', () => {
        if (!senderId) {
        alert("Bạn phải đăng nhập để sử dụng chức năng chat.");
        return;
        }
        chatBox.style.display = 'flex';
        chatCircle.style.display = 'none';
        loadMessages();
    });

    closeChatButton.addEventListener('click', () => {
        chatBox.style.display = 'none';
        chatCircle.style.display = 'flex';
    });

    sendMessageButton.addEventListener('click', () => {
        const messageContent = messageInput.value;
        if (messageContent.trim()) {
            sendMessage(senderId, receiverId, messageContent);
            messageInput.value = '';
        }
    });

    function loadMessages() {
        fetch(`get_messages.php?sender_id=${senderId}&receiver_id=${receiverId}`)
            .then(response => response.json())
            .then(messages => {
                chatMessages.innerHTML = '';
                messages.forEach(message => {
                    const messageElement = document.createElement('div');
                    messageElement.classList.add('message');
                    if (message.sender_id == senderId) {
                        messageElement.style.cssText = 'padding: 10px; margin-bottom: 10px; border-radius: 10px; max-width: 60%; align-self: flex-end; background-color: #e1ffc7;';
                        messageElement.textContent = `${message.message_content} :You`;
                    } else {
                        messageElement.style.cssText = 'padding: 10px; margin-bottom: 10px; border-radius: 10px; max-width: 60%; align-self: flex-start; background-color: #f1f1f1;';
                        messageElement.textContent = `Admin: ${message.message_content}`;
                    }
                    chatMessages.appendChild(messageElement);
                });
                chatMessages.scrollTop = chatMessages.scrollHeight;
            });
            // .catch(error => console.error('Error fetching messages:', error));
    }

    function sendMessage(senderId, receiverId, messageContent) {
        fetch('send_message.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: `sender_id=${senderId}&receiver_id=${receiverId}&message_content=${messageContent}`
        })
        .then(response => response.json())
        .then(data => {
            if (data.status === 'success') {
                const messageElement = document.createElement('div');
                messageElement.style.cssText = 'padding: 10px; margin-bottom: 10px; border-radius: 10px; max-width: 60%; align-self: flex-start; background-color: #e1ffc7;';
                messageElement.textContent = `You: ${messageContent}`;
                chatMessages.appendChild(messageElement);
                chatMessages.scrollTop = chatMessages.scrollHeight;
            } else {
                alert(data.message);
            }
        });
        // .catch(error => console.error('Error sending message:', error));
    }
});
</script>

<script src="assets/js/jquery-2.2.4.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="https://js.stripe.com/v2/"></script>
<script src="assets/js/megamenu.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/owl.animate.js"></script>
<script src="assets/js/jquery.bxslider.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/rating.js"></script>
<script src="assets/js/jquery.touchSwipe.min.js"></script>
<script src="assets/js/bootstrap-touch-slider.js"></script>
<script src="assets/js/select2.full.min.js"></script>
<script src="assets/js/custom.js"></script>
<script>
	function confirmDelete()
	{
	    return confirm("Chắc chắn bạn muốn xóa dữ liệu này?");
	}
	$(document).ready(function () {
		advFieldsStatus = $('#advFieldsStatus').val();

		$('#paypal_form').hide();
		$('#stripe_form').hide();
		$('#bank_form').hide();

        $('#advFieldsStatus').on('change',function() {
            advFieldsStatus = $('#advFieldsStatus').val();
            if ( advFieldsStatus == '' ) {
            	$('#paypal_form').hide();
				$('#stripe_form').hide();
				$('#bank_form').hide();
            } else if ( advFieldsStatus == 'PayPal' ) {
               	$('#paypal_form').show();
				$('#stripe_form').hide();
				$('#bank_form').hide();
            } else if ( advFieldsStatus == 'Stripe' ) {
               	$('#paypal_form').hide();
				$('#stripe_form').show();
				$('#bank_form').hide();
            } else if ( advFieldsStatus == 'Bank ' ) {
            	$('#paypal_form').hide();
				$('#stripe_form').hide();
				$('#bank_form').show();
            }
        });
	});


	$(document).on('submit', '#stripe_form', function () {
        // createToken returns immediately - the supplied callback submits the form if there are no errors
        $('#submit-button').prop("disabled", true);
        $("#msg-container").hide();
        Stripe.card.createToken({
            number: $('.card-number').val(),
            cvc: $('.card-cvc').val(),
            exp_month: $('.card-expiry-month').val(),
            exp_year: $('.card-expiry-year').val()
            // name: $('.card-holder-name').val()
        }, stripeResponseHandler);
        return false;
    });
    Stripe.setPublishableKey('<?php echo $stripe_public_key; ?>');
    function stripeResponseHandler(status, response) {
        if (response.error) {
            $('#submit-button').prop("disabled", false);
            $("#msg-container").html('<div style="color: red;border: 1px solid;margin: 10px 0px;padding: 5px;"><strong>Error:</strong> ' + response.error.message + '</div>');
            $("#msg-container").show();
        } else {
            var form$ = $("#stripe_form");
            var token = response['id'];
            form$.append("<input type='hidden' name='stripeToken' value='" + token + "' />");
            form$.get(0).submit();
        }
    }
</script>
<?php echo $before_body; ?>
</body>
</html>