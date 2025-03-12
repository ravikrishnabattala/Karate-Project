import java.sql.*;

public class JDBC {

    public static void main(String[] args) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flora_school", "root", "ravi");
            System.out.println("✅ Database Connected Successfully!");
            Statement statement = connection.createStatement();
            String query = "select * from product_details;";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                int n = resultSet.getInt("sno");
                System.out.println(n);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
