package ex02.collection.set;

import java.util.Set;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {

	public static void main(String[] args) {
		AbstractApplicationContext factory = 
		new GenericXmlApplicationContext("applicationContext02.xml");
		
		CollectionBean bean = (CollectionBean)factory.getBean("collectionBean");
		
		Set<String> set = bean.getAddressList();
		
		for(String address : set) {
			System.out.println(address);	// 향상된 for문에 toString이 정의돼있다.
		}
		
		
		
		factory.close();
	}

}
