package Program;

import java.time.LocalDate;
import java.util.ArrayList;

public class Pet extends Animals {

    private ArrayList<Commands> commands = new ArrayList<>();

//    private String petType;

    public Pet(String name, LocalDate birth_date) {
        super(name, birth_date);
//        this.petType = petType;
    }



    @Override
    public String getName() {
        return super.getName();
    }

    @Override
    public LocalDate getBirthDate() {
        return super.getBirthDate();
    }

    @Override
    public void getCommands() {
        if (commands.size()==0){
            System.out.println("Животное не обучено командами");
        }else
        for (Commands com :commands) {
            System.out.println(com.getCommandName());
        }
    }

    public void addCommand (Commands commands){
        this.commands.add(commands);
    }


}
