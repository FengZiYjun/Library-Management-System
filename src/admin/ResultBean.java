package admin;

import java.util.ArrayList;

public class ResultBean {
	
	private static ArrayList<String> books_id = new ArrayList<>();
	
	public static void set(String id){
		books_id.add(id);
	}
	
	public static String get(int i){
		if(0<=i && i <books_id.size()){
			return books_id.get(i);
		}else{
			return null;
		}
	}
	
	public static void clear(){
		books_id.clear();
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		ResultBean rb = new ResultBean();
//		rb.set("4213");
//		rb.set("4124");
//		System.out.println(rb.get(0));
	}

}
