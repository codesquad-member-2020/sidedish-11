package dev.codesquad.java.sidedish11.jwt;

import dev.codesquad.java.sidedish11.exception.InvalidTokenException;
import dev.codesquad.java.sidedish11.oauth.GithubUser;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.SignatureAlgorithm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.jsonwebtoken.Jwts;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;


@Service
public class TokenService {
    private Logger logger = LoggerFactory.getLogger(TokenService.class);
    private static final String SECRET_KEY = "secret";

    @Transactional
    public String buildToken(GithubUser githubUser) {
        return Jwts.builder()
                .claim(TOKEN_IDENTIFIER_NAME, TOKEN_IDENTIFIER_VALUE)
                .setSubject(githubUser.getUserId())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + EXPIRATION_TIME))
                .signWith(SignatureAlgorithm.HS256, SECRET_KEY)
                .compact();
    }

    @Transactional
    public boolean isValidToken(String token) {
        try {
            Jwts.parser().setSigningKey(SECRET_KEY).parseClaimsJws(token);
            return true;
        } catch (Exception e) {
            throw new InvalidTokenException(e.getMessage());
        }
    }

    @Transactional
    public String getUserId() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        String token = request.getHeader(AUTHORIZATION);
        if (token != null) {
            Jws<Claims> claims = Jwts.parser().setSigningKey(SECRET_KEY).parseClaimsJws(token);
            return claims.getBody().getSubject();
        }
        return NULL_TOKEN_USER;
    }
}

