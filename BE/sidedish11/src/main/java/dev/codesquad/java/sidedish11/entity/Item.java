package dev.codesquad.java.sidedish11.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Id;

import java.util.*;

@Getter @Setter
@ToString
public class Item {
    @Id
    private Long id;
    private String hash;
    private String image;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private Integer point;
    private String deliveryInfo;
    private String deliveryFee;
    private int stock;

    private List<Badge> badges = new ArrayList<>();
    private List<DeliveryType> deliveryTypes = new ArrayList<>();
    private List<ThumbImage> thumbImages = new ArrayList<>();
    private List<DetailSection> detailSections = new ArrayList<>();
    private List<Color> colors = new ArrayList<>();

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

    public Integer getNormalPrice() {
        return normalPrice;
    }

    public Integer getSalePrice() {
        return salePrice;
    }

    public Integer getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public List<Badge> getBadges() {
        return badges;
    }

    public List<DeliveryType> getDeliveryTypes() {
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

    public List<Color> getColors() {
        return colors;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setNormalPrice(Integer normalPrice) {
        this.normalPrice = normalPrice;
    }

    public void setSalePrice(Integer salePrice) {
        this.salePrice = salePrice;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public void setDeliveryInfo(String deliveryInfo) {
        this.deliveryInfo = deliveryInfo;
    }

    public void setDeliveryFee(String deliveryFee) {
        this.deliveryFee = deliveryFee;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public void setBadges(List<Badge> badges) {
        this.badges = badges;
    }

    public void setDeliveryTypes(List<DeliveryType> deliveryTypes) {
        this.deliveryTypes = deliveryTypes;
    }

    public void setThumbImages(List<ThumbImage> thumbImages) {
        this.thumbImages = thumbImages;
    }

    public void setDetailSections(List<DetailSection> detailSections) {
        this.detailSections = detailSections;
    }

    public void setColors(List<Color> colors) {
        this.colors = colors;
    }

    public void decreaseStock(int orderNumber) {
        this.stock -= orderNumber;
    }

    public boolean isLastOrder(int orderNumber) {
        if (stock != orderNumber) {
            return false;
        }
        return true;
    }

    public boolean isValidStock(int orderNumber) {
        if (stock < orderNumber) {
            return false;
        }
        return true;
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
