public class Dataflow<T> {
	
	IO<T> i;
	DataStream<T> ds;
	DataTransformation<T> dt;

	Dataflow(IO<T> input, DataStream<T> data, DataTransformation<T> trans){
		i = input;
		ds = data;
		dt = trans;
	}


	public static void main(String args[]) {

		IO<String> i = new Kafka();
		DataStream<Integer> ds = new DataStream<Integer>(1);
		DataTransformation<String> dt = new DataTransformation<String>();


		Dataflow d = new Dataflow(i, ds, dt);

	}
}