package ex04.springcontainer.di.constructor;

public class LgTV implements TV{

	@Override
	public void powerOn() {
		System.out.println("LgTV power On.");
		
	}

	@Override
	public void powerOff() {
		System.out.println("LgTV power Off.");
		
	}

	@Override
	public void volumeUp() {
		System.out.println("LgTV Volume Up.");
		
	}

	@Override
	public void volumeDown() {
		System.out.println("LgTV volume Down.");
		
	}
	
}
