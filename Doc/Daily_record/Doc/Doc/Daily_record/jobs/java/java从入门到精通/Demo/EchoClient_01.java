import java.io.*;
import java.net.*;
public class EchoClient_01 {
	public static void main(String[] args) throws Exception {
		//表示连接的主机及端口
		Socket client = new Socket("localhost", 8888);
		BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
		BufferedReader buf = null;
		buf = new  BufferedReader(new InputStreamReader(client.getInputStream()));
		PrintStream out = new PrintStream(client.getOutputStream());
		boolean flag = true;
		while (flag) {
			System.out.println("请输入要发送的内容");
			//接收回应的内容
			String str = input.readLine();
			if(str == null || "".equals(str)){
				flag = false;
				break;
			}
			if("bye".equals(str)){
				flag = false;
				break;
			}
			out.println(str);
			System.out.println(buf.readLine());
		}
		client.close();
		
	}
	
}
