import java.util.List;
import java.util.Scanner;

public class Menu {
    private Scanner scanner;

    public Menu () {
        this.scanner = new Scanner(System.in);
    }

    public void displayMenuOptions(List<String> options) {
        int i = 1;
        for (String option : options) {
            System.out.println(i + ")" + option);
            i++;
        }
    }
    public String getCharacterChoiceFromUser(List<String> options) {
        displayMenuOptions(options);
        System.out.println("Please Select a character by the option number: ");
        String userInput = scanner.nextLine();
        String choice  = null;
        try {
            int selectedCharacter = Integer.valueOf(userInput);
            if (selectedCharacter <= options.size()) {
                choice = options.get(selectedCharacter - 1);
            }
        } catch (NumberFormatException e) {
            System.out.println("**Please input the number corresponding to the character**");
        }
        return choice;
    }
    public String getMenuChoiceFromUser(List<String> options) {
        displayMenuOptions(options);
        String userInput = scanner.nextLine();
        String choice  = null;
        try {
            int selectedOption = Integer.valueOf(userInput);
            if (selectedOption <= options.size()) {
                choice = options.get(selectedOption - 1);
            }
        } catch (NumberFormatException e) {
            System.out.println("**Please input the number corresponding to the option**");
        }
        return choice;
    }
}
