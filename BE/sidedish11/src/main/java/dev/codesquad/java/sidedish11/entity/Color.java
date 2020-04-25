package dev.codesquad.java.sidedish11.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

import java.util.Objects;

@Getter @Setter
public class Color {
    @Id
    @JsonIgnore
    private Long id;
    private String name;

    public Color(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Color color = (Color) o;
        return name.equals(color.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name);
    }
}
