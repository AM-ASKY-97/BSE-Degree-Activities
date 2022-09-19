	class bankAccount {
	
	String accHolderName, accType, currencyType, isDebitCardIssued;
	int accNo;
	double  interestEarned, accBalance;
	final double annualInterestRate= 0.25;
	
	bankAccount(String accHolderName, int accNo, String accType)
	{
		this.accHolderName = accHolderName;
		this.accNo = accNo;
		this.accType = accType;
	}
	
	public String getaccHolderName()
	{
		return accHolderName;
	}
	
	public String getaccType()
	{
		return accType;
	}
	
	public int getaccNo()
	{
		return accNo;
	}
	
	public void setcurrencyType(String currencyType)
	{
		this.currencyType=currencyType;
	}
	
	public String getcurrencyType()
	{
		return currencyType;
	}
	
	public void setisDebitCardIssued(String isDebitCardIssued)
	{
		this.isDebitCardIssued = isDebitCardIssued;
	}
	
	public String getisDebitCardIssued()
	{
		return isDebitCardIssued;
	}
	
	public double getinterestEarned()
	{
		if (accType.equals("current") || accType.equals("Current"))
		{
			interestEarned = 0;
		}
		
		else 
		{
			interestEarned = accBalance * annualInterestRate;
		}
		return interestEarned;
	}
	
	public void setaccBalance(double accBalance)
	{
		this.accBalance = accBalance;
	}
	
	public double getaccBalance()
	{
		return accBalance;
	}
	
	void displayAccountDetails()
	{
		System.out.println("Account Holder Name : " + getaccHolderName());
		System.out.println("Account Number : " + getaccNo());
		System.out.println("Account Type : " + getaccType());
		System.out.println("Currency Type : " + getcurrencyType());
		System.out.println("Is a Debit Card Issued : " + getisDebitCardIssued());
		System.out.println("Account Balance: Rs. " + getaccBalance());
		System.out.println("Interest Earned: Rs. " + getinterestEarned());
	}
}


public class lapTest2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//savings acc object
		bankAccount object = new bankAccount("John", 80801020, "savings");
		
		object.setcurrencyType("rupees");
		object.setisDebitCardIssued("yes");
		object.setaccBalance(50000);
		
		object.displayAccountDetails();
		
		System.out.println("----------------------------------------------");
		
		//current acc object
		bankAccount object1 = new bankAccount("Peter", 80801025, "current");
		
		object1.setcurrencyType("rupees");
		object1.setisDebitCardIssued("yes");
		object1.setaccBalance(75000);
		
		object1.displayAccountDetails();

	}

}
