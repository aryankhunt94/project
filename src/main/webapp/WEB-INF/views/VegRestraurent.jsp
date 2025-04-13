<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PocketBuddy-Veg Restaurant</title>
    <!-- Fontawesome CDN Link For Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: #f9f9f9;
            color: #333;
            line-height: 1.6;
            overflow-x: hidden;
        }

        .section-title {
            font-size: 2.8rem;
            color: #28a745;
            margin-bottom: 2rem;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        /* Header */
        .hero {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), 
                        url('https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80');
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            padding: 0 20px;
        }

        .hero-content h1 {
            font-size: 4.5rem;
            margin-bottom: 1.5rem;
            animation: fadeInDown 1s ease;
        }

        .hero-content p {
            font-size: 1.8rem;
            margin-bottom: 2.5rem;
            animation: fadeInUp 1s ease;
        }

        .cta-btn {
            background: #28a745;
            color: white;
            padding: 15px 40px;
            border-radius: 30px;
            font-size: 1.2rem;
            transition: all 0.3s ease;
            animation: fadeIn 1.5s ease;
        }

        .cta-btn:hover {
            background: #218838;
            transform: translateY(-3px);
        }

        /* Features Section */
        .features {
            padding: 5rem 2rem;
            background: white;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .feature-card {
            text-align: center;
            padding: 2rem;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-10px);
        }

        .feature-icon {
            font-size: 3rem;
            color: #28a745;
            margin-bottom: 1rem;
        }

        /* Menu Section */
        .menu {
            padding: 5rem 2rem;
            background: #f9f9f9;
        }

        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .menu-item {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .menu-item:hover {
            transform: translateY(-10px);
        }

        .menu-img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .menu-content {
            padding: 1.5rem;
        }

        .price {
            color: #28a745;
            font-size: 1.4rem;
            font-weight: 600;
        }

        /* Testimonials Section */
        .testimonials {
            padding: 5rem 2rem;
            background: white;
        }

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .testimonial-card {
            background: #f9f9f9;
            padding: 2rem;
            border-radius: 15px;
            position: relative;
        }

        .testimonial-text {
            font-style: italic;
            margin-bottom: 1rem;
        }

        .customer-name {
            color: #28a745;
            font-weight: 600;
        }

        /* Chef Section */
        .chefs {
            padding: 5rem 2rem;
            background: #f9f9f9;
        }

        .chef-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .chef-card {
            text-align: center;
            background: white;
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .chef-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 1rem;
        }

        /* Contact Section */
        .contact {
            padding: 5rem 2rem;
            background: white;
        }

        .contact-wrapper {
            max-width: 800px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 1rem;
            margin-bottom: 1.5rem;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .submit-btn {
            background: #28a745;
            color: white;
            padding: 1rem 2rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .submit-btn:hover {
            background: #218838;
        }

        /* Footer */
        footer {
            background: #333;
            color: white;
            padding: 3rem 2rem;
            text-align: center;
        }

        /* Animations */
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .contact-wrapper {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>PocketBuddy</h1>
            <p>Experience Premium Vegetarian Cuisine</p>
            <a href="#menu" class="cta-btn">Explore Menu</a>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <h2 class="section-title">Why Choose Us</h2>
        <div class="features-grid">
            <div class="feature-card">
                <i class="fas fa-leaf feature-icon"></i>
                <h3>100% Organic</h3>
                <p>Fresh ingredients from local farms</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-award feature-icon"></i>
                <h3>Award Winning</h3>
                <p>Recognized for culinary excellence</p>
            </div>
            <div class="feature-card">
                <i class="fas fa-clock feature-icon"></i>
                <h3>Fast Delivery</h3>
                <p>Within 30 minutes guaranteed</p>
            </div>
        </div>
    </section>

    <!-- Menu Section -->
    <section class="menu" id="menu">
        <h2 class="section-title">Our Specialties</h2>
        <div class="menu-grid">
            <!-- Repeat this block for each menu item -->
            <div class="menu-item">
                <img src="https://images.unsplash.com/photo-1540189549336-e6e99c3679fe" class="menu-img" alt="Dish 1">
                <div class="menu-content">
                    <h3>Veggie Delight</h3>
                    <p>Fresh vegetables with signature spices</p>
                    <p class="price">$12.99</p>
                </div>
            </div>
            <!-- Add more menu items here -->
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials">
        <h2 class="section-title">What People Say</h2>
        <div class="testimonial-grid">
            <div class="testimonial-card">
                <p class="testimonial-text">"The best vegetarian experience I've ever had!"</p>
                <p class="customer-name">- Sarah Johnson</p>
            </div>
            <!-- Add more testimonials -->
        </div>
    </section>

    <!-- Chefs Section -->
    <section class="chefs">
        <h2 class="section-title">Our Master Chefs</h2>
        <div class="chef-grid">
            <div class="chef-card">
                <img src="https://images.unsplash.com/photo-1581299894007-aaa50297cf16" class="chef-img" alt="Chef 1">
                <h3>Chef Arjun Patel</h3>
                <p>Head Chef</p>
            </div>
            <!-- Add more chefs -->
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact">
        <h2 class="section-title">Get In Touch</h2>
        <div class="contact-wrapper">
            <form class="contact-form">
                <input type="text" placeholder="Name" required>
                <input type="email" placeholder="Email" required>
                <textarea rows="5" placeholder="Message" required></textarea>
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
            <div class="contact-info">
                <p><i class="fas fa-map-marker-alt"></i> 123 Green Street, Food City</p>
                <p><i class="fas fa-phone"></i> +1 (555) 123-4567</p>
                <p><i class="fas fa-envelope"></i> info@greenbites.com</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 PocketBuddy. All rights reserved.</p>
    </footer>
</body>
</html>