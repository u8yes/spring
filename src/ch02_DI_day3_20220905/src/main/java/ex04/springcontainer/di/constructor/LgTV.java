package ex04.springcontainer.di.constructor;

public class LgTV implements TV{
	
	//SonySpeaker speaker;
	//AppleSpeaker speaker;
	Speaker speaker;
	int price;
	
	public LgTV() {	// 초기화할 목적으로 생성자를 만들어줌.
		// speaker = new SonySpeaker();
		
	}
	
	//public LgTV(SonySpeaker speaker) {
	public LgTV(Speaker speaker) {	

		// speaker = new SonySpeaker();
		this.speaker = speaker;
	}
	
	//public LgTV(SonySpeaker speaker, int price) {	
	public LgTV(Speaker speaker, int price) {	
		// speaker = new SonySpeaker();
		this.speaker = speaker;
		this.price = price;
		System.out.println("price : " + this.price);
	}
		
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
		// System.out.println("LgTV Volume Up.");
		speaker.volumeUp();
	}

	@Override
	public void volumeDown() {
		// System.out.println("LgTV volume Down.");
		speaker.volumeDown();
	}
	
}
