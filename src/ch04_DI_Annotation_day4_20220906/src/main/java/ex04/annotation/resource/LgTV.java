package ex04.annotation.resource;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV{
		
	@Resource(name = "apple")
	Speaker speaker;
	
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
		//System.out.println("LgTV volume Up.");
		speaker.volumeUp();
	}
	@Override
	public void volumeDown() {
		//System.out.println("LgTV volume Down.");
		speaker.volumeDown();
	}
}
