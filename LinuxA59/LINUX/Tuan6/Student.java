public class Student {
	private String name, gender, address;
	private int age;
	private double mScore, iScore;
	
	Student() {
	}
	
	Student(String name, String gender, String address, 
			int age, double mScore, double iScore) {
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.age = age;
		this.mScore = mScore;
		this.iScore = iScore;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setIScore(double iScore) {
		this.iScore = iScore;
	}
	public void setMScore(double mScore) {
		this.mScore = mScore;
	}
	
	public String getName() {
		return name;
	}
	public String getGender() {
		return gender;
	}
	public String getAddress() {
		return address;
	}
	public double getMScore() {
		return mScore;
	}
    public int getAge() {
       	return age;
	}
	public double getIScore() {
		return iScore;
	}
	
	public String toString() {
		return "- Name:  "+name+"\n\t+ Age: "+age+"\n\t+ Gioi tinh:  "+gender+
				"\n\t+ Dia chi: "+address+"\n\t+ Diem toan: "+mScore+"\n\t+ Diem tin: "+iScore;
		
	}
}
