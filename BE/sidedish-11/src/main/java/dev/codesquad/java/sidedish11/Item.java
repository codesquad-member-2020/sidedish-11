package dev.codesquad.java.sidedish11;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

import java.util.List;

@Getter @Setter
public class Item {
    @Id
    private Long id;
    private String detail_hash;
    private String image;
    private String alt;
//    private List<String> delivery_type;
    private String title;
    private String description;
    private String n_price;
    private String s_price;
//    private List<String> badge;

    public Item() {
    }

}
