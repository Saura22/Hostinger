<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Hostinger Checkout</title>
  <style>
    body {
      font-family: 'Segoe UI', 'Noto Sans', 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f4ff;
      color: #2e1065;
    }

    .container {
      max-width: 1200px;
      margin: 2rem auto;
      padding: 20px;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      flex-wrap: wrap;
      gap: 2rem;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1.5rem 2rem;
    }

    .logo {
      font-weight: bold;
      font-size: 1.2rem;
    }

    .logo img {
      height: 20px;
      vertical-align: middle;
      margin-right: 5px;
    }

    .back-link {
      display: flex;
      align-items: center;
      color: #2e1065;
      text-decoration: none;
      font-weight: bold;
      margin-bottom: 1rem;
      font-size: 1rem;
    }

    .form-section,
    .summary-section {
      background: #fff;
      padding: 2rem;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }

    .form-section {
      margin-bottom: 2rem;
    }

    .form-group {
      display: flex;
      flex-direction: column;
      margin-bottom: 1.5rem;
    }

    label {
      margin-bottom: 5px;
      font-weight: 600;
    }

    input, select {
      padding: 10px;
      font-size: 1rem;
      border: 1px solid #ccc;
      border-radius: 6px;
    }

    .inline {
      display: flex;
      gap: 1rem;
    }

    .checkbox {
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .continue-btn {
      margin-top: 1.5rem;
      background-color: #6c3ef4;
      color: #fff;
      border: none;
      border-radius: 8px;
      padding: 12px 25px;
      font-size: 1rem;
      cursor: pointer;
      font-weight: bold;
    }

    .summary-section {
      flex: 1 1 300px;
    }

    .summary-section h3 {
      margin-bottom: 1rem;
    }

    .summary-line {
      display: flex;
      justify-content: space-between;
      margin: 0.5rem 0;
    }

    .price-strike {
      text-decoration: line-through;
      color: #999;
      font-size: 0.9rem;
    }

    .discount {
      color: green;
      font-weight: bold;
    }

    .total {
      font-size: 1.5rem;
      font-weight: bold;
      margin-top: 1rem;
    }

    .footer {
      text-align: center;
      margin-top: 2rem;
      font-size: 0.9rem;
      color: #777;
    }

    .guarantee {
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 0.5rem;
      margin-top: 1rem;
      color: #2e1065;
    }

    .step-title {
      display: flex;
      align-items: center;
      font-weight: bold;
      font-size: 1.1rem;
      margin-bottom: 1.5rem;
    }

    .step-number {
      background-color: #ede9fe;
      color: #6b21a8;
      border-radius: 50%;
      padding: 6px 10px;
      margin-right: 10px;
    }

    .coupon {
      color: #6c3ef4;
      font-weight: bold;
      cursor: pointer;
      margin-top: 0.5rem;
    }

    .left-column {
      display: flex;
      flex-direction: column;
      flex: 1 1 500px;
      gap: 2rem;
    }

    .image-box img {
      width: 100%;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }
  </style>
</head>
<body>

<header>
  <div class="logo">
    <img src="Images/icons8-adobe-creative-cloud.gif" alt="Hostinger" height="20">
    HOSTINGER
  </div>
  <div> <a href="#" style="color:#6c3ef4; font-weight:bold;">Log out</a></div>
</header>

<div class="container">

  <!-- Left Column -->
  <div class="left-column">

    <!-- Billing Form -->
    <div class="form-section">
     
      <div class="step-title"><span class="step-number">1</span>Billing address</div>
      <div class="inline">
        <div class="form-group">
          <label>First name *</label>
          <input type="text"  />
        </div>
        <div class="form-group">
          <label>Last name *</label>
          <input type="text"  />
        </div>
      </div>
      <div class="inline">
        <div class="form-group" style="flex: 1.2;">
          <label>Phone number</label>
          <select>
            <option>+91 (India)</option>
          </select>
        </div>
        <div class="form-group" style="flex: 2;">
          <label>&nbsp;</label>
          <input type="text"  />
        </div>
      </div>
      <div class="form-group">
        <label>Country of residence *</label>
        <select>
          <option>India</option>
        </select>
      </div>
      <div class="inline">
        <div class="form-group">
          <label>Address *</label>
          <input type="text" />
        </div>
        <div class="form-group">
          <label>City *</label>
          <input type="text" />
        </div>
      </div>
      <div class="inline">
        <div class="form-group">
          <label>State *</label>
          <select>
            <option>Maharashtra</option>
          </select>
        </div>
        <div class="form-group">
          <label>ZIP code *</label>
          <input type="text" />
        </div>
      </div>
      <div class="checkbox">
        <input type="checkbox" />
        <label>Add company details</label>
      </div>
      <button class="continue-btn">Continue</button>
    </div>

    <!-- Payment Section -->
    <div class="form-section" id="payment-section">
      <div class="step-title"><span class="step-number">2</span>Payment</div>
      <p>Instant pay:</p>
      <div style="border: 1px solid #e5e7eb; padding: 1rem; border-radius: 10px; margin-bottom: 1rem;">
        <div style="display: flex; justify-content: space-between; align-items: center;">
          <strong>Card</strong>
          <img src="https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png" alt="Card Logos" style="height: 20px;">
        </div>
        <a href="Domain Check.html" class="continue-btn" style="display: block; text-align: center; width: 90%; margin-top: 1rem; text-decoration: none;">
          Submit payment
        </a>
        <p style="color: #6c3ef4; font-size: 0.9rem; margin-top: 1rem;">🔒 Encrypted and secure payments</p>
        <p style="font-size: 0.9rem; color: #444;">
          By checking out you agree with our <a href="#">Terms of Service</a> and confirm that you have read our <a href="#">Privacy Policy</a>.
          You can cancel recurring payments at any time.
        </p>
      </div>
      <div style="margin-top: 2rem;">
        <img src="Images/Screenshot 2025-05-21 104204.png" alt="Payment Illustration" style="width: 100%; border-radius: 10px;" />
      </div>
    </div>
  </div>

  <!-- Order Summary -->
  <div class="summary-section">
    <h3>Order summary</h3>
    <div class="summary-line">
      <span>Premium Web Hosting</span>
    </div>
    <div class="summary-line">
      <span>48 months plan</span>
      <span><span class="price-strike">&#8377;28,752.00</span> &#8377;7,152.00</span>
    </div>
    <div class="summary-line">
      <span>3 extra months</span>
      <span><span class="price-strike">&#8377;1,797.00</span> &#8377;0.00</span>
    </div>
    <div class="summary-line">
      <span>Domain name</span>
      <span><span class="price-strike">&#8377;439.00</span> &#8377;0.00</span>
    </div>
    <div class="summary-line">
      <span>Domain privacy protection</span>
      <span>&#8377;0.00</span>
    </div>
    <hr>
    <div class="summary-line">
      <strong>Subtotal</strong>
      <strong><span class="price-strike">&#8377;30,988.00</span> &#8377;7,152.00</strong>
    </div>
    <div class="summary-line discount">
      <span>Discount 77%</span>
      <span>&#8377;23,836.00</span>
    </div>
    <div class="summary-line">
      <span>Taxes</span>
      <span></span>
    </div>
    <div class="total">
      Estimated total &#8377;7,152.00
    </div>
    <div class="coupon">Have a coupon code?</div>
    <div class="guarantee">
      🔒 30-day money-back guarantee
    </div>
  </div>
</div>

<div class="footer">
  © 2004–2025 hostinger.com | <a href="#">Terms of service</a> | <a href="#">Privacy policy</a>
</div>

<script>
  document.querySelector('.continue-btn').addEventListener('click', function (e) {
    e.preventDefault();

    // Collect all required inputs inside the billing section
    const billingSection = document.querySelector('.form-section');
    const requiredFields = billingSection.querySelectorAll('input[required], select[required]');

    let isValid = true;

    requiredFields.forEach(field => {
      if (!field.value.trim()) {
        field.style.border = '1px solid red';
        isValid = false;
      } else {
        field.style.border = '1px solid #ccc';
      }
    });

    if (!isValid) {
      alert("Please fill in all required fields before proceeding to payment.");
      return;
    }

    // Scroll to the payment section
    document.getElementById('payment-section').scrollIntoView({ behavior: 'smooth' });
  });
</script>

</body>
</html>
