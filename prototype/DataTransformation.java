public class DataTransformation<T> {

	private Data<T> input;
	private Data<T> output;
	
	DataTransformation() {
    	System.out.println("Oi DataTransformation");
  	}

	public static void main(String args[]) {

		DataTransformation<String> dt = new DataTransformation<String>();

	}
}