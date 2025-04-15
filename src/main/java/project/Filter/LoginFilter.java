package project.Filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import project.entity.UserEntity;

@Component
public class LoginFilter implements Filter {

    private List<String> publicURLs = new ArrayList<>();
    private List<String> adminURL = new ArrayList<>();

    public LoginFilter() {
        publicURLs.add("/");
        publicURLs.add("/home");
        publicURLs.add("/login");
        publicURLs.add("/fastfood");
        publicURLs.add("/vegrestraurent");
        publicURLs.add("/nonvegrestraurent");
        publicURLs.add("/signup");
        publicURLs.add("/saveuser");
        publicURLs.add("/forgetpassword");
        publicURLs.add("/sendotp");
        publicURLs.add("/authenticate");
        publicURLs.add("/logout");
        publicURLs.add("/updatepassword");

        // Admin URLs
        adminURL.add("menu");
        adminURL.add("home");
        adminURL.add("admindashboard");
        adminURL.add("listuser");
        adminURL.add("viewuser");
        adminURL.add("deleteuser");
        adminURL.add("edituser");
        adminURL.add("updateuser");
        adminURL.add("adduser");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String uri = req.getServletPath(); // e.g., /admindashboard

        System.out.println("Filter checking URI: " + uri);

        // Skip public/static URLs
        if (isPublicOrStatic(uri)) {
            chain.doFilter(request, response);
            return;
        }

        HttpSession session = req.getSession(false);
        UserEntity user = session != null ? (UserEntity) session.getAttribute("users") : null;

        if (user == null) {
            System.out.println("User not authenticated, redirecting to login");
            res.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        // Step 1: Admin URL access control
        String cleanUri = uri.replaceFirst("/", ""); // removes starting slash
        if (adminURL.contains(cleanUri)) {
            if (!"ADMIN".equalsIgnoreCase(user.getRole())) {
                System.out.println("Non-admin trying to access admin URL: " + uri);
                res.sendRedirect(req.getContextPath() + "/home");
                return;
            }
        }

        // Allow request to proceed
        System.out.println("User authenticated, allowing access to: " + uri);
        chain.doFilter(request, response);
    }

    private boolean isPublicOrStatic(String uri) {
        return publicURLs.contains(uri) ||
               uri.contains(".css") || uri.contains(".js") ||
               uri.contains(".png") || uri.contains(".woff") ||
               uri.contains(".dist") || uri.contains(".images") ||
               uri.contains(".jpg") || uri.contains(".gif");
    }
}