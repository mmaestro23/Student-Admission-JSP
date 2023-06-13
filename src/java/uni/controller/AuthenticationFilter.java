package uni.controller;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationFilter implements Filter {

    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
        this.context.log("AuthenticationFilter initialized");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String uri = request.getRequestURI();
        this.context.log("Requested Resource::" + uri);

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("email") == null) {
            this.context.log("Unauthorized access request");
            response.sendRedirect("login.jsp");
        } else {
            // pass the request along the filter chain
            filterChain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
        //close any resources here
    }
}
