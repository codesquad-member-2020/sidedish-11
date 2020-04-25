package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.entity.Item;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface ItemRepository extends CrudRepository<Item, Long> {
    @Query("Select * from item where category = :categoryId and hash = :hash")
    Optional<Item> findByCategoryAndHash(Long categoryId, String hash);

    @Query("Select * from item where hash = :hash")
    Optional<Item> findByHash(String hash);
}
