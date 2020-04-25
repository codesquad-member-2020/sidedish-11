package dev.codesquad.java.sidedish11.service;

import dev.codesquad.java.sidedish11.dto.CategoryResponse;
import dev.codesquad.java.sidedish11.entity.Category;
import dev.codesquad.java.sidedish11.exception.DataNotFoundException;
import dev.codesquad.java.sidedish11.repository.CategoryRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CategoryService {
    private Logger logger = LoggerFactory.getLogger(CategoryService.class);

    @Autowired
    private CategoryRepository categoryRepository;

    @Transactional
    public Iterable<Category> viewAll() {
        return categoryRepository.findAll();
    }

    @Transactional
    public CategoryResponse getCategory(Long id) {
        Category category = findCategory(id);
        CategoryResponse categoryResponse = new CategoryResponse(category);
        return categoryResponse;
    }

    private Category findCategory(Long id) {
        return categoryRepository.findById(id).orElseThrow(() -> new DataNotFoundException("NO CATEGORY"));
    }
}
