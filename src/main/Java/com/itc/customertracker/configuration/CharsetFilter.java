package com.itc.customertracker.configuration;

import javax.servlet.*;
import java.io.IOException;

public class CharsetFilter implements Filter {

    private String encoding = "UTF-8";

    @Override
    public void init(FilterConfig filterConfig) {
        encoding = filterConfig.getInitParameter("requestEncoding");
        if (encoding == null) encoding = "UTF-8";
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException {
            servletRequest.setCharacterEncoding(encoding);
    }

    @Override
    public void destroy() {
    }
}
