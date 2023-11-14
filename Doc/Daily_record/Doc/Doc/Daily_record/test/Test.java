import java.util.*;
public class Test {
	public static void main(String[] args) {
		Properties pros = System.getProperties();
		Set<Map.Entry<Object, Object>> set = pros.entrySet();
		Iterator<Map.Entry<Object, Object>> it = set.iterator();
		while (it.hasNext()) {
			Map.Entry<Object,Object> entry = it.next();
			String key = (String)entry.getKey();
			String val = (String)entry.getValue();
			System.out.println(key+":"+val);
		}
	}
	
}
