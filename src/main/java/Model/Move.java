package Model;

public class Move {
    private int moveId;
    private String moveInput;
    private String moveName;

    public Move() {}

    public Move(String moveInput, String moveName) {
        this.moveInput = moveInput;
        this.moveName = moveName;
    }

    public int getMoveId() {
        return moveId;
    }

    public void setMoveId(int moveId) {
        this.moveId = moveId;
    }

    public String getMoveInput() {
        return moveInput;
    }

    public void setMoveInput(String moveInput) {
        this.moveInput = moveInput;
    }

    public String getMoveName() {
        return moveName;
    }

    public void setMoveName(String moveName) {
        this.moveName = moveName;
    }
}
