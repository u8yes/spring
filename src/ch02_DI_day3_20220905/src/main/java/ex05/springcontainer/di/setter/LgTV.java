package ex05.springcontainer.di.setter;

public class LgTV implements TV{
	
	
	Speaker speaker;	// 멤버변수 = 필드<동일한 이름>
	int price;
	
	public LgTV() {	// 초기화할 목적으로 생성자를 만들어줌.
		// speaker = new SonySpeaker();
		
	}
	
	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
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
