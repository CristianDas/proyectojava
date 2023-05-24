import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Proyecto extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String op = req.getParameter("op");
        
        System.out.println(op);

        switch (op) {
            case "facebook":
                req.getRequestDispatcher("registrarse.jsp").forward(req, resp);
                break;

            case "registrarsereddit":
                req.getRequestDispatcher("registrarsereddit.jsp").forward(req, resp);
                break;

            case "volver":
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                break;

            case "iniciarsesionf":
                req.getRequestDispatcher("loginf.jsp").forward(req, resp);
                break;

            case "iniciarsesionr":
                req.getRequestDispatcher("loginreddit.jsp").forward(req, resp);
                break;
        }
    }
    
}
   
