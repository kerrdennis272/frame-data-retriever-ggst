package Model;

public class CharacterMove {
    private int characterMoveId;
    private int moveId;
    private int characterId;
    private String startupFrames;
    private String blockFrames;

    public CharacterMove() {}

    public CharacterMove(int moveId, int characterId,String startupFrames, String blockFrames) {
        this.startupFrames = startupFrames;
        this.blockFrames = blockFrames;
        this.characterId = characterId;
        this.moveId = moveId;
    }

    public int getCharacterId() {
        return characterId;
    }

    public void setCharacterId(int characterId) {
        this.characterId = characterId;
    }

    public int getMoveID() {
        return moveId;
    }

    public void setMoveId(int moveId) {
        this.moveId = moveId;
    }

    public int getCharacterMoveId() {
        return characterMoveId;
    }

    public void setCharacterMoveId(int characterMoveId) {
        this.characterMoveId = characterMoveId;
    }

    public String getStartupFrames() {
        return startupFrames;
    }

    public void setStartupFrames(String startupFrames) {
        this.startupFrames = startupFrames;
    }

    public String getBlockFrames() {
        return blockFrames;
    }

    public void setBlockFrames(String blockFrames) {
        this.blockFrames = blockFrames;
    }
}
