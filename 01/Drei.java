import java.util.ArrayList;
import java.util.List;

public class Drei {

    public int getTipPercentage(List<String> names) {
        if (names.size() <= 2) {
            return 0;
        } else if (names.size() <= 4) {
            return 10;
        } else {
            return 20;
        }
    }

    public static void main(String[] args) {
        Drei tipCalculator = new Drei();
        List<String> names = new ArrayList<>();
        names.add("test");
        names.add("test2");
        names.add("test3");
        names.add("test4");
        names.add("test5");

        System.out.println(tipCalculator.getTipPercentage(names));
    }

}
