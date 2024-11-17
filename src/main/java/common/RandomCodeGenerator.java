package common;
import java.util.*;
public class RandomCodeGenerator {
	
	public int GetOTP()
	{
		Random r=new Random();
		int n,x;
		x=r.nextInt(1,10);
				if(x%2==0)
		n=r.nextInt(1000,9999);
				else 
					n=r.nextInt(100000,999999);
		return n;
		
	}
	public String GetCaptchaCode() {
		char ch;
		String Code="";
		Random r=new Random();
		ch=(char)r.nextInt(65,90);
		Code=Code+ch;
		ch=(char)r.nextInt(49,57);
		Code=Code+ch;
		ch=(char)r.nextInt(97,122);
		Code=Code+ch;
		ch=(char)r.nextInt(51,52);
		Code=Code+ch;
		ch=(char)r.nextInt(100,120);
		Code=Code+ch;
		ch=(char)r.nextInt(70,88);
		Code=Code+ch;
		int n=r.nextInt(1,20);
		if(n>20) {
			ch=(char)r.nextInt(100,120);
			Code=Code+ch;

		}
		return Code;
		
	}

}
