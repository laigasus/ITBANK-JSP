import java.util.ArrayList;

public class sample {
 public static void main(String ar[]){
  ArrayList<Integer> arr = new ArrayList<>();
  ArrayList<Integer> arr2 = new ArrayList<>();
  int MaxSize = 20;
  for(int i=0;i<MaxSize;i++){
   arr.add(i+1);
  }
  for(int i=0;i<MaxSize;i++){
   int random = (int)(Math.random()*45+1);
   arr2.add(random);
  }
  for(int i=0;i<MaxSize;i++){
   System.out.println(i+ "   " + arr2.get(i));
  }
 }
}