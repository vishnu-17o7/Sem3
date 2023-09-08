import java.util.StringTokenizer;

public class StringToken {
    public static void main(String []a){
        StringTokenizer st = new StringTokenizer("this,is a test",",");
            while (st.hasMoreTokens()) {
            System.out.println(st.nextToken());
        }
    }
}
