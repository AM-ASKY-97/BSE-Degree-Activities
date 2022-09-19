abstract class person{

	private String name, Gender;
	private int Age;
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setGender(String Gender) {
		this.Gender = Gender;
	}
	
	public void setAge(int Age) {
		this.Age = Age;
	}
	
	public String getName()
	{
		return name;
	}
	
	public String getGender() {
		return Gender;
	}
	
	public int getAge() {
		return Age;
	}
	
	
}

class Student extends person{
	
	String AdmissionNo;
	int Grade;
		
	public void setPersonalDetails(String AdmissionNo, int Grade) {
		this.AdmissionNo = AdmissionNo;
		this.Grade = Grade;
	}
	
	public String getAdmissionNo() {
		return AdmissionNo;
	}
	
	public int getGrade() {
		return Grade;
	}
	void printPersonDetails() {
		System.out.println("Name : " + getName());
		System.out.println("Gender : " + getGender());
		System.out.println("Age : " + getAge());
		System.out.println("Addmission No : " + getAdmissionNo());
		System.out.println("Grade : " + getGrade());
		
	}
}

class Teacher extends person{
	
	String nic, subject, classroom;
	
	public void setPersonalDetils(String nic, String classroom, String subject){
		this.nic = nic;
		this.classroom = classroom;
		this.subject = subject;
	}
	
	void printPersonDetails() {
		System.out.println("Name : " + getName());
		System.out.println("Gender : " + getGender());
		System.out.println("Age : " + getAge());
		System.out.println("NIC Number : " + nic);
		System.out.println("Classroom; : " + classroom);
		System.out.println("Subject : " + subject);
		
	} 
	
}



public class lapTest3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println("===========Student Details===========");
		Student student = new Student();
		
		student.setName("A.Mohammed Asky");
		student.setGender("Male");
		student.setAge(24);
		student.setPersonalDetails("S001", 10);
		
		student.printPersonDetails();
		
		System.out.println("");
		System.out.println("===========Teacher Details===========");
		Teacher teacher = new Teacher();
		
		teacher.setName("AJM. Hazmy");
		teacher.setGender("Male");
		teacher.setAge(32);
		
		teacher.setPersonalDetils("972764930v", "A", "ICT");
		
		teacher.printPersonDetails();
	}

}
