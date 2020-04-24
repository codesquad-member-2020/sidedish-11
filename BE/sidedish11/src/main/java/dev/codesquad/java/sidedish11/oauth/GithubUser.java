package dev.codesquad.java.sidedish11.oauth;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class GithubUser {
    @JsonProperty("login")
    private String userId;

    public GithubUser() {
    }

    public String getUserId() {
        return userId;
    }

    @Override
    public String toString() {
        return "GithubUser{" +
                "userId='" + userId + '\'' +
                '}';
    }
}
