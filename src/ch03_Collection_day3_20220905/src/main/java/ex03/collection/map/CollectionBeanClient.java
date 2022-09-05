package ex03.collection.map;

import java.util.Map;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {

	public static void main(String[] args) {
		AbstractApplicationContext factory = 
		new GenericXmlApplicationContext("applicationContext03.xml");
		
		CollectionBean bean = (CollectionBean)factory.getBean("collectionBean");
		
		Map<String, String> map = bean.getAddressList();
		
		for(String key : map.keySet()) {
			System.out.println(String.format("키 : %s, 값 : %s", key, map.get(key)));	// 향상된 for문에 toString이 정의돼있다.
		}
		
		
		
		factory.close();
	}

}
