<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="saverating" method="post">
Feedback:<input type="text" name="text">
<input type="submit">

</form>
</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rate Your Experience - Burger Haven</title>
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
            background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1500&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px 15px;
        }
        
        .container {
            max-width: 800px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
            display: flex;
            flex-direction: column;
        }
        
        .header {
            background-color: #FF5722;
            color: white;
            padding: 25px 30px;
            text-align: center;
            position: relative;
        }
        
        .header h1 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 5px;
        }
        
        .header p {
            font-size: 16px;
            opacity: 0.9;
        }
        
        .logo {
            position: absolute;
            top: 20px;
            left: 20px;
            width: 50px;
            height: 50px;
            background-color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
        }
        
        .logo i {
            font-size: 24px;
            color: #FF5722;
        }
        
        .rating-form {
            padding: 30px;
        }
        
        .form-group {
            margin-bottom: 25px;
        }
        
        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            color: #333;
        }
        
        .star-rating {
            display: flex;
            flex-direction: row-reverse;
            justify-content: flex-end;
            gap: 10px;
        }
        
        .star-rating input {
            display: none;
        }
        
        .star-rating label {
            cursor: pointer;
            font-size: 40px;
            color: #ddd;
            transition: color 0.2s ease;
        }
        
        .star-rating label:hover,
        .star-rating label:hover ~ label,
        .star-rating input:checked ~ label {
            color: #FFD700;
        }
        
        .rating-categories {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 10px;
        }
        
        .rating-category {
            margin-bottom: 15px;
        }
        
        .rating-category h4 {
            font-size: 14px;
            margin-bottom: 5px;
            color: #555;
        }
        
        .category-stars {
            display: flex;
            gap: 5px;
        }
        
        .category-stars i {
            font-size: 20px;
            color: #ddd;
            cursor: pointer;
            transition: color 0.2s ease;
        }
        
        .category-stars i.active {
            color: #FFD700;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        
        .form-control:focus {
            outline: none;
            border-color: #FF5722;
            box-shadow: 0 0 0 3px rgba(255, 87, 34, 0.2);
        }
        
        textarea.form-control {
            min-height: 120px;
            resize: vertical;
        }
        
        .photo-upload {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-top: 10px;
        }
        
        .upload-btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background-color: #f5f5f5;
            border: 1px dashed #ccc;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .upload-btn:hover {
            background-color: #eee;
            border-color: #bbb;
        }
        
        .upload-btn i {
            color: #777;
        }
        
        .upload-preview {
            display: flex;
            gap: 10px;
            margin-top: 10px;
            flex-wrap: wrap;
        }
        
        .preview-item {
            width: 80px;
            height: 80px;
            border-radius: 5px;
            overflow: hidden;
            position: relative;
        }
        
        .preview-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .preview-item .remove-btn {
            position: absolute;
            top: 5px;
            right: 5px;
            width: 20px;
            height: 20px;
            background-color: rgba(0, 0, 0, 0.6);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .preview-item .remove-btn:hover {
            background-color: rgba(255, 0, 0, 0.8);
        }
        
        .submit-btn {
            background-color: #FF5722;
            color: white;
            border: none;
            padding: 14px 25px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            display: block;
            width: 100%;
            margin-top: 10px;
        }
        
        .submit-btn:hover {
            background-color: #E64A19;
            transform: translateY(-2px);
        }
        
        .submit-btn:active {
            transform: translateY(0);
        }
        
        .rating-summary {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-top: 20px;
            padding: 15px;
            background-color: #f9f9f9;
            border-radius: 5px;
        }
        
        .rating-value {
            font-size: 36px;
            font-weight: 700;
            color: #FF5722;
            line-height: 1;
        }
        
        .rating-details {
            flex: 1;
        }
        
        .rating-details h4 {
            font-size: 16px;
            margin-bottom: 5px;
            color: #333;
        }
        
        .rating-progress {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 5px;
        }
        
        .rating-progress .stars {
            display: flex;
            align-items: center;
            width: 80px;
        }
        
        .rating-progress .stars i {
            color: #FFD700;
            font-size: 14px;
        }
        
        .rating-progress .progress-bar {
            flex: 1;
            height: 8px;
            background-color: #eee;
            border-radius: 4px;
            overflow: hidden;
        }
        
        .rating-progress .progress-fill {
            height: 100%;
            background-color: #FF5722;
            border-radius: 4px;
        }
        
        .rating-progress .progress-value {
            width: 40px;
            text-align: right;
            font-size: 14px;
            color: #777;
        }
        
        .success-message {
            display: none;
            text-align: center;
            padding: 30px;
        }
        
        .success-message i {
            font-size: 60px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .success-message h2 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #333;
        }
        
        .success-message p {
            color: #666;
            margin-bottom: 20px;
        }
        
        .back-btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background-color: #FF5722;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .back-btn:hover {
            background-color: #E64A19;
        }
        
        @media (max-width: 768px) {
            .container {
                margin: 15px;
            }
            
            .header {
                padding: 20px 15px;
            }
            
            .logo {
                position: static;
                margin: 0 auto 15px;
            }
            
            .rating-form {
                padding: 20px 15px;
            }
            
            .rating-categories {
                grid-template-columns: 1fr;
            }
            
            .star-rating label {
                font-size: 30px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="logo">
                <i class="fas fa-hamburger"></i>
            </div>
            <h1>Rate Your Experience</h1>
            <p>Tell us how we did and help us improve</p>
        </div>
        
        <div class="rating-form" id="rating-form">
            <form id="review-form" action="saverating" method="post">
                <div class="form-group">
    <label for="rating">Overall Rating</label>
    <div class="star-rating">
        <input type="radio" name="rating" id="star5" value="5">
        <label for="star5" class="fas fa-star"></label>
        
        <input type="radio" name="rating" id="star4" value="4">
        <label for="star4" class="fas fa-star"></label>
        
        <input type="radio" name="rating" id="star3" value="3">
        <label for="star3" class="fas fa-star"></label>
        
        <input type="radio" name="rating" id="star2" value="2">
        <label for="star2" class="fas fa-star"></label>
        
        <input type="radio" name="rating" id="star1" value="1">
        <label for="star1" class="fas fa-star"></label>
    </div>
</div>

                
                <div class="form-group">
                    <label for="visit-date">Date of Visit</label>
                    <input type="date" id="visit-date" name="date" class="form-control" required>
                </div>
                
                <div class="form-group">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="userName" class="form-control" placeholder="Enter your name" required>
                </div>
                
                <div class="form-group">
                    <label for="review-text">Your Review</label>
                    <textarea id="review-text" name="review" class="form-control" placeholder="Tell us about your experience... What did you like or dislike?" required></textarea>
                </div>
                
                
                
                
                
                <button type="submit" class="submit-btn">Submit Review</button>
            </form>
            
            <div class="rating-summary">
                <div class="rating-value">4.7</div>
                <div class="rating-details">
                    <h4>Based on 256 reviews</h4>
                    
                    <div class="rating-progress">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="progress-bar">
                            <div class="progress-fill" style="width: 80%;"></div>
                        </div>
                        <div class="progress-value">80%</div>
                    </div>
                    
                    <div class="rating-progress">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                        <div class="progress-bar">
                            <div class="progress-fill" style="width: 15%;"></div>
                        </div>
                        <div class="progress-value">15%</div>
                    </div>
                    
                    <div class="rating-progress">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                        <div class="progress-bar">
                            <div class="progress-fill" style="width: 3%;"></div>
                        </div>
                        <div class="progress-value">3%</div>
                    </div>
                    
                    <div class="rating-progress">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                        <div class="progress-bar">
                            <div class="progress-fill" style="width: 1%;"></div>
                        </div>
                        <div class="progress-value">1%</div>
                    </div>
                    
                    <div class="rating-progress">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                        <div class="progress-bar">
                            <div class="progress-fill" style="width: 1%;"></div>
                        </div>
                        <div class="progress-value">1%</div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="success-message" id="success-message">
            <i class="fas fa-check-circle"></i>
            <h2>Thank You for Your Review!</h2>
            <p>Your feedback helps us improve our service for everyone.</p>
            <button class="back-btn" id="back-btn">
                <i class="fas fa-arrow-left"></i>
                <span>Write Another Review</span>
            </button>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Category star ratings
            const categoryStars = document.querySelectorAll('.category-stars');
            
            categoryStars.forEach(category => {
                const stars = category.querySelectorAll('i');
                const categoryName = category.getAttribute('data-category');
                const hiddenInput = document.getElementById(`${categoryName}-rating`);
                
                stars.forEach(star => {
                    star.addEventListener('click', function() {
                        const value = this.getAttribute('data-value');
                        hiddenInput.value = value;
                        
                        // Reset all stars
                        stars.forEach(s => s.classList.remove('active'));
                        
                        // Set active stars
                        for (let i = 0; i < value; i++) {
                            stars[i].classList.add('active');
                        }
                    });
                    
                    star.addEventListener('mouseover', function() {
                        const value = this.getAttribute('data-value');
                        
                        // Reset all stars
                        stars.forEach(s => s.classList.remove('active'));
                        
                        // Set active stars
                        for (let i = 0; i < value; i++) {
                            stars[i].classList.add('active');
                        }
                    });
                    
                    category.addEventListener('mouseout', function() {
                        // Reset all stars
                        stars.forEach(s => s.classList.remove('active'));
                        
                        // Set active stars based on current value
                        const currentValue = hiddenInput.value;
                        for (let i = 0; i < currentValue; i++) {
                            stars[i].classList.add('active');
                        }
                    });
                });
            });
            
            // Photo upload preview
            const photoUpload = document.getElementById('photo-upload');
            const photoCount = document.getElementById('photo-count');
            const uploadPreview = document.getElementById('upload-preview');
            
            photoUpload.addEventListener('change', function() {
                const files = this.files;
                
                if (files.length > 0) {
                    photoCount.textContent = `${files.length} photo${files.length > 1 ? 's' : ''} selected`;
                    
                    // Clear previous previews
                    uploadPreview.innerHTML = '';
                    
                    // Create previews for each file
                    for (let i = 0; i < files.length; i++) {
                        const file = files[i];
                        
                        if (file.type.startsWith('image/')) {
                            const reader = new FileReader();
                            
                            reader.onload = function(e) {
                                const previewItem = document.createElement('div');
                                previewItem.className = 'preview-item';
                                
                                const img = document.createElement('img');
                                img.src = e.target.result;
                                
                                const removeBtn = document.createElement('div');
                                removeBtn.className = 'remove-btn';
                                removeBtn.innerHTML = '<i class="fas fa-times"></i>';
                                removeBtn.setAttribute('data-index', i);
                                
                                previewItem.appendChild(img);
                                previewItem.appendChild(removeBtn);
                                uploadPreview.appendChild(previewItem);
                                
                                // Remove button functionality would require a more complex implementation
                                // with FileList manipulation which is not straightforward in vanilla JS
                                removeBtn.addEventListener('click', function() {
                                    previewItem.remove();
                                    // This is just visual removal, actual file removal would need more complex code
                                    const remainingPreviews = uploadPreview.querySelectorAll('.preview-item').length;
                                    photoCount.textContent = remainingPreviews > 0 ? 
                                        `${remainingPreviews} photo${remainingPreviews > 1 ? 's' : ''} selected` : 
                                        'No photos selected';
                                });
                            };
                            
                            reader.readAsDataURL(file);
                        }
                    }
                } else {
                    photoCount.textContent = 'No photos selected';
                    uploadPreview.innerHTML = '';
                }
            });
            
            // Form submission
            const reviewForm = document.getElementById('review-form');
            const ratingForm = document.getElementById('rating-form');
            const successMessage = document.getElementById('success-message');
            const backBtn = document.getElementById('back-btn');
            
            reviewForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                // Validate form
                const overallRating = document.querySelector('input[name="overall-rating"]:checked');
                if (!overallRating) {
                    alert('Please provide an overall rating');
                    return;
                }
                
                // Show success message
                ratingForm.style.display = 'none';
                successMessage.style.display = 'block';
                
                // In a real application, you would submit the form data to the server here
                console.log('Form submitted!');
                console.log('Overall Rating:', overallRating.value);
                console.log('Food Rating:', document.getElementById('food-rating').value);
                console.log('Service Rating:', document.getElementById('service-rating').value);
                console.log('Ambience Rating:', document.getElementById('ambience-rating').value);
                console.log('Value Rating:', document.getElementById('value-rating').value);
                console.log('Visit Date:', document.getElementById('visit-date').value);
                console.log('Review Title:', document.getElementById('review-title').value);
                console.log('Review Text:', document.getElementById('review-text').value);
                console.log('Name:', document.getElementById('name').value);
                console.log('Email:', document.getElementById('email').value);
            });
            
            backBtn.addEventListener('click', function() {
                // Reset form
                reviewForm.reset();
                
                // Reset category stars
                categoryStars.forEach(category => {
                    const stars = category.querySelectorAll('i');
                    const categoryName = category.getAttribute('data-category');
                    const hiddenInput = document.getElementById(`${categoryName}-rating`);
                    
                    hiddenInput.value = 0;
                    stars.forEach(s => s.classList.remove('active'));
                });
                
                // Reset photo upload
                photoCount.textContent = 'No photos selected';
                uploadPreview.innerHTML = '';
                
                // Show form again
                ratingForm.style.display = 'block';
                successMessage.style.display = 'none';
            });
        });
    </script>
</body>
</html>