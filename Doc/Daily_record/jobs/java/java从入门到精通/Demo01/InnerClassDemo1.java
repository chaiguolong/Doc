class Outer{
	int score = 95;
	void inst(){
		Inner in = new Inner();
		in.display();
	}

	public class Inner{
		void display(){
			//在内部类中声明一个name属性
			String name = "张三";
			System.out.println("成绩: score = "+score);
		}
	}

	public void print(){
		//在此调用内部类的name属性
		System.out.println("姓名: "+name);
	}
}
public class InnerClassDemo1 {
	public static void main(String[] args) {
		
	}
	
}
