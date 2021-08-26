package Dao;

import Model.Chara;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import javax.sql.DataSource;
import java.util.List;

public class CharaJdbcDao implements CharaDao {
    private JdbcTemplate jdbcTemplate;
    private BasicDataSource dataSource;

    public CharaJdbcDao(JdbcTemplate jdbcTemplate) {
        dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/frame-data-db");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");
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
