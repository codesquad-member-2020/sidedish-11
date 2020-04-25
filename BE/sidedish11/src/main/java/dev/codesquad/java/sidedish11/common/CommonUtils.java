package dev.codesquad.java.sidedish11.common;

public class CommonUtils {
    // github oauth
    public static final String GITHUB_ACCESS_TOKEN_URL = "https://github.com/login/oauth/access_token";
    public static final String GITHUB_USER_INFO_URL = "https://api.github.com/user";
    public static final String AUTHORIZATION = "Authorization";
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_ACCEPT_VALUE = "application/json";

    // dto
    public static final String LOCAL_HOST_URL = "http://3.34.55.104:8080/";

    // exception
    public static final String CATEGORY_NOT_FOUND = "CATEGORY NOT FOUND";
    public static final String ITEM_NOT_FOUND = "ITEM NOT FOUND";

    // order
    public static final String OUT_OF_STOCK = "OUT OF STOCK";
    public static final String OUT_OF_STOCK_MESSAGE = "아쉽지만 재고가 없네요.";
    public static final String ON_STOCK = "OK";
    public static final String ON_STOCK_MESSAGE = "정상 주문 됐어요.";

}
