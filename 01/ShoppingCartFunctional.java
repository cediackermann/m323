import java.util.Arrays;
import java.util.List;

public class ShoppingCartFunctional {

    /**
     * Pure function that calculates the discount percentage based on the cart content.
     * @param cart The list of items in the shopping cart.
     * @return 5 if a book is present, 0 otherwise.
     */
    public static double getDiscountPercentage(List<String> cart) {
        return cart.stream()
                .anyMatch(item -> item.toLowerCase().contains("book"))
                ? 5
                        : 0;
    }

    public static void main(String[] args) {
        List<String> cartWithBook = Arrays.asList("Apple", "Java Book");
        List<String> cartWithoutBook = Arrays.asList("Apple", "Orange");

        System.out.println("Discount with book: " + getDiscountPercentage(cartWithBook));
        System.out.println("Discount without book: " + getDiscountPercentage(cartWithoutBook));
    }
}
