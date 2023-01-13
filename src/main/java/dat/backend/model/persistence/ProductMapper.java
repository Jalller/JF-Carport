package dat.backend.model.persistence;

import dat.backend.model.entities.Products;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductMapper {
    static List<Products> getProducts(ConnectionPool connectionPool){

        List<Products> productsList = new ArrayList<>();



        String sql = "Select * from products";

        try (Connection connection = connectionPool.getConnection()){

            try(PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int id_products = rs.getInt("id_products");
                    String name = rs.getString("name");
                    int price = rs.getInt("price");
                    String description = rs.getString("description");

                    Products newProduct = new Products(id_products,name,price,description);
                    productsList.add(newProduct);
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return productsList;
    }
}
