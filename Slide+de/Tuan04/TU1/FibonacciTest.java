import java.util.Scanner;


public class FibonacciTest {
	public static int isFibonacci(int n){
		if(n==0||n==1)
			return 1;
		int f1=0,f2=1,f3;
		f3=f1+f2;
		while (f3<n) {
			f1=f2;
			f2=f3;
			f3=f1+f2;
			
		}
		if(f3==n)
			return 1;
		return 0;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n;
		Scanner scan = new Scanner(System.in);
		n=scan.nextInt();
		if(isFibonacci(n)==1)
			System.out.println(n+"is a Fibonacci.");
		else
			System.out.println(n+"is not a Fibonacci.");
		System.out.println("Hello world!");
	}

}
