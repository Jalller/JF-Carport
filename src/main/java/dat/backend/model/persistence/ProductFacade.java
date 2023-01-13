package dat.backend.model.persistence;

import dat.backend.model.entities.Products;

import java.util.List;

public class ProductFacade {
    public static List<Products> getProducts (ConnectionPool connectionPool){
        return ProductMapper.getProducts(connectionPool);
    }

}
