package Dao;

import Model.Chara;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class CharaJdbcDao implements CharaDao {
    private JdbcTemplate jdbcTemplate;
    private DataSource dataSource;

    public CharaJdbcDao(JdbcTemplate jdbcTemplate, DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);

    }

    @Override
    public List<Chara> getAllCharacters() {
        return null;
    }

    @Override
    public Chara getCharacter() {
        return null;
    }
}
