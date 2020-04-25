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

import java.util.ArrayList;
import java.util.List;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

@Service
public class CategoryService {
    private Logger logger = LoggerFactory.getLogger(CategoryService.class);

    @Autowired
    private CategoryRepository categoryRepository;

    @Transactional
    public CategoryResponse getCategory(Long id) {
        Category category = findCategory(id);
        CategoryResponse categoryResponse = new CategoryResponse(category);
        return categoryResponse;
    }

    @Transactional
    public List<CategoryResponse> getAllCategories() {
        List<Category> categories = findAllCategories();
        List<CategoryResponse> categoriesResponse = new ArrayList<>();
        for (Category category : categories) {
            categoriesResponse.add(new CategoryResponse(category));
        }
        return categoriesResponse;
    }

    private Category findCategory(Long id) {
        return categoryRepository.findById(id).orElseThrow(() -> new DataNotFoundException(CATEGORY_NOT_FOUND));
    }

    private List<Category> findAllCategories() {
        return categoryRepository.findAll();
    }
}
