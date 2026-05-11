import java.util.ArrayList;
import java.util.List;

public class ShoppingCartImperative {
    private List<String> items = new ArrayList<>();
    private boolean bookAdded = false;

    public void addItem(String item) {
        items.add(item);
        if (item.toLowerCase().contains("book")) {
            bookAdded = true;
        } else {
            bookAdded = false;
        }
    }

    public void removeItem(String item) {
        items.remove(item);
        for (String remainingItem : items) {
            if (remainingItem.toLowerCase().contains("book")) {
                bookAdded = true;
                return;
            } else {
                bookAdded = false;
            }
        }
    }

    public List<String> getItems() {
        return new ArrayList<>(items);
    }

    public double getDiscount() {
        return bookAdded ? 5 : 0;
    }

    public static void main(String[] args) {
        ShoppingCartImperative cart = new ShoppingCartImperative();
        cart.addItem("Apple");
        cart.addItem("Java Book");
        System.out.println("Items: " + cart.getItems());
        System.out.println("Discount: " + cart.getDiscount());

        cart.removeItem("Java Book");
        System.out.println("Items after removal: " + cart.getItems());
        System.out.println("Discount after removal: " + cart.getDiscount());
    }
}
