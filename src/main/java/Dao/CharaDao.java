package Dao;

import Model.Chara;

import java.util.List;

public interface CharaDao {

    public List<String> getAllCharacters();
    public Chara getCharacterByName(String name);
}
