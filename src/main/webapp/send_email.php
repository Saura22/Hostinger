<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $to = "saurabhpatilsp7171@gmail.com"; // Your email
    $name = strip_tags(trim($_POST["name"]));
    $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
    $subject = strip_tags(trim($_POST["subject"]));
    $message = trim($_POST["message"]);
    
    $email_content = "Name: $name\n";
    $email_content .= "Email: $email\n";
    $email_content .= "Subject: $subject\n\n";
    $email_content .= "Message:\n$message\n";
    
    $headers = "From: $name <$email>";
    
    if (mail($to, "New Contact Message: $subject", $email_content, $headers)) {
        echo "<script>alert('Message sent successfully!'); window.location.href='contact.html';</script>";
    } else {
        echo "<script>alert('Error sending message. Please try again.'); window.location.href='contact.html';</script>";
    }
} else {
    http_response_code(403);
    echo "There was a problem with your submission.";
}
?>
