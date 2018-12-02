import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class StudentTest {

	public static void inputStudent(ArrayList<Student> s)
			throws FileNotFoundException {
		Scanner in = new Scanner(new File("StudentTest.txt"));
		while (in.hasNext()) {
			Student a = new Student();
			a.setName(in.nextLine());
			a.setGender(in.nextLine());
			a.setAddress(in.nextLine());
			a.setAge(Integer.parseInt(in.nextLine()));
			a.setMScore(Integer.parseInt(in.nextLine()));
			a.setIScore(Integer.parseInt(in.nextLine()));
			s.add(a);
		}
		in.close();
	}

	public static void inputStudent2(ArrayList<Student> s)
			throws NumberFormatException, IOException {
		BufferedReader in = new BufferedReader(
				new FileReader("StudentTest.txt"));
		String name = null;
		while ((name = in.readLine()) != null) {
			Student a = new Student();
			a.setName(name);
			a.setGender(in.readLine());
			a.setAddress(in.readLine());
			a.setAge(Integer.parseInt(in.readLine()));
			a.setMScore(Double.parseDouble(in.readLine()));
			a.setIScore(Double.parseDouble(in.readLine()));
			s.add(a);
		}
		in.close();
	}

	public static void outputStudent2(ArrayList<Student> s) throws IOException {
		BufferedWriter in;
		in = new BufferedWriter(new FileWriter("StudentTestout.txt"));
		for (int i = 0; i < s.size(); i++) {
			String inf = s.get(i).getName() + "\t" + s.get(i).getGender()
					+ "\t" + s.get(i).getAddress() + "\t"
					+ s.get(i).getMScore() + "\t" + s.get(i).getIScore() + "\n";
			in.write(inf);
		}
		in.close();
		System.out.println();
	}

	// In thong tin cua toan bo sinh vien
	public static void printAllStudent(ArrayList<Student> s) {
		System.out.println(s.size());
		for (int i = 0; i < s.size(); i++)
			System.out.println(s.get(i).toString());
	}

	public static void main(String[] args) throws IOException {
		ArrayList<Student> s = new ArrayList<Student>();
		ArrayList<Integer> a = new ArrayList<Integer>();
		a.add(3);
		a.add(6);
		a.add(7);
		a.add(3);
		a.add(5);
		a.add(9);
		
		for(Integer e: a)
			System.out.println(e);
		
		System.out.println("Cach 2:");
		for(int i=0; i< a.size(); i++)
			System.out.println(a.get(i));
		inputStudent2(s);
		printAllStudent(s);
		outputStudent2(s);
	}
}
