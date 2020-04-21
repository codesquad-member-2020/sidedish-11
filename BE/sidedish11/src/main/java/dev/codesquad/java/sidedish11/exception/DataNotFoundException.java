package dev.codesquad.java.sidedish11.exception;

public class DataNotFoundException extends RuntimeException{
    private final int ERROR_CODE;

    public DataNotFoundException(String message, int errorCode) {
        super(message);
        this.ERROR_CODE = errorCode;
    }

    public DataNotFoundException(String message) {
        this(message, 404);
    }
}

