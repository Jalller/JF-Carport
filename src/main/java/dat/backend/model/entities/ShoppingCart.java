package dat.backend.model.entities;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.persistence.ConnectionPool;
import java.util.ArrayList;
import java.util.List;

public class ShoppingCart
{
    ConnectionPool connectionPool = ApplicationStart.getConnectionPool();
    private List<Products> productsList = new ArrayList<>();

    public ShoppingCart()
    {
    }

    public void add(Products products)
    {
        productsList.add(products);
    }

    public int getNumberOfProducts() //få antal ordrer
    {
        return productsList.size();
    }

//    public Object seeOrderLines(){
//        ProductMapper.seeOrderlines(connectionPool);
//        return null;
//    }

    public List<Products> getProductsList()
    {
        return productsList;
    }

    public void resetCart()
    {
        productsList.clear();
    }

//    public int priceOrder(ShoppingCart cart, ConnectionPool connectionPool){
//        int price = 0;
//        String sql = "select product_orderlines (" +
//                "idorderline, order_id, productid, " +
//                "productprice, quantity ) values (?,?,?,?,?)";
//
//        try (Connection connection = connectionPool.getConnection()) {
//            for (Products products : cart.getProductsList()) {
//                try (PreparedStatement ps = connection.prepareStatement(sql)) {
//                    ps.setInt(2, products.getId());
//                    ps.setString(3, products.getName());
//                    ps.setInt(4, products.getPrice());
//                    ps.setTimestamp(5, products.getCreated());
//                    ps.setInt(6, products.getIdcatagory());
//                    ResultSet rs = ps.executeQuery();
//                    while (rs.next()) {
//                        price += (int) (products.getPrice());
//                    }
//
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return price;
//    }

}
