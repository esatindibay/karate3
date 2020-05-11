package reqres;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class WriteData {
    public static  void write(String str) {
        PrintWriter w = null;
        try {
            w = new PrintWriter("data.txt","UTF-8");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        w.println("the first line");
        w.println("the second line");
        w.println(str);
        w.close();
    }
}
