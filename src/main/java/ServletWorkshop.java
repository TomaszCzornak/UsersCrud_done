import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet(name = "ServletWorkshop", value = "/ServletWorkshop")
public class ServletWorkshop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Connection conn = DbUtil.getConnection();
            conn =
                    DriverManager.getConnection("jdbc:mysql://localhost:3306/"
                                    + "users?useSSL=false",
                            "root",
                            "coderslab");


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
