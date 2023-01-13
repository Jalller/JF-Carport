package dat.backend.model.entities;

import java.util.Objects;

public class Products {
    private int id_products;
    private String name;

    private int price;
    private String description;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Products item = (Products) o;
        return id_products == item.id_products && price == item.price && Objects.equals(name, item.name) && Objects.equals(description, item.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id_products, name, price, description);
    }

    @Override
    public String toString() {
        return "Item{" +
                "id_products=" + id_products +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }

    public int getId_products() {
        return id_products;
    }

    public void setId_products(int id_products) {
        this.id_products = id_products;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Products() {
    }

    public Products(int id_products, String name, int price, String description) {
        this.id_products = id_products;
        this.name = name;
        this.price = price;
        this.description = description;
    }
}
