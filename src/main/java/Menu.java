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
        System.out.println("Please Select a character by the option number (0 to exit): ");
        String userInput = scanner.nextLine();
        String choice  = null;
        try {
            int selectedCharacter = Integer.valueOf(userInput);
            if (selectedCharacter == 0) {
                return "0";
            }
            choice = options.get(selectedCharacter - 1);
        } catch (NumberFormatException e) {
            System.out.println("\n\n**Please input the number corresponding to the character**\n\n");
        } catch (IndexOutOfBoundsException ex) {
            System.out.println("\n\n**Please input the number corresponding to the character**\n\n");
        }
        return choice;
    }
    public String getMenuChoiceFromUser(List<String> options) {
        displayMenuOptions(options);
        String userInput = scanner.nextLine();
        String choice  = null;
        try {
            int selectedOption = Integer.valueOf(userInput);
            if (selectedOption == 0) {
                return "0";
            }
            choice = options.get(selectedOption - 1);
        } catch (NumberFormatException e) {
            System.out.println("\n\n**Please input the number corresponding to the option**\n\n");
        } catch (IndexOutOfBoundsException ex) {
            System.out.println("\n\n**Please input the number corresponding to the option**\n\n");
        }
        return choice;
    }
}
