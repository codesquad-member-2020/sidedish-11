package dev.codesquad.java.sidedish11.oauth;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Github {
    @JsonProperty("access_token")
    private String accessToken;

    @JsonProperty("token_type")
    private String tokenType;

    @JsonProperty("scope")
    private String scope;

    public Github() {
    }

    public String getAccessToken() {
        return accessToken;
    }

    public String getAuthorization() {
        return tokenType + " " + accessToken;
    }

    @Override
    public String toString() {
        return "Github{" +
                "accessToken='" + accessToken + '\'' +
                ", tokenType='" + tokenType + '\'' +
                ", scope='" + scope + '\'' +
                '}';
    }
}
