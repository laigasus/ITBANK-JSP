import java.util.*;

public class rand {
	public static void main(String[] args) {
		HashSet<Integer> set = new HashSet<>();
		while (set.size() < 5) {
			Double d = Math.random() * 45 + 1;
			set.add(d.intValue());
		}
		ArrayList<Integer> list = new ArrayList<>(set);
		Collections.sort(list);
		System.out.println(list);
	}
}