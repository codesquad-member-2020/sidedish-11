package dev.codesquad.java.sidedish11;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

import java.util.HashMap;
import java.util.Map;

@Getter @Setter
public class Category {
    @Id
    private Long id;
    private String name;
    private Map<String, Item> items = new HashMap<>();

    public Category() {
    }
}
