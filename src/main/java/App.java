import Dao.CharaDao;
import Dao.CharaJdbcDao;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.sql.DataSource;
import java.util.Arrays;
import java.util.List;

public class App {
    private static final String MENU_OPTION_1 = "View startup/block frames for all moves";
    private static final String MENU_OPTION_2 = "View startup/block frames for a move based on move input";
    private static final List<String> OPTIONS_1 = Arrays.asList(MENU_OPTION_1, MENU_OPTION_2);



    private final CharaDao charaDao;
    private final Menu menu;
    private final List<String> characterList;

    public static void main(String[] args) {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/frame-data-db");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");

        App app = new App(dataSource);
        app.run();
    }

    public App(DataSource dataSource) {
        menu = new Menu();
        charaDao = new CharaJdbcDao(dataSource);
        characterList = charaDao.getAllCharacters();

    }

    private void run() {
        System.out.println("Welcome to the Guilty Gear Strive Frame Data Retriever!\n\n");
        String characterChoice = menu.getCharacterChoiceFromUser(characterList);
        System.out.println("You have selected " + characterChoice + ". If you would like to select a different character, " +
                "enter 0. If not, please select from the following menu options:");
        String menuChoice = menu.getMenuChoiceFromUser(OPTIONS_1);
        if (menuChoice.equals("0")) {
            characterChoice = menu.getCharacterChoiceFromUser(characterList);
        } else if (menuChoice.equals(MENU_OPTION_1)) {
            //TODO
        } else if (menuChoice.equals(MENU_OPTION_2)) {
            //TODO
        }
    }
}
