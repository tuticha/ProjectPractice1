package day9;

public class ActionFactory {      // Singleton Pattern.
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() { }
	static ActionFactory getInstance() {
		return instance;
	}

	Action getAction(String command) {
		System.out.println("ActionFactory getAction()에서, command="+command);		
		Action action = null;
		switch(command) {
		case "calculate":
			action = new CalAction();
			break;
		case "result":
			action = new ResultAction();
			break;
		}
		return action;
	}
}
										
//class Class2 {    // testing.
//	void method1() {
//		//ActionFactory af = new ActionFactory();
//		ActionFactory af = ActionFactory.getInstance(); 
//	}
//}









