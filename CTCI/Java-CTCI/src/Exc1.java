
public class Exc1 {
	
	public static boolean isUc(String str) {
		if (str.length() > 128) return false;
		
		//create empty array size of all possible alphabet letters
		boolean[] char_set = new boolean[128];
		//for each char in our string
		for (int i =0; i < str.length(); i++) {
			// convert to ascii number
			int val = str.charAt(i);
			//do we have that char already?
			if (char_set[val]) {
				return false;
			}
			char_set[val]=true;
		}
		
		return true;
	}
	
	public static void main(String[] args) {
		String tom = new String("yo");
		isUc(tom);
	}
}
