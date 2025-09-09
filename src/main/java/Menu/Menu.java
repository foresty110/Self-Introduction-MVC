package Menu;

public class Menu {
    private String name;
    private String spicy;
    private String price;

    Menu(String name, String spicy, String price) {
        this.name = name;
        this.spicy = spicy;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public String getSpicy() {
        return spicy;
    }

    public String getPrice() {
        return price;
    }

}
