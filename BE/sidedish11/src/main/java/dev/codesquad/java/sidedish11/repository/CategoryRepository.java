package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.entity.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    List<Category> findAll();
}
