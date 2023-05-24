import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistroServlet extends HttpServlet {
    private List<User> users = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Validar los datos ingresados según tus criterios
        if (name.isEmpty() || email.isEmpty() || password.isEmpty()) {
            resp.sendRedirect("error.jsp");
            return;
        }

        // Verificar si el email ya está en uso
        for (User user : users) {
            if (user.getEmail().equals(email)) {
                resp.sendRedirect("error.jsp");
                return;
            }
        }

        // Registro exitoso, crea el usuario y agrega a la lista de usuarios
        User user = new User(name, email, password);
        users.add(user);

        // Redirigir a la página de inicio de sesión o mostrar un mensaje de registro exitoso
        resp.sendRedirect("login.jsp");
    }
}
