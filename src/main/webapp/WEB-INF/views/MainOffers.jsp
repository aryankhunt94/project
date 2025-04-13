<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pocket-Buddy Restaurant Offers & Deals</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background-color: #f5f5f5;
            color: #333;
        }
        
        .main-container {
            display: flex;
            min-height: 100vh;
        }
        
        /* Header Styles */
        header {
            background-color: #000000;
            color: white;
            padding: 1rem 2rem;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            display: flex;
            align-items: center;
        }
        
        .logo i {
            margin-right: 10px;
            font-size: 2rem;
        }
        
        .header-actions {
            display: flex;
            gap: 15px;
        }
        
        .header-actions button {
            background-color: white;
            color: #000000;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        
        .header-actions button:hover {
            background-color: #f8f8f8;
            transform: translateY(-2px);
        }
        
        /* Sidebar Styles */
        .sidebar {
            width: 280px;
            background-color: white;
            padding: 2rem;
            margin-top: 70px;
            height: calc(100vh - 70px);
            position: fixed;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
        }
        
        .sidebar h2 {
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            color: #333333;
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 10px;
        }
        
        .filter-group {
            margin-bottom: 1.5rem;
        }
        
        .filter-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #555;
        }
        
        .filter-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: white;
            font-size: 1rem;
            color: #333;
            cursor: pointer;
        }
        
        .filter-group select:focus {
            outline: none;
            border-color: #333333;
            box-shadow: 0 0 0 2px rgba(51, 51, 51, 0.2);
        }
        
        .discount-filters {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-top: 20px;
        }
        
        .discount-btn {
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .discount-btn.active {
            background-color: #333333;
            color: white;
        }
        
        .discount-btn:not(.active) {
            background-color: #f0f0f0;
            color: #333;
        }
        
        .discount-btn:hover:not(.active) {
            background-color: #e0e0e0;
        }
        
        .discount-btn i {
            margin-right: 8px;
        }
        
        /* Content Styles */
        .content {
            flex: 1;
            margin-left: 280px;
            padding: 2rem;
            margin-top: 70px;
        }
        
        .page-title {
            font-size: 2rem;
            margin-bottom: 1.5rem;
            color: #333;
        }
        
        .offers-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }
        
        .offer-card {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        .offer-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
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
            background-color: #333333;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
            font-weight: 600;
            font-size: 1rem;
        }
        
        .offer-details {
            padding: 1.5rem;
        }
        
        .restaurant-name {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 8px;
            color: #333;
        }
        
        .offer-description {
            color: #666;
            margin-bottom: 15px;
            line-height: 1.5;
        }
        
        .offer-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 15px;
            color: #777;
            font-size: 0.9rem;
        }
        
        .location {
            display: flex;
            align-items: center;
        }
        
        .location i {
            margin-right: 5px;
            color: #333333;
        }
        
        .promo-code {
            background-color: #f5f5f5;
            padding: 8px 15px;
            border-radius: 4px;
            font-weight: 500;
            color: #333333;
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
        
        .claim-btn {
            background-color: #000000;
            color: white;
            border: none;
            padding: 10px 0;
            border-radius: 4px;
            font-weight: 500;
            cursor: pointer;
            width: 100%;
            margin-top: 15px;
            transition: background-color 0.3s ease;
        }
        
        .claim-btn:hover {
            background-color: #333333;
        }
        
        /* Responsive Styles */
        @media (max-width: 1024px) {
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
                margin-top: 70px;
                padding: 1rem;
            }
            .content {
                margin-left: 0;
                padding: 1rem;
            }
            .offers-grid {
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            }
            .header-actions {
                display: none;
            }
        }
        
        /* Mobile menu button */
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
        }
        
        @media (max-width: 768px) {
            .mobile-menu-btn {
                display: block;
            }
            .sidebar {
                display: none;
                transition: all 0.3s ease;
            }
            .sidebar.active {
                display: block;
            }
        }
        .logo span a{
           color:white !important;
           text-decoration:none;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">
            <i class="fas fa-utensils"></i>
            <span><a href="home">PocketBuddy</a></span>
        </div>
        
        <button class="mobile-menu-btn" id="mobile-menu-toggle">
            <i class="fas fa-bars"></i>
        </button>
    </header>

    <div class="main-container">
        <!-- Sidebar with filters -->
        <div class="sidebar" id="sidebar">
            <h2>Find Offers</h2>
            
            <!-- City dropdown -->
            <!-- <div class="filter-group">
                <label for="city-select">City</label>
                <select id="city-select">
                    <option value="">Select City</option>
                    <option value="delhi">Delhi</option>
                    <option value="mumbai">Mumbai</option>
                    <option value="bangalore">Bangalore</option>
                    <option value="hyderabad">Hyderabad</option>
                    <option value="chennai">Chennai</option>
                </select>
            </div> -->
            
            <div class="filter-group">
                <label for="city-select">City</label>
                <select id="city-select">
                    <option value="">Select City</option>
                    <c:forEach items="${allstate }" var="s">
                    
                    <option value="${offerId }">${city }</option>
                    
                    
                    </c:forEach>
                   
                </select>
            </div>
            <!-- Area dropdown -->
            <div class="filter-group">
                <label for="area-select">Area</label>
                <select id="area-select">
                    <option value="">Select Area</option>
                    <option value="south">South</option>
                    <option value="north">North</option>
                    <option value="east">East</option>
                    <option value="west">West</option>
                    <option value="central">Central</option>
                </select>
            </div>
            
            <!-- Offer type dropdown -->
            <div class="filter-group">
                <label for="offer-select">Offer Type</label>
                <select id="offer-select">
                    <option value="">All Offers</option>
                    <option value="discount">Discount</option>
                    <option value="buffet">Buffet</option>
                    <option value="combo">Combo Deals</option>
                    <option value="happy-hour">Happy Hour</option>
                </select>
            </div>
            
            <!-- Discount filter buttons -->
            <div class="filter-group">
                <label>Discount Percentage</label>
                <div class="discount-filters">
                    <button class="discount-btn active" data-discount="all">
                        <i class="fas fa-percentage"></i> All Offers
                    </button>
                    <button class="discount-btn" data-discount="50">
                        <i class="fas fa-tags"></i> 50% Off
                    </button>
                    <button class="discount-btn" data-discount="25">
                        <i class="fas fa-tags"></i> 25% Off
                    </button>
                    <button class="discount-btn" data-discount="10">
                        <i class="fas fa-tags"></i> 10% Off
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Main content -->
        <div class="content">
            <h1 class="page-title">Best Restaurant Offers & Deals</h1>
            
            <div class="offers-grid">
                <!-- Offer Card 1 -->
                <div class="offer-card" data-discount="50" data-city="delhi" data-area="south">
                    <div class="offer-image">
                        <img src="https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="Restaurant">
                        <div class="discount-badge">50% OFF</div>
                    </div>
                    <div class="offer-details">
                        <h3 class="restaurant-name">Spice Garden</h3>
                        <p class="offer-description">Enjoy 50% off on all main course dishes. Valid on weekdays only.</p>
                        <div class="promo-code">
                            <span>SPICE50</span>
                            <i class="fas fa-copy"></i>
                        </div>
                        <div class="offer-meta">
                            <div class="location">
                                <i class="fas fa-map-marker-alt"></i>
                                <span>South Delhi</span>
                            </div>
                            <div class="validity">Valid till: 30 Apr</div>
                        </div>
                        <button class="claim-btn">Claim Offer</button>
                    </div>
                </div>
                
                <!-- Offer Card 2 -->
                <div class="offer-card" data-discount="25" data-city="mumbai" data-area="west">
                    <div class="offer-image">
                        <img src="https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="Restaurant">
                        <div class="discount-badge">25% OFF</div>
                    </div>
                    <div class="offer-details">
                        <h3 class="restaurant-name">Ocean Blue</h3>
                        <p class="offer-description">25% off on seafood platters and cocktails. Perfect for dinner dates!</p>
                        <div class="promo-code">
                            <span>BLUE25</span>
                            <i class="fas fa-copy"></i>
                        </div>
                        <div class="offer-meta">
                            <div class="location">
                                <i class="fas fa-map-marker-alt"></i>
                                <span>West Mumbai</span>
                            </div>
                            <div class="validity">Valid till: 15 May</div>
                        </div>
                        <button class="claim-btn">Claim Offer</button>
                    </div>
                </div>
                
                <!-- Offer Card 3 -->
                <div class="offer-card" data-discount="10" data-city="bangalore" data-area="central">
                    <div class="offer-image">
                        <img src="https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60" alt="Restaurant">
                        <div class="discount-badge">10% OFF</div>
                    </div>
                    <div class="offer-details">
                        <h3 class="restaurant-name">Café Italiano</h3>
                        <p class="offer-description">10% off on all pasta and pizza orders. Additional 5% off on takeaway.</p>
                        <div class="promo-code">
                            <span>PASTA10</span>
                            <i class="fas fa-copy"></i>
                        </div>
                        <div class="offer-meta">
                            <div class="location">
                                <i class="fas fa-map-marker-alt"></i>
                                <span>Central Bangalore</span>
                            </div>
                            <div class="validity">Valid till: 10 Jun</div>
                        </div>
                        <button class="claim-btn">Claim Offer</button>
                    </div>
                </div>
                
                <!-- Offer Card 4 -->
                <div class="offer-card" data-discount="50" data-city="hyderabad" data-area="north">
                    <div class="offer-image">
                        <img src="https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="Restaurant">
                        <div class="discount-badge">50% OFF</div>
                    </div>
                    <div class="offer-details">
                        <h3 class="restaurant-name">Biryani House</h3>
                        <p class="offer-description">50% off on second biryani order. Valid for dine-in and takeaway.</p>
                        <div class="promo-code">
                            <span>BIRYANI50</span>
                            <i class="fas fa-copy"></i>
                        </div>
                        <div class="offer-meta">
                            <div class="location">
                                <i class="fas fa-map-marker-alt"></i>
                                <span>North Hyderabad</span>
                            </div>
                            <div class="validity">Valid till: 20 May</div>
                        </div>
                        <button class="claim-btn">Claim Offer</button>
                    </div>
                </div>
                
                <!-- Offer Card 5 -->
                <div class="offer-card" data-discount="25" data-city="chennai" data-area="east">
                    <div class="offer-image">
                        <img src="https://images.unsplash.com/photo-1559339352-11d035aa65de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60" alt="Restaurant">
                        <div class="discount-badge">25% OFF</div>
                    </div>
                    <div class="offer-details">
                        <h3 class="restaurant-name">South Spice</h3>
                        <p class="offer-description">25% off on South Indian thali. Complimentary dessert with every meal.</p>
                        <div class="promo-code">
                            <span>SOUTH25</span>
                            <i class="fas fa-copy"></i>
                        </div>
                        <div class="offer-meta">
                            <div class="location">
                                <i class="fas fa-map-marker-alt"></i>
                                <span>East Chennai</span>
                            </div>
                            <div class="validity">Valid till: 5 Jun</div>
                        </div>
                        <button class="claim-btn">Claim Offer</button>
                    </div>
                </div>
                
                <!-- Offer Card 6 -->
                <div class="offer-card" data-discount="10" data-city="delhi" data-area="west">
                    <div class="offer-image">
                        <img src="https://images.unsplash.com/photo-1544148103-0773bf10d330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60" alt="Restaurant">
                        <div class="discount-badge">10% OFF</div>
                    </div>
                    <div class="offer-details">
                        <h3 class="restaurant-name">Punjabi Dhaba</h3>
                        <p class="offer-description">10% off on all orders above ₹500. Additional discount for group bookings.</p>
                        <div class="promo-code">
                            <span>DHABA10</span>
                            <i class="fas fa-copy"></i>
                        </div>
                        <div class="offer-meta">
                            <div class="location">
                                <i class="fas fa-map-marker-alt"></i>
                                <span>West Delhi</span>
                            </div>
                            <div class="validity">Valid till: 25 May</div>
                        </div>
                        <button class="claim-btn">Claim Offer</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Mobile menu toggle
        document.getElementById('mobile-menu-toggle').addEventListener('click', function() {
            document.getElementById('sidebar').classList.toggle('active');
        });
        
        // Discount filter buttons
        const discountButtons = document.querySelectorAll('.discount-btn');
        const offerCards = document.querySelectorAll('.offer-card');
        
        discountButtons.forEach(button => {
            button.addEventListener('click', function() {
                // Remove active class from all buttons
                discountButtons.forEach(btn => btn.classList.remove('active'));
                
                // Add active class to clicked button
                this.classList.add('active');
                
                const selectedDiscount = this.getAttribute('data-discount');
                
                // Filter offers based on selected discount
                offerCards.forEach(card => {
                    if (selectedDiscount === 'all' || card.getAttribute('data-discount') === selectedDiscount) {
                        card.style.display = 'block';
                    } else {
                        card.style.display = 'none';
                    }
                });
            });
        });
        
        // City and Area filters
        const citySelect = document.getElementById('city-select');
        const areaSelect = document.getElementById('area-select');
        
        function filterOffers() {
            const selectedCity = citySelect.value;
            const selectedArea = areaSelect.value;
            const selectedDiscount = document.querySelector('.discount-btn.active').getAttribute('data-discount');
            
            offerCards.forEach(card => {
                const cardCity = card.getAttribute('data-city');
                const cardArea = card.getAttribute('data-area');
                const cardDiscount = card.getAttribute('data-discount');
                
                const cityMatch = selectedCity === '' || cardCity === selectedCity;
                const areaMatch = selectedArea === '' || cardArea === selectedArea;
                const discountMatch = selectedDiscount === 'all' || cardDiscount === selectedDiscount;
                
                if (cityMatch && areaMatch && discountMatch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
        
        citySelect.addEventListener('change', filterOffers);
        areaSelect.addEventListener('change', filterOffers);
        
        // Copy promo code functionality
        const promoCodes = document.querySelectorAll('.promo-code');
        
        promoCodes.forEach(code => {
            code.addEventListener('click', function() {
                const promoText = this.querySelector('span').textContent;
                
                // Create a temporary input element
                const tempInput = document.createElement('input');
                tempInput.value = promoText;
                document.body.appendChild(tempInput);
                
                // Select and copy the text
                tempInput.select();
                document.execCommand('copy');
                
                // Remove the temporary input
                document.body.removeChild(tempInput);
                
                // Show copied feedback
                const icon = this.querySelector('i');
                icon.className = 'fas fa-check';
                icon.style.color = '#4CAF50';
                
                // Reset icon after 2 seconds
                setTimeout(() => {
                    icon.className = 'fas fa-copy';
                    icon.style.color = '#999';
                }, 2000);
            });
        });
    </script>
</body>
</html>