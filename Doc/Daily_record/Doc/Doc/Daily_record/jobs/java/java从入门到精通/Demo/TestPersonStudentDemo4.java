class Person{
	//在这里将属性封装
	private String name;
	private int age;
}
class Student extends Person{
	//在这里访问父类中被封装的属性
	public void setVal(){
		//父类中的字段为私有的.
		// name = "张三";
		// age = 25;
	}
}
public class TestPersonStudentDemo4 {
	public static void main(String[] args) {
		new Student().setVal();
	}
	
}
