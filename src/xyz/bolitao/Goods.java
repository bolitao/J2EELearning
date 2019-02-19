package xyz.bolitao;

public class Goods {
    String name = "无名";
    double price = 0;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        try {
            byte[] bytes = name.getBytes("UTF-8");
            name = new String(bytes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
