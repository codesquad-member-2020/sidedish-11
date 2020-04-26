package dev.codesquad.java.sidedish11.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Id;

@Getter @Setter
@ToString
public class ThumbImage {
    @Id
    @JsonIgnore
    private Long id;
    private String name;

    public ThumbImage() {
    }

    public String getName() {
        return name;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }
}
