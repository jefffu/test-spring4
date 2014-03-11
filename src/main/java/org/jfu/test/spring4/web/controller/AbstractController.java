package org.jfu.test.spring4.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;

public abstract class AbstractController {
    private static Logger logger = LoggerFactory.getLogger(AbstractController.class);

    @ExceptionHandler(value={Exception.class})
    public ResponseEntity<String> handleException(Exception ex) {
        logger.error("Exception captured, " + ex);
        return new ResponseEntity<String>("", HttpStatus.INTERNAL_SERVER_ERROR);
    }

}
