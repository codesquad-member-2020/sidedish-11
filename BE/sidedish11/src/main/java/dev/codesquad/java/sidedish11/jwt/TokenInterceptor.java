package dev.codesquad.java.sidedish11.jwt;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TokenInterceptor extends HandlerInterceptorAdapter {
    private Logger logger = LoggerFactory.getLogger(TokenInterceptor.class);

    @Autowired
    private TokenService tokenService;

//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
//        if (request.getMethod().equals("OPTIONS")) {
//            return true;
//        }
//        final String token = request.getHeader("Authorization");
//        logger.info("token >> {}", token);
//        if (!tokenService.isValidToken(token)) {
//            return false;
//        }
//        return true;
//    }
}

