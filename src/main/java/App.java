import Dao.CharaDao;
import Dao.JdbcCharaDao;
import Dao.CharacterMoveDao;
import Dao.JdbcCharacterMoveDao;
import Model.CharacterMove;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.sql.DataSource;
import java.util.Arrays;
import java.util.List;

public class App {
    private static final String MENU_OPTION_1 = "View startup/block frames for all moves";
    private static final String MENU_OPTION_2 = "View startup/block frames for a move based on move input";
    private static final String MENU_OPTION_3 = "View a command list for your character";
    private static final String MENU_OPTION_4 = "Exit";
    private static final List<String> OPTIONS_1 = Arrays.asList(MENU_OPTION_1, MENU_OPTION_2, MENU_OPTION_3,
            MENU_OPTION_4);

    private final CharaDao charaDao;
    private final CharacterMoveDao cMoveDao;
    private final Menu menu;
    private final List<String> characterList;

    public static void main(String[] args) {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl("jdbc:postgresql://localhost:5432/frame_data");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");

        App app = new App(dataSource);
        app.run();
    }

    public App(DataSource dataSource) {
        menu = new Menu();
        charaDao = new JdbcCharaDao(dataSource);
        cMoveDao = new JdbcCharacterMoveDao(dataSource);
        characterList = charaDao.getAllCharacters();

    }

    private void run() {
        while (true) {
            String characterChoice = characterSelect();
            if (characterChoice.equals("0")) {
                break;
            }
            String menuChoice = menuSelect(characterChoice);
            if (menuChoice.equals(MENU_OPTION_1)) {
                displayAllMoves(characterChoice);
            } else if (menuChoice.equals(MENU_OPTION_2)) {
                // TODO
            } else if (menuChoice.equals(MENU_OPTION_3)) {
                displayCommandList(characterChoice);
            } else if (menuChoice.equals(MENU_OPTION_4)) {
                break;
            }
        }

    }

    public String characterSelect() {
        System.out.println("\n\n\nWelcome to the Guilty Gear Strive Frame Data Retriever!\n\n");
        String characterChoice = menu.getCharacterChoiceFromUser(characterList);
        while (characterChoice == null) {
            characterChoice = menu.getCharacterChoiceFromUser(characterList);
        }
        return characterChoice;
    }

    public String menuSelect(String characterChoice) {
        System.out.println(
                "\n\nYou have selected " + characterChoice + ". If you would like to select a different character, "
                        + "enter 0. If not, please select from the following menu options:\n");
        String menuChoice = menu.getMenuChoiceFromUser(OPTIONS_1);
        while (menuChoice == null) {
            menuChoice = menu.getMenuChoiceFromUser(OPTIONS_1);
        }
        return menuChoice;
    }

    public void displayAllMoves(String characterChoice) {
        List<CharacterMove> cMoveList = cMoveDao.getAllCharacterMovesForCharacter(characterChoice);
        System.out.println("\n\n");
        for (CharacterMove move : cMoveList) {
            System.out.println("\n");
            System.out.println(move.toString());
        }
    }

    public void displayCommandList(String characterChoice) {
        List<CharacterMove> cMoveList = cMoveDao.getAllCharacterMovesForCharacter(characterChoice);
        System.out.println("\n\nMOVE NAME: MOVE INPUT");
        System.out.println("*************************");
        for (CharacterMove move : cMoveList) {
            System.out.println("\n" + move.getMoveName() + ": " + move.getMoveInput());
        }
    }
}
