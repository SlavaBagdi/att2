package Program;

public class UserInterface {


    private final MainLogic mainLogic;


    public UserInterface(MainLogic mainLogic) {
        this.mainLogic = mainLogic;
    }
    public void start(){
        mainLogic.startProgramm();
    }
    public void addNewAnimal(){
        mainLogic.addAnimal();
    }
    public void addNewCommand(){
        mainLogic.addCommand();
    }
    public void showCommands(){
        mainLogic.showCommands();
    }

    }


