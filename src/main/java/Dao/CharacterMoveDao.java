package Dao;

import Model.Chara;
import Model.CharacterMove;
import Model.Move;

import java.util.List;

public interface CharacterMoveDao {

    public List<CharacterMove> getAllCharacterMovesForCharacter(Chara character);
    public CharacterMove getCharacterMove(Chara character, Move move);
}
