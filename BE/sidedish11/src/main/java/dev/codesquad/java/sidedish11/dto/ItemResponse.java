package dev.codesquad.java.sidedish11.dto;

import dev.codesquad.java.sidedish11.entity.Badge;
import dev.codesquad.java.sidedish11.entity.Item;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

@Getter @Setter
public class ItemResponse {
    @Id
    private Long id;
    private String detail_hash;
    private String image;
    private String alt;
    private String title;
    private String description;
    private String n_price;
    private String s_price;
//    private List<String> delivery_type;
//    private Set<Badge> badge = new HashSet<>();

    public ItemResponse(Item item) {
        this.id = item.getId();
        this.detail_hash = item.getHash();
        this.image = item.getImage();
        this.alt = item.getTitle();
        this.title = item.getTitle();
        this.description = item.getDescription();
        this.n_price = item.getNormalPrice();
        this.s_price = item.getSalePrice();
    }
}
