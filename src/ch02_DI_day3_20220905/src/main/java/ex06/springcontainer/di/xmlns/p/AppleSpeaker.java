package ex06.springcontainer.di.xmlns.p;

public class AppleSpeaker implements Speaker {
	
	public AppleSpeaker() {	// 생성자는 클래스와 동일한 이름이어야 한다.
		// 생성자는 반환할 것이 없다.
		System.out.println("AppleSpeaker 객체 생성.");
	}
	
	@Override
	public void volumeUp(){
		System.out.println("AppleSpeaker---소리 올린다.");
	}
	
	@Override
	public void volumeDown(){
		System.out.println("AppleSpeaker---소리 내린다.");
	}
}
