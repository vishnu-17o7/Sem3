import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class JDBC {

    private static final String DB_NAME = "college";
    private static final String DB_HOST = "localhost";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

    private static final String DB_URL = "jdbc:mysql://" + DB_HOST + "/" + DB_NAME + "?serverTimezone=UTC";

public static void main(String[] args) throws ClassNotFoundException {

	String sql = "SELECT * FROM employees";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			 Statement statement = connection.createStatement();
			 ResultSet result = statement.executeQuery(sql)) {
			System.out.print("[id]\t[name]\t[role]\n");

			while (result.next()) {
				int id = result.getInt("id");
				String name = result.getString("name");
				String role = result.getString("role");

				System.out.print(id + "\t" + name + "\t" + role + "\n");
			}
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
}
