
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class LoginServlet extends HttpServlet {
    private List<User> users; // Lista de usuarios (puede ser la misma instancia utilizada en el servlet de registro)

    @Override
    public void init() throws ServletException {
        super.init();
        users = new ArrayList<>();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Validar el inicio de sesión
        boolean loggedIn = false;
        for (User user : users) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                loggedIn = true;
                break;
            }
        }

        if (loggedIn) {
           
            resp.sendRedirect("proyecto?op=volver");
        } else {
           
            resp.sendRedirect("proyecto?op=volver");
        }
    }
}


