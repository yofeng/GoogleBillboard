public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
     noLoop();
     //moves through digits of e until 19 digit prime is found
     for(int n = 2; n < e.length()-10; n++)
     {
     	String digits = e.substring(n,n+10); //up to but not including 12
     	double dNum = Double.parseDouble(digits);
     	if(isPrime(dNum))
     	{
     		System.out.println(dNum);
     	}
     }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if(dNum >= 2)
    {
	    for(int i=2; i <= Math.sqrt(dNum); i++)
	    {
	    	if(dNum % i == 0)
	    	{
	    		return false;
	    	}
	    }
	    return true; 
	}
	return false;
}