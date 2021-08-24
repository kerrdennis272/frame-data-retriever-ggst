package Model;

public class Chara {
    private int characterId;
    private String characterName;

    public Chara() {}

    public Chara(String characterName) {
        this.characterName = characterName;
    }

    public int getCharacterId() {
        return characterId;
    }

    public void setCharacterId(int characterId) {
        this.characterId = characterId;
    }

    public String getCharacterName() {
        return characterName;
    }

    public void setCharacterName(String characterName) {
        this.characterName = characterName;
    }
}
