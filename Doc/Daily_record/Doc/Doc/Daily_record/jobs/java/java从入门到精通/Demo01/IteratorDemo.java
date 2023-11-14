import java.awt.List;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

public class IteratorDemo {
	public static void main(String[] args) {
		//创建一个ArrayList数组
		ArrayList<String> al = new ArrayList<>();
		//加入元素到ArrayList中
		al.add("C");
		al.add("A");
		al.add("E");
		al.add("B");
		al.add("D");
		al.add("F");
		//使用iterator显示al中的内容
		System.out.println("a1 中原始内容是: ");
		Iterator<String> it = al.iterator();
		while (it.hasNext()) {
			System.out.print(it.next() + " ");
		}
		System.out.println();
		//在ListIterator中修改内容
		ListIterator<String> lit = al.listIterator();
		while (lit.hasNext()) {
			String ele = lit.next();
			lit.set(ele+"+");
		}
		System.out.println("al被修改后的内容");
		it = al.iterator();
		while (it.hasNext()) {
			System.out.print(it.next() + " ");
		}
		System.out.println();
		//下面是将列表中的内容反向输出
		System.out.println("将al反向输出: ");
		while (lit.hasPrevious()) {
			System.out.print(lit.previous() + " ");
		}
		System.out.println();
	}
	
}
