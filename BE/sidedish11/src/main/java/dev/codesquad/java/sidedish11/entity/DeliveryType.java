package dev.codesquad.java.sidedish11.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

@Getter @Setter
public class DeliveryType {
    @Id
    @JsonIgnore
    private Long id;
    private String name;

    public DeliveryType() {
    }

    public String getName() {
        return name;
    }
}
