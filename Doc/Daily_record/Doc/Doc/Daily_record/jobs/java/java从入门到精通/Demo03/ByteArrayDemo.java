import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import java.io.IOException;

public class ByteArrayDemo {
	public static void main(String[] args) {
		String tmp = "abcdefghijklmnopqrstuvwxyz";
		byte[] src = tmp.getBytes();
		ByteArrayInputStream input = new ByteArrayInputStream(src);
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		new ByteArrayDemo().transform(input, output);
		byte[] result = output.toByteArray();
		System.out.println(new String(result));
		try {
			input.close();
			output.close();
		} catch(IOException e){
			e.printStackTrace();
		}

	}

	public void transform(InputStream in, OutputStream out){
		int c = 0;
		try {
			while ((c = in.read()) != -1) {
				int C = (int)Character.toUpperCase((char)c);
				out.write(C);
			}
		} catch(IOException e){
			e.printStackTrace();
		}
	}
	
}
