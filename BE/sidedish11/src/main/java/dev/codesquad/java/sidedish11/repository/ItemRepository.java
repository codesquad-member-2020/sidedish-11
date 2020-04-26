package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.entity.Item;
import org.springframework.data.repository.CrudRepository;

public interface ItemRepository extends CrudRepository<Item, Long> {
}
