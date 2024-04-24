package sprlng.learning.bysell.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import sprlng.learning.bysell.models.Product;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    List<Product> findByTitle(String title);

}
