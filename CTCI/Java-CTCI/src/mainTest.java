
public class ex1 {
	
	boolean isUc(String str) {
		if (str.length() > 128) return false;
		
		//create empty array size of all possible alphabet letters
		boolean[] char_set = new boolean[128];
		for (int i =0; i < str.length(); i++) {
			int val = str.charAt(i);
			System.out.println(val);
			if (char_set[val]) {
				return false;
			}
			char_set[val]=true;
		}
		
		return true;
	}
	
	public static void main(String[] args) {

	}
}
