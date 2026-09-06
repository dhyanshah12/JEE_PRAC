package util;

public class Validators 
{
	public static boolean isBlank(String data) {
		
		if(data == null || data.isBlank()) {
			return true;
		}
		return false;
	}
	
	public static boolean AlphaRegEx(String data) {
		
		String alphaRegEx = "[a-zA-Z]+";
		return data.matches(alphaRegEx);
	}
}

 
