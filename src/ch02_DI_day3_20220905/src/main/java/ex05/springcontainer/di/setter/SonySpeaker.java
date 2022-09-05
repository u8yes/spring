package ex05.springcontainer.di.setter;

public class SonySpeaker implements Speaker {
	
	public SonySpeaker() {	// 생성자는 클래스와 동일한 이름이어야 한다.
		// 생성자는 반환할 것이 없다.
		System.out.println("SonySpeaker 객체 생성.");
	}
	
	public void volumeUp(){
		System.out.println("SonySpeaker---소리 올린다.");

	}
	
	public void volumeDown(){
		System.out.println("SonySpeaker---소리 내린다.");

	}
}
