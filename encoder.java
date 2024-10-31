import java.util.Scanner;

public class encoder {
	public static void main(String[]args){
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter your message: ");
		String message = scanner.nextLine();
		System.out.println("Enter the key:  ");
		int key = scanner.nextInt();
		String encode="";
		for(int i =0;i <message.length(); i++) {
			char letter = message.charAt(i);
			char encodedLetter= (char)(letter+key);
			encode += encodedLetter;
		}
		System.out.println(encode);
		scanner.close();
	}

}

