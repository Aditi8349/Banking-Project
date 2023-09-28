
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bank Project Homepage</title>
  <style>
      body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  line-height: 1.6;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

header {
  background-color: #1a1a1a;
  color: #fff;
  text-align: center;
  padding: 10px 0;
}

header h1 {
  margin: 0;
  font-size: 30px;
}

main {
  padding: 40px 0;
}

.hero {
  text-align: center;
}

.hero h2 {
  font-size: 36px;
  margin-bottom: 20px;
}

.hero p {
  font-size: 18px;
  color: #555;
  max-width: 600px;
  margin: 0 auto 30px;
}

.btn {
  display: inline-block;
  background-color: #007bff;
  color: #fff;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
}

.features {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}

.feature {
  text-align: center;
  max-width: 300px;
  margin: 20px;
}

.feature h3 {
  margin-top: 10px;
  font-size: 24px;
}

.icon {
  font-size: 40px;
  margin-bottom: 10px;
}

footer {
  text-align: center;
  background-color: #f1f1f1;
  padding: 10px 0;
}

  </style>
</head>
<body>
  <header>
    <div class="container">
      <h1>Welcome to MyBank</h1>
      <!-- Add any other header content like navigation, user profile, etc. -->
    </div>
  </header>

  <main>
    <div class="container">
      <section class="hero">
        <h2>Modern Banking for Everyone</h2>
        <p>Open an account with us and enjoy seamless banking services.</p>
        <a href="Login.jsp" class="btn">Get Started</a>
      </section>

      <section class="features">
        <div class="feature">
          <i class="icon fas fa-credit-card"></i>
          <h3>Easy Payments</h3>
          <p>Make quick and secure payments online and in-store.</p>
        </div>
        <div class="feature">
          <i class="icon fas fa-money-check-alt"></i>
          <h3>Savings Accounts</h3>
          <p>Grow your savings with high-interest savings accounts.</p>
        </div>
        <div class="feature">
          <i class="icon fas fa-mobile-alt"></i>
          <h3>Mobile Banking</h3>
          <p>Bank on the go with our user-friendly mobile app.</p>
        </div>
      </section>
    </div>
  </main>

  <footer>
    <div class="container">
      <p>&copy; 2023 MyBank. All rights reserved.</p>
      <a href="#">Global Square,Patan Bypas,Raigwan Jabalpur,Madhya Pradesh 482002<a><br>
    </div>
  </footer>
</body>
</html>