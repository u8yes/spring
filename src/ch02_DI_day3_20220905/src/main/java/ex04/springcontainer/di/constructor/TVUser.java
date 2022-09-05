package ex04.springcontainer.di.constructor;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) {
		// TV tv = new LgTV();
		AbstractApplicationContext factory 
		= new GenericXmlApplicationContext("applicationContext04.xml");
		
		TV tv = (TV)factory.getBean("tv");
		
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
		factory.close();
	}

} 
