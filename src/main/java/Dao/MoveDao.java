package Dao;

import Model.Move;

import java.util.List;

public interface MoveDao {

    public List<Move> getAllMoves();

    public Move getMove();
}
