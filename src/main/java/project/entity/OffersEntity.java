package project.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "offers")
public class OffersEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Integer offeruserId;
	private String restaurantName;
	private String couponCode;
	private String city;
	private String area;
	private String discount;
	private String validTill;
	private String description;

	/* private String offerPic; */
	
	public String getRestaurantName() {
		return restaurantName;
	}
	
	public Integer getOfferuserId() {
		return offeruserId;
	}

	public void setOfferuserId(Integer offeruserId) {
		this.offeruserId = offeruserId;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
	public String getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getValidTill() {
		return validTill;
	}
	public void setValidTill(String validTill) {
		this.validTill = validTill;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	
	

}
