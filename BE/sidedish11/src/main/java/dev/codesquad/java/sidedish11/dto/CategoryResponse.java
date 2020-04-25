package dev.codesquad.java.sidedish11.dto;

import dev.codesquad.java.sidedish11.entity.Category;
import dev.codesquad.java.sidedish11.entity.Item;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

@Getter
public class CategoryResponse {
    private Long id;
    private String name;
    private String description;
    private String url;
    private List<ItemResponse> items = new ArrayList<>();

    public CategoryResponse(Category category) {
        this.id = category.getId();
        this.name = category.getName();
        this.description = category.getDescription();
        this.url = LOCAL_HOST_URL + category.getTitle();
        for (Item item  : category.getItems()) {
            items.add(new ItemResponse(item));
        }
    }

    @Override
    public String toString() {
        return "CategoryResponse{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", url='" + url + '\'' +
                ", items=" + items +
                '}';
    }
}
