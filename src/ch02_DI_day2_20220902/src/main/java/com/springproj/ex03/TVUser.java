package com.springproj.ex03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) {
		// TV tv = new LgTV();
		ApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
		
		TV tv = factory.getBean("tv");
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
	}

}
