package dev.codesquad.java.sidedish11.common;

public class CommonUtils {
    // github oauth
    public static final String GITHUB_ACCESS_TOKEN_URL = "https://github.com/login/oauth/access_token";
    public static final String GITHUB_USER_INFO_URL = "https://api.github.com/user";
    public static final String AUTHORIZATION = "Authorization";
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_ACCEPT_VALUE = "application/json";
    public static final String HEADER_LOCATION = "Location";
    public static final String GITHUB_USER_ID = "userId";

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
    public static final String SOLD_OUT = "품절";
    public static final String LAST_ONE = "LAST ONE";
    public static final String LAST_ONE_MESSAGE = "축하합니다. 주문헌 상품이 마지막 상품이네요.";

    // color
    public static final String ORANGE_YELLOW = "#FFCB05";

    // server
    public static final String SERVER_URL = "http://3.34.55.104";
//    public static final String SERVER_URL = "http://localhost:8080";

//    public static final String SERVER_LOGIN_REQUEST_URL = "https://github.com/login/oauth/authorize?client_id=dc2d0592b76e9fb16677&scope=user%20public_repo";
//    public static final String LOCAL_LOGIN_REQUEST_URL = "https://github.com/login/oauth/authorize?client_id=8d92d01b11ba14d3d18f&scope=user%20public_repo";

    // token
    public static final int EXPIRATION_TIME = 1000 * 60 * 60 * 10;
    public static final String TOKEN_IDENTIFIER_NAME = "group";
    public static final String TOKEN_IDENTIFIER_VALUE = "codesquad-sidedish11";
}
