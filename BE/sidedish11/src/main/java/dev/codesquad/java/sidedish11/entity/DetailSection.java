package dev.codesquad.java.sidedish11.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

@Getter @Setter
public class DetailSection {
    @Id
    @JsonIgnore
    private Long id;
    private String name;

    public DetailSection() {
    }

    public String getName() {
        return name;
    }
}
