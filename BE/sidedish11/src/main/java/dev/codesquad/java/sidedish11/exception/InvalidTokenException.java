package dev.codesquad.java.sidedish11.exception;

public class InvalidTokenException extends RuntimeException{
    private final int ERROR_CODE;

    public InvalidTokenException(String message, int errorCode) {
        super(message);
        this.ERROR_CODE = errorCode;
    }

    public InvalidTokenException(String message) {
        this(message, 400);
    }
}
