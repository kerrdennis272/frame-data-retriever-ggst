package Dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import java.util.ArrayList;
import Model.Chara;
import Model.CharacterMove;
import Model.Move;

public class JdbcCharacterMoveDao implements CharacterMoveDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcCharacterMoveDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<CharacterMove> getAllCharacterMovesForCharacter(String characterName) {
        int characterId = 0;
        String characterQuery = "SELECT character_id FROM character WHERE character_name = ?";
        SqlRowSet characterResult = jdbcTemplate.queryForRowSet(characterQuery, characterName);
        while (characterResult.next()) {
            characterId = characterResult.getInt("character_id");
        }
        List<CharacterMove> moveList = new ArrayList<CharacterMove>();
        String sqlString = "SELECT * FROM character_move JOIN moves ON character_move.move_id = moves.move_id WHERE character_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlString, characterId);
        while (results.next()) {
            moveList.add(mapRowToCharacterMove(results));
        }
        return moveList;
    }

    @Override
    public CharacterMove getCharacterMove(Chara character, Move move) {
        // TODO Auto-generated method stub
        return null;
    }

    private CharacterMove mapRowToCharacterMove(SqlRowSet results) {
        CharacterMove characterMove = new CharacterMove();
        characterMove.setBlockFrames(results.getString("block_frames"));
        characterMove.setCharacterId(results.getInt("character_id"));
        characterMove.setMoveId(results.getInt("move_id"));
        characterMove.setStartupFrames(results.getString("startup_frames"));
        characterMove.setMoveName(results.getString("move_name"));
        characterMove.setMoveInput(results.getString("move_input"));
        return characterMove;
    }

}
