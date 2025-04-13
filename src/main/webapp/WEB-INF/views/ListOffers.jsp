<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Offers & Deals</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary-color: #333;
            --secondary-color: #f8f9fa;
            --accent-color: #ff4757;
            --text-color: #333;
            --light-text: #6c757d;
            --border-color: #dee2e6;
            --card-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            --hover-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background-color: #f8f9fa;
            color: var(--text-color);
        }
        
        /* Header Styles */
        .header {
            background-color: #000;
            color: white;
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .logo {
            display: flex;
            align-items: center;
            font-size: 24px;
            font-weight: 700;
        }
        
        .logo i {
            margin-right: 10px;
            font-size: 28px;
        }
        
        /* Main Container */
        .main-container {
            display: flex;
            min-height: calc(100vh - 70px);
        }
        
        /* Sidebar Styles */
        .sidebar {
            width: 280px;
            background-color: white;
            padding: 25px;
            height: calc(100vh - 70px);
            position: fixed;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.05);
            overflow-y: auto;
        }
        
        .sidebar h2 {
            font-size: 22px;
            margin-bottom: 25px;
            font-weight: 600;
            color: var(--primary-color);
            border-bottom: 2px solid var(--border-color);
            padding-bottom: 10px;
        }
        
        .filter-group {
            margin-bottom: 20px;
        }
        
        .filter-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--text-color);
        }
        
        .filter-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid var(--border-color);
            border-radius: 5px;
            background-color: white;
            font-size: 14px;
            color: var(--text-color);
        }
        
        .filter-group select:focus {
            outline: none;
            border-color: var(--accent-color);
            box-shadow: 0 0 0 2px rgba(255, 71, 87, 0.2);
        }
        
        .discount-filters {
            margin-top: 15px;
        }
        
        .discount-btn {
            display: flex;
            align-items: center;
            width: 100%;
            padding: 10px 15px;
            margin-bottom: 10px;
            border: 1px solid var(--border-color);
            border-radius: 5px;
            background-color: white;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .discount-btn.active {
            background-color: var(--accent-color);
            color: white;
            border-color: var(--accent-color);
        }
        
        .discount-btn:hover:not(.active) {
            background-color: var(--secondary-color);
        }
        
        .discount-btn i {
            margin-right: 10px;
        }
        
        /* Content Styles */
        .content {
            flex: 1;
            margin-left: 280px;
            padding: 25px;
        }
        
        .page-title {
            font-size: 28px;
            margin-bottom: 25px;
            font-weight: 600;
            color: var(--primary-color);
        }
        
        .offers-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
        }
        
        .offer-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        
        .offer-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--hover-shadow);
        }
        
        .offer-image {
            height: 180px;
            overflow: hidden;
            position: relative;
        }
        
        .offer-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        
        .offer-card:hover .offer-image img {
            transform: scale(1.05);
        }
        
        .discount-badge {
            position: absolute;
            top: 15px;
            right: 15px;
            background-color: var(--accent-color);
            color: white;
            padding: 5px 12px;
            border-radius: 5px;
            font-weight: 600;
            font-size: 14px;
        }
        
        .offer-details {
            padding: 20px;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }
        
        .restaurant-name {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 10px;
            color: var(--primary-color);
        }
        
        .offer-description {
            color: var(--light-text);
            margin-bottom: 15px;
            line-height: 1.5;
            flex-grow: 1;
        }
        
        .promo-code {
            background-color: var(--secondary-color);
            padding: 10px 15px;
            border-radius: 5px;
            font-weight: 500;
            color: var(--accent-color);
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .promo-code:hover {
            background-color: #eee;
        }
        
        .promo-code i {
            color: #999;
        }
        
        .offer-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 15px;
            color: var(--light-text);
            font-size: 14px;
        }
        
        .location {
            display: flex;
            align-items: center;
        }
        
        .location i {
            margin-right: 5px;
            color: var(--accent-color);
        }
        
        .claim-btn {
            background-color: var(--accent-color);
            color: white;
            border: none;
            padding: 12px 0;
            border-radius: 5px;
            font-weight: 500;
            cursor: pointer;
            width: 100%;
            margin-top: 15px;
            transition: background-color 0.3s ease;
            text-align: center;
            text-decoration: none;
            display: block;
        }
        
        .claim-btn:hover {
            background-color: #ff3040;
            color: white;
        }
        
        /* Responsive Styles */
        @media (max-width: 992px) {
            .sidebar {
                width: 240px;
            }
            .content {
                margin-left: 240px;
            }
        }
        
        @media (max-width: 768px) {
            .main-container {
                flex-direction: column;
            }
            .sidebar {
                width: 100%;
                height: auto;
                position: static;
                margin-bottom: 20px;
            }
            .content {
                margin-left: 0;
            }
            .offers-grid {
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            }
        }
        
        /* Mobile menu button */
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 24px;
            cursor: pointer;
        }
        
        @media (max-width: 768px) {
            .mobile-menu-btn {
                display: block;
            }
            .sidebar {
                display: none;
            }
            .sidebar.active {
                display: block;
            }
        }
        
        /* Get random restaurant images */
        .restaurant-1 { background-image: url('https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'); }
        .restaurant-2 { background-image: url('https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'); }
        .restaurant-3 { background-image: url('https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'); }
        .restaurant-4 { background-image: url('https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'); }
        .restaurant-5 { background-image: url('https://images.unsplash.com/photo-1559339352-11d035aa65de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'); }
        
        .bg-image {
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div class="logo">
                    <i class="fas fa-utensils"></i>
                    <span ><a href="home" style="color:white; text-decoration:none;">PocketBuddy</a></span>
                </div>
                <button class="mobile-menu-btn" id="mobile-menu-toggle">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
        </div>
    </header>

    <div class="main-container">
        <!-- Sidebar with filters -->
        <div class="sidebar" id="sidebar">
            <h2>Find Offers</h2>
            
            <!-- City dropdown -->
            <div class="filter-group">
                <label for="city-select">City</label>
                <select id="city-select" onchange="filterOffers()">
                    <option value="">Select City</option>     
                    <option value="Delhi">Delhi</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="Bangalore">Bangalore</option>
                    <option value="Hyderabad">Hyderabad</option>
                    <option value="Chennai">Chennai</option>
                </select>
            </div>
            
            <!-- Area dropdown -->
            <div class="filter-group">
                <label for="area-select">Area</label>
                <select id="area-select" onchange="filterOffers()">
                    <option value="">Select Area</option>
                    <option value="South Delhi">South Delhi</option>
                    <option value="North Delhi">North Delhi</option>
                    <option value="West Mumbai">West Mumbai</option>
                    <option value="Central Bangalore">Central Bangalore</option>
                    <option value="North Hyderabad">North Hyderabad</option>
                </select>
            </div>
            
            <!-- Offer type dropdown -->
            <div class="filter-group">
                <label for="offer-select">Offer Type</label>
                <select id="offer-select" onchange="filterOffers()">
                    <option value="">All Offers</option>
                    <option value="Discount">Discount</option>
                    <option value="Buffet">Buffet</option>
                    <option value="Combo">Combo Deals</option>
                    <option value="Happy Hour">Happy Hour</option>
                </select>
            </div>
            
            <!-- Discount filter buttons -->
            <div class="filter-group">
                <label>Discount Percentage</label>
                <div class="discount-filters">
                    <button class="discount-btn active" data-discount="all" onclick="filterByDiscount('all')">
                        <i class="fas fa-percentage"></i> All Offers
                    </button>
                    <button class="discount-btn" data-discount="50" onclick="filterByDiscount('50')">
                        <i class="fas fa-tags"></i> 50% Off
                    </button>
                    <button class="discount-btn" data-discount="25" onclick="filterByDiscount('25')">
                        <i class="fas fa-tags"></i> 25% Off
                    </button>
                    <button class="discount-btn" data-discount="10" onclick="filterByDiscount('10')">
                        <i class="fas fa-tags"></i> 10% Off
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Main content -->
        <div class="content">
            <h1 class="page-title">Best Restaurant Offers & Deals</h1>
            
            <div class="offers-grid">
                <c:forEach items="${offerlist}" var="o" varStatus="status">
                    <div class="offer-card" data-discount="${o.discount}" data-area="${o.area}">
                        <div class="offer-image">
                            <div class="bg-image restaurant-${(status.index % 5) + 1}" style="width: 100%; height: 100%;"></div>
                            <div class="discount-badge">${o.discount}% OFF</div>
                        </div>
                        <div class="offer-details">
                            <h3 class="restaurant-name">${o.restaurantName}</h3>
                            <p class="offer-description">${o.description}</p>
                            <div class="promo-code">
                                <span>${o.couponCode}</span>
                                <i class="fas fa-copy" onclick="copyToClipboard('${o.couponCode}')"></i>
                            </div>
                            <div class="offer-meta">
                                <div class="location">
                                    <i class="fas fa-map-marker-alt"></i>
                                    <span>${o.area}</span>
                                </div>
                                <div class="validity">Valid till: ${o.validTill}</div>
                            </div>
                            <a href="#" class="claim-btn">Claim Offer</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        // Mobile menu toggle
        document.getElementById('mobile-menu-toggle').addEventListener('click', function() {
            document.getElementById('sidebar').classList.toggle('active');
        });
        
        // Copy coupon code to clipboard
        function copyToClipboard(text) {
            const textarea = document.createElement('textarea');
            textarea.value = text;
            document.body.appendChild(textarea);
            textarea.select();
            document.execCommand('copy');
            document.body.removeChild(textarea);
            
            // Show copied notification
            alert('Coupon code ' + text + ' copied to clipboard!');
        }
        
        // Filter offers by discount
        function filterByDiscount(discount) {
            // Update active button
            const buttons = document.querySelectorAll('.discount-btn');
            buttons.forEach(btn => {
                btn.classList.remove('active');
                if (btn.getAttribute('data-discount') === discount) {
                    btn.classList.add('active');
                }
            });
            
            // Filter cards
            const cards = document.querySelectorAll('.offer-card');
            cards.forEach(card => {
                if (discount === 'all' || card.getAttribute('data-discount') === discount) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
        
        // Filter offers by dropdown selections
        function filterOffers() {
            const cityValue = document.getElementById('city-select').value;
            const areaValue = document.getElementById('area-select').value;
            const offerValue = document.getElementById('offer-select').value;
            
            const cards = document.querySelectorAll('.offer-card');
            cards.forEach(card => {
                const cardArea = card.getAttribute('data-area');
                
                // Check if area matches (if area is selected)
                const areaMatch = !areaValue || cardArea.includes(areaValue);
                
                // Check if city matches (if city is selected)
                const cityMatch = !cityValue || cardArea.includes(cityValue);
                
                // For offer type, we would need to add data attributes to the cards
                // This is a simplified version
                if (areaMatch && cityMatch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
    </script>
</body>
</html>