public class Jubudemo {
	public static void main(String[] args) {
		int sum = 0;
		//下面是for循环的使用,计算1~5数字累加之和
		for (int i = 0; i < 5; i++) {
			sum  = sum + i;
			System.out.println("i = "+i+", sum = "+sum);
		}
	}
}
