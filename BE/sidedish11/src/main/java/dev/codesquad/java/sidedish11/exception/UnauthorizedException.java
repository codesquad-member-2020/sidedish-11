package dev.codesquad.java.sidedish11.exception;

public class UnauthorizedException extends RuntimeException{
    private final int ERROR_CODE;

    public UnauthorizedException(String message, int errorCode) {
        super(message);
        this.ERROR_CODE = errorCode;
    }

    public UnauthorizedException(String message) {
        this(message, 401);
    }
}
