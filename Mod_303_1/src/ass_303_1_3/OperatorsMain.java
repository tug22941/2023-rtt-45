package ass_303_1_3;

public class OperatorsMain {

	public static void main(String[] args) {
		OperatorsMain ops = new OperatorsMain();
		ops.intToBinary();
		//-----
		ops.intToBinary(9);
		ops.intToBinary(17);
		ops.intToBinary(88);
		//-----
		ops.intToBinary2();
		//-----
		ops.intToBinary2(225);
		ops.intToBinary2(1555);
		ops.intToBinary(32456);
		
	}
	
	//problem 1 - INTEGERS TO BINARY
	/*
		1 - 0001
		8 - 1001
		33 -0010 0001 
		78 - 0100 1110
		787 - 0011 0001 0011
		33,987 - 1000 0100 1100 0011
	*/
	
	//problem 2 - BINARY TO DECIMAL
	/*
	 	0010 - 2
		1001 - 9
		0011 0100 - 52
		0111 0010 - 114
		0010 0001 1111 - 543
		0010 1100 0110 0111 - 11,367
	 */
	
	//problem 3
	public void intToBinary() {
		int x = 2;
		String binX = Integer.toBinaryString(x);
		int shiftX = Integer.parseInt(binX) << 1;
		//the output will be 10100
		System.out.println(Integer.toBinaryString(shiftX));
	}
	
	//problem 4
	public void intToBinary(int value) {
		int x = value;
		String binX = Integer.toBinaryString(x);
		int shiftX = Integer.parseInt(binX) << 1;
		System.out.println(Integer.toBinaryString(shiftX));
	}
	
	//problem 5
	public void intToBinary2() {
		int x = 150;
		x = x >> 2;
		//the output will be 100101
		System.out.println(Integer.toBinaryString(x));
	}
	
	//problem 6
	public void intToBinary2(int value) {
		int x = value;
		x = x >> 2;
		//the output will be 100101
		System.out.println(Integer.toBinaryString(x));
	}
}
