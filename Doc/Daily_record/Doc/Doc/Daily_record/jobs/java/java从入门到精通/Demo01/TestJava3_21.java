public class TestJava3_21 {
	public static void main(String[] args) {
		int a = 10, b = 6;

		System.out.println("改变之前的数: a = "+a+", b = "+b);
		//先计算a-b的值,将结果设给a之后,再将b值加1
		a -=b++;
		System.out.println("改变之后的数: a = "+a+", b = "+b);
	}
	
}
