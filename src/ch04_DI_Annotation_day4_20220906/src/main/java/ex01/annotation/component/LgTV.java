package ex01.annotation.component;

import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV{
		
	public LgTV() {	// 초기화할 목적으로 생성자를 만들어줌.
		// speaker = new SonySpeaker();
		System.out.println("LgTV 객체 생성.");
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
		System.out.println("LgTV Volume Up.");
	}
	@Override
	public void volumeDown() {
		System.out.println("LgTV volume Down.");
	}
}
