import org.json.CDL;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;

public class JSON {

    public static void main(String[] args) throws IOException {

        InputStreamReader inputStreamReader = new InputStreamReader(System.in);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
//        String s = bufferedReader.readLine();

        File file = new File("D:\\Eclipse-workspace\\Karate Project\\src\\main\\resources\\demo.txt");
        File jsonfile = new File("D:\\Eclipse-workspace\\Karate Project\\src\\main\\resources\\demo.json");
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        String str = "I am learning Java IO!\n";
        fileOutputStream.write(str.getBytes());
        fileOutputStream.close();

        int content;
        while ((content = fileInputStream.read()) != -1) {
            System.out.print((char) content);
        }

        FileReader fileReader = new FileReader(jsonfile);
        BufferedReader bufferedReader1 = new BufferedReader(fileReader);
        String line;
        while ((line = bufferedReader1.readLine()) != null) {
            System.out.println(line);
        }
        bufferedReader1.close();
        fileReader.close();

        String jsonString = Files.readString(Paths.get("D:\\Eclipse-workspace\\Karate Project\\src\\main\\resources\\demo.json"));
        JSONObject jsonObject = new JSONObject(jsonString);
        jsonObject.put("c","d");
        System.out.println(jsonObject);
        JSONArray jsonArray = new JSONArray("["+jsonObject+"]");
        jsonArray.put(4);
        System.out.println(jsonArray);

        String jso = CDL.rowToString(jsonArray);
        System.out.println(jso);

        FileWriter fileWriter = new FileWriter(file);
        fileWriter.close();
        fileInputStream.close();
        inputStreamReader.close();
        bufferedReader.close();
    }
}
