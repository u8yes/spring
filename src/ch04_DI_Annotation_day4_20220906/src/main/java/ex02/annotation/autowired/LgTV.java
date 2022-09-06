package ex02.annotation.autowired;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV{
		
	//Speaker speaker = new SonySpeaker();
	//@Autowired // Spring용 annotation
	@Inject	// JAVA용 annotation
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
