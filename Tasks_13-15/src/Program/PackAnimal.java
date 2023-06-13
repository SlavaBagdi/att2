package Program;

import java.time.LocalDate;
import java.util.ArrayList;

public class PackAnimal extends Animals {

    private ArrayList<Commands> commands = new ArrayList<>();

    public PackAnimal(String name, LocalDate birth_date) {
        super(name, birth_date);
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
        for (Commands com :commands) {
            System.out.println(com.getCommandName());
        }
    }

    public void addCommand (Commands commands) {
        this.commands.add(commands);
    }
}
