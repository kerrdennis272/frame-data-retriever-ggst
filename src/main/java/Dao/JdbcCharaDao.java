package Dao;

import Model.Chara;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

public class JdbcCharaDao implements CharaDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcCharaDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<String> getAllCharacters() {
        List<String> characterList = new ArrayList<>();
        String sqlStr = "SELECT * FROM character";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlStr);
        while (results.next()) {
            characterList.add(results.getString("character_name"));
        }
        return characterList;
    }

    @Override
    public Chara getCharacterByName(String name) {
        Chara character = new Chara();
        String sqlStr = "SELECT * FROM character WHERE character_name = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlStr, name);
        if (results.next()) {
            character = mapRowToChara(results);
        }
        return character;
    }

    private Chara mapRowToChara(SqlRowSet results) {
        Chara chara = new Chara();
        chara.setCharacterId(results.getInt("character_id"));
        chara.setCharacterName(results.getString("character_name"));
        return chara;
    }
}
