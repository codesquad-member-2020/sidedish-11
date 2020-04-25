package dev.codesquad.java.sidedish11.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

@Getter @Setter
public class Category {
    @Id
    private Long id;
    private String title;
    private String name;
    private String description;
    private Set<Item> items = new HashSet<>();

    public Category() {
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public Set<Item> getItems() {
        return items;
    }
}
