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
    private String name;
    private Set<Item> items = new HashSet<>();

    public Category() {
    }
}
