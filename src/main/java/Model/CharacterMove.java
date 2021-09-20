package Model;

public class CharacterMove {
    private int characterMoveId;
    private int moveId;
    private int characterId;
    private String startupFrames;
    private String blockFrames;
    private String moveName;
    private String moveInput;

    public String getMoveName() {
        return moveName;
    }

    public void setMoveName(String moveName) {
        this.moveName = moveName;
    }

    public String getMoveInput() {
        return moveInput;
    }

    public void setMoveInput(String moveInput) {
        this.moveInput = moveInput;
    }

    public CharacterMove() {
    }

    public CharacterMove(int moveId, int characterId, String startupFrames, String blockFrames, String moveName,
            String moveInput) {
        this.startupFrames = startupFrames;
        this.blockFrames = blockFrames;
        this.characterId = characterId;
        this.moveId = moveId;
        this.moveInput = moveInput;
        this.moveName = moveName;
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

    @Override
    public String toString() {
        return moveName + ": " + moveInput + "\nStartup: " + startupFrames + "\nOn Block: " + blockFrames;
    }

    public void setBlockFrames(String blockFrames) {
        this.blockFrames = blockFrames;
    }
}
