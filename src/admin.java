import jakarta.servlet.ServletException;import jakarta.servlet.http.HttpServlet;import jakarta.servlet.http.HttpServletRequest;import jakarta.servlet.http.HttpServletResponse;import database.databaseAccess;import java.io.IOException;import java.sql.SQLException;public class admin extends HttpServlet {    @Override    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {        String serviceType = req.getParameter("serviceType");        String serviceCharge = req.getParameter("serviceCharge");        if (!serviceType.isBlank() && !serviceCharge.isBlank()){            String sql = "insert into services (serviceType, serivceCharge) VALUE ('"+                    serviceType + "','" + serviceCharge + "')";            new databaseAccess().execute(sql);        }        resp.sendRedirect("admin.jsp");    }}