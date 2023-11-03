import java.sql.*;
public class WorldDB {
     public static void main(String args[]){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/world","root","root");
//here sampledb is database name, root is username and password
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select country.name, country.continent, country.region, countryLanguage.Language from country inner join countrylanguage on country.code = countrylanguage.countrycode;");
            while(rs.next())
            System.out.println(rs.getString(0)+"   "+rs.getString(2)+"   "+rs.getString(3)+"   "+rs.getString(4));
            con.close();
        }catch(Exception e){
            System.out.println(e);}
        }
}