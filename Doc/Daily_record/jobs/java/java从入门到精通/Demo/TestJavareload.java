public class TestJavareload {
	public static void main(String[] args) {
		int int_sum;
		double double_sum;
		int_sum = add(3,5);		//调用有2个参数的add方法
		System.out.println("int_sum = add(3, 5)的值是: "+int_sum);
		int_sum = add(3, 5, 6);
		System.out.println("int_sum = add(3, 5, 6)的值是: "+int_sum);
		double_sum = add(3.2, 6.5);
		System.out.println("double_sum = add(3, 5, 6)的值是: "+double_sum);
	}

	public static int add(int x, int y){
		return x+y;
	}
	public static int add(int x, int y, int z){
		return x+y+z;
	}
	public static double add(double x, double y){
		return x + y;
	}
	
}
