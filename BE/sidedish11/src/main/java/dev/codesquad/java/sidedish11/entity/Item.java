package dev.codesquad.java.sidedish11.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

@Getter @Setter
public class Item {
    @Id
    private Long id;
    private String hash;
    private String image;
    private String title;
    private String description;
    private String normalPrice;
    private String salePrice;
    private String point;
    private String deliveryInfo;
    private String deliveryFee;

    public Item() {
    }

    public Long getId() {
        return id;
    }

    public String getHash() {
        return hash;
    }

    public String getImage() {
        return image;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getNormalPrice() {
        return normalPrice;
    }

    public String getSalePrice() {
        return salePrice;
    }

    public String getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }
}
