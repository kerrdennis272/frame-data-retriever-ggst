package Dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import java.util.ArrayList;

import Model.Move;

public class JdbcMoveDao implements MoveDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcMoveDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Move> getAllMoves() {
        List<Move> moveList = new ArrayList<Move>();
        String sqlString = "SELECT * FROM moves";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlString);
        while (results.next()) {
            Move move = mapRowToMove(results);
            moveList.add(move);
        }
        return moveList;
    }

    @Override
    public Move getMove(String moveName) {
        Move move = new Move();
        String sqlString = "SELECT * FROM moves WHERE move_name = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlString, moveName);
        while (results.next()) {
            move = mapRowToMove(results);
        }
        return move;
    }

    private Move mapRowToMove(SqlRowSet results) {
        Move move = new Move();
        move.setMoveId(results.getInt("move_id"));
        move.setMoveInput(results.getString("move_input"));
        move.setMoveName(results.getString("move_name"));
        return move;
    }

}
