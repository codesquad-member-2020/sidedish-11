package dev.codesquad.java.sidedish11.dto;

import dev.codesquad.java.sidedish11.entity.Badge;
import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class ApiItem {
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
//    private Set<Badge> badge = new HashSet<>();

    public ApiItem() {
    }
}
