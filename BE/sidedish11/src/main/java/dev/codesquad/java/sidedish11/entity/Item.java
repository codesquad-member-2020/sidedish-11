package dev.codesquad.java.sidedish11.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

import java.util.*;

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
    private int stock;

    private Set<Badge> badges = new HashSet<>();
    private Set<DeliveryType> deliveryTypes = new HashSet<>();
    private List<ThumbImage> thumbImages = new ArrayList<>();
    private List<DetailSection> detailSections = new ArrayList<>();
    private Set<Color> colors = new HashSet<>();

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

    public Set<Badge> getBadges() {
        return badges;
    }

    public Set<DeliveryType> getDeliveryTypes() {
        return deliveryTypes;
    }

    public List<ThumbImage> getThumbImages() {
        return thumbImages;
    }

    public List<DetailSection> getDetailSections() {
        return detailSections;
    }

    public int getStock() {
        return stock;
    }

    public Set<Color> getColors() {
        return colors;
    }

    public void decreaseStock() {
        this.stock --;
    }

    public boolean isValidStock() {
        if (stock > 0) {
            return true;
        }
        return false;
    }

    public void addBadge(Badge badge) {
        if (badges.contains(badge)) {
            return;
        }
        badges.add(badge);
    }

    public void addColor(Color color) {
        if (colors.contains(color)) {
            return;
        }
        colors.add(color);
    }
}
