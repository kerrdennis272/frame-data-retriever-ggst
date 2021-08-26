import java.util.Scanner;

public class Menu {
    private Scanner scanner;

    public Menu () {
        this.scanner = new Scanner(System.in);
    }

    public void displayMenuOptions(String[] options) {
        int i = 1;
        for (String option : options) {
            System.out.println(i + ")" + option);
            i++;
        }
    }
    public void getChoiceFromUser() {

    }
}
