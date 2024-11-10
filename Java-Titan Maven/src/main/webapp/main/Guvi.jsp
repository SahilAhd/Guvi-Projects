<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Green Technology Marketplace - Your source for eco-friendly products and sustainable tech solutions.">
  <title>2 Green Technology Marketplace</title>
  <style>
    /* General Styles */
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f5f5; /* Light mode background */
      color: #333; /* Light mode text color */
      transition: background-color 0.3s, color 0.3s;
    }

    /* Dark Mode Styles */
    body.dark-mode {
      background-color: #121212;
      color: #ffffff;
    }

    /* Container */
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }
    /* Navigation Bar */
    .navbar {
    background-color: #00796b;
    position: relative;
    top: 0;
    width: 100%;
    z-index: 1000;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    animation: slideDown 0.5s ease-in-out;
}

body.dark-mode .navbar {
    background-color: #004d40;
}

@keyframes slideDown {
    from {
        opacity: 0;
        transform: translateY(-50px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
.container1 {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
}
.container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
}

.logo {
    color: #fff;
    font-size: 1.8rem;
    text-decoration: none;
    font-weight: bold;
    width: 40%; /* Ensure the logo takes 40% of the container's width */
}

.nav-menu {
    list-style: none;
    display: flex;
    gap: 20px;
    width: 60%; /* Ensure the nav menu takes 60% of the container's width */
    justify-content: flex-end; /* Align menu items to the right */
}

.nav-item {
    color: #fff;
    text-decoration: none;
    padding: 10px 15px;
    transition: all 0.3s;
    font-weight: 500;
}
    .nav-item:hover {
      background-color: #004d40;
      border-radius: 5px;
      transform: scale(1.05);
    }

    .theme-toggle {
      background: none;
      border: none;
      color: #fff;
      font-size: 1.5rem;
      cursor: pointer;
      transition: transform 0.3s;
    }

    .theme-toggle:hover {
      transform: rotate(360deg);
    }
    
.notification-bell {
    position: relative;
    width: 30px;
    height: 30px;
    cursor: pointer;
}

.notification-bell img {
    width: 100%;
    height: auto;
}

.notification-count {
    position: absolute;
    top: -5px;
    right: -10px;
    background-color: red;
    color: white;
    border-radius: 50%;
    padding: 2px 6px;
    font-size: 12px;
}

    /* Header Section */
    .header {
      background-image: url('background.webp');
      background-size: cover;
      background-position: center;
      padding: 50px 2px;
      text-align: center;
      background-color: #e0f2f1;
      animation: fadeIn 1s ease-in-out;
    }

    .header-content h1 {
      font-size: 3rem;
      margin-bottom: 15px;
      color: #00796b;
      animation: bounceIn 1s ease;
    }

    .header-content p {
      font-size: 1.2rem;
      max-width: 700px;
      margin: 0 auto;
      color: white;
    }

    .cta-btn {
      display: inline-block;
      margin-top: 20px;
      padding: 10px 20px;
      background-color: #00796b;
      color: #fff;
      border-radius: 5px;
      text-decoration: none;
      font-weight: 600;
      transition: background-color 0.3s, transform 0.3s;
    }

    .cta-btn:hover {
      background-color: #004d40;
      transform: scale(1.1);
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    @keyframes bounceIn {
      0% {
        transform: scale(0.8);
        opacity: 0.5;
      }
      60% {
        transform: scale(1.1);
        opacity: 1;
      }
      100% {
        transform: scale(1);
        opacity: 1;
      }
    }

    /* Products Section */
    .products-section {
        text-align: center;
      padding: 60px 20px;
      background-color: #fff;
    }

    .product-grid {
      display: flex;
      gap: 20px;
      justify-content: space-around;
    }

    .product-item {
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 15px;
      text-align: center;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    .product-item img {
      width: 100%;
      height: auto;
      border-radius: 5px;
    }

    .buy-btn {
      background-color: #00796b;
      color: #fff;
      border: none;
      padding: 10px 15px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    .buy-btn:hover {
      background-color: #004d40;
    }

    /* Blog Section */
    .blog-section {
        text-align: center;
      padding: 60px 20px;
      background-color: #f5f5f5;
    }
    .blog-grid {
      display: flex;
      gap: 20px;
      justify-content: space-around;
    }

    .blog-item {
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 15px;
      text-align: center;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    /* Contact Section */
    .contact-section {
      text-align: center;
      padding: 60 20px;
      background-color: #fff;
    }

    .contact-section form {
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .contact-section input,
    .contact-section textarea {
      text-align: center;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .contact-section button {
      background-color: #00796b;
      color: #fff;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
    }

    /* Cart Icon */
    .cart-icon {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: white;/* Background color for cart icon*/
      border-radius: 50%;
      padding: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .cart-icon img {
      width: 40px; /* Adjust the size of the cart icon */
    }

    #cart-count {
      position: absolute;
      top: -5px;
      right: -5px;
      background-color: #ff0000; /* Red background for cart count */
      color: #fff;
      border-radius: 50%;
      padding: 2px 5px;
      font-size: 12px;
    }

    /* Footer */
    .footer {
      background-color: #00796b;
      color: #fff;
      text-align: center;
      padding: 15px 0;
    }
  </style>
</head>
<body>
  <!-- Navigation Bar -->
<nav class="navbar">
  <div class="container">
      <a href="#home" class="logo">Green Tech Marketplace</a>
      <ul class="nav-menu">
          <li><a href="#home" class="nav-item">Home</a></li>
          <li><a href="#products" class="nav-item">Products</a></li>
          <li><a href="educatinal.html" class="nav-item">Blog</a></li>
          <li><a href="#contact" class="nav-item">Contact</a></li>
          <li class="nav-item">SignUp</li>
          <li class="nav-item">Login</li>
          <li><a href="setting.html" class="nav-item">Settings</a></li>
      </ul>
      <p>&nbsp; &nbsp; &nbsp; &nbsp;</p>
      <button id="theme-toggle" class="theme-toggle">🌙</button>
      <p>&nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; </p>
      <div class="notification-bell" onclick="clearNotifications()">
        <img src="notification.png" alt="Notification Bell">
        <span class="notification-count" id="notificationCount">3</span>
    </div>
  </div>
</nav>


  <!-- Header Section -->
  <header class="header" id="home">
    <div class="header-content">
      <h1>Empowering Sustainable Choices</h1>
      <p>Discover eco-friendly products and green solutions to reduce your carbon footprint.</p>
      <a href="#products" class="cta-btn">Explore Products</a>
    </div>
  </header>

  <!-- Featured Products Section -->
  <section class="products-section" id="products">
    <div class="container1">
      <h2>Our Featured Products</h2>
      <div class="product-grid">
        <div class="product-item">
          <img src="solar panel.png" alt="Solar Panel">
          <h3>Solar Panels</h3>
          <p>Maximize energy savings with our high-efficiency solar panels.</p>
          <button class="buy-btn" onclick="addToCart('Solar Panels')">Buy Now</button>
        </div>
        <div class="product-item">
          <img src="E-Bike.png" alt="Electric Bike">
          <h3>Electric Bikes</h3>
          <p>Reduce emissions and commute with our eco-friendly electric bikes.</p>
          <button class="buy-btn" onclick="addToCart('Electric Bikes')">Buy Now</button>
        </div>
        <div class="product-item">
          <img src="juta bag.png" alt="Juta Bag">
          <h3>Jute bag</h3>
          <p>jute bag is a durable, eco-friendly bag made from natural jute fibers</p>
          <button class="buy-btn" onclick="addToCart('LED Lighting')">Buy Now</button>
        </div>
      </div>
    </div>
  </section>

  <!-- Blog Section -->
  <section class="blog-section" id="blog">
    <div class="container1">
      <h2>Latest from Our Blog</h2>
      <div class="blog-grid">
        <div class="blog-item">
          <h3>5 Tips for Going Green</h3>
          <p>Learn practical steps to reduce your carbon footprint at home.</p>
          <a href="#" class="nav-item1">Read More</a>
        </div>
        <div class="blog-item">
          <h3>Innovative Green Technologies</h3>
          <p>Explore the latest advancements in sustainable technology.</p>
          <a href="#" class="nav-item1">Read More</a>
        </div>
        <div class="blog-item">
          <h3>Benefits of Renewable Energy</h3>
          <p>Understand the advantages of switching to renewable energy sources.</p>
          <a href="#" class="nav-item1">Read More</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Contact Section -->
  <section class="contact-section" id="contact">
    <div class="container1">
      <h2>Get in Touch</h2>
      <form>
        <input type="text" placeholder="Your Name" required>
        <input type="email" placeholder="Your Email" required>
        <textarea rows="5" placeholder="Your Message" required></textarea>
        <button type="submit">Send Message</button>
      </form>
    </div>
  </section>

  <!-- Cart Icon -->
  <div class="cart-icon" onclick="viewCart()">
    <img src="cart.png" alt="Cart Icon">
    <span id="cart-count">0</span>
  </div>

  <!-- Footer -->
  <footer class="footer">
    <p>&copy; java Titans 2024 Green Technology Marketplace. All Rights Reserved.</p>
  </footer>

  <script>
    // Theme Toggle Functionality
    const themeToggleButton = document.getElementById('theme-toggle');
    themeToggleButton.addEventListener('click', () => {
      document.body.classList.toggle('dark-mode');
      themeToggleButton.innerText = document.body.classList.contains('dark-mode') ? '🌞' : '🌙';
    });

    // Cart Functionality
    let cartCount = 0;

    function addToCart(product) {
      cartCount++;
      document.getElementById('cart-count').innerText = cartCount;
      alert(`${product} has been added to your cart!`);
    }

    function viewCart() {
      alert('Viewing cart with ' + cartCount + ' items.');
    }

    // Notification bell
    function clearNotifications() {
    const notificationCount = document.getElementById('notificationCount');
    notificationCount.textContent = '0';
    notificationCount.style.backgroundColor = 'transparent';
}

  </script>
</body>
</html>
