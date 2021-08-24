package Dao;

import Model.Chara;

import java.util.List;

public interface CharaDao {

    public List<Chara> getAllCharacters();
    public Chara getCharacter();
}
