package kr.co.mlec.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {

	private Map<String, Controller> mappings = null;

	public HandlerMapping(String propLoc) {

		Properties prop = new Properties();
		mappings = new HashMap<>();

		try {
			// InputStream is = new
			// FileInputStream("C:\\Lecture\\web-workspace\\Mission-Web-MVC\\bean.properties");
			InputStream is = new FileInputStream(propLoc);
			prop.load(is);

			Set<Object> keys = prop.keySet(); // 몇 개를 돌릴지 모르기 때문에 for문
			for (Object key : keys) {
				String className = prop.getProperty(key.toString()); // 매개변수는 String형인데 받아오는 값은 Object => toString메소드 호출
				System.out.println(key + " : " + className);

				Class<?> clz = Class.forName(className);
				mappings.put(key.toString(), (Controller) clz.newInstance());

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// uri를 줄 테니 알맞은 Controller를 달라는 것
	public Controller getController(String uri) {
		return mappings.get(uri);
	}

}