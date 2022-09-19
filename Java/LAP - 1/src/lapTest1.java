import java.util.Scanner;
public class lapTest1{
    
    public static void main(String args[])
    {
        Scanner input = new Scanner (System.in); // input text Scanner name 
        Scanner num = new Scanner (System.in); // input number Scanner Name 
        
        String std_name="", math_grade ="A";
        double monthly_income=0, fcs_fee=0;
        
        final double cs_fee = 60000; // final course fee 60,000
        
        System.out.print("Student Name : ");
        std_name = input.nextLine();
        
        System.out.print("Ordinary Level Mathematics grade (Eg: A B C S W ) : ");
        math_grade = num.nextLine();
        
        System.out.print("Monthly income of their parents : ");
        monthly_income = num.nextDouble();
        
        System.out.println("");
        
        
        if (math_grade.equals("A") && monthly_income < 40000)
        {
        	fcs_fee = cs_fee - (cs_fee*15/100);
        	
        	 System.out.println("");
             System.out.println("Student Name :" + std_name);
             System.out.println("");
             System.out.println("Course Fee :" + fcs_fee);
        }
        
        else 
        {
        	System.out.print("Not eligible for the discount");
        }
        

    }
}