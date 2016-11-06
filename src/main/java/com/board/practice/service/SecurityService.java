package com.board.practice.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import com.board.practice.domain.UserVO;

@Service
public class SecurityService {
	private static final Logger logger = LoggerFactory.getLogger(SecurityService.class);

    @PreAuthorize("#userVO.userId == authentication.name or hasRole(‘ROLE_ADMIN')")
    public void getUser(UserVO userVO) {
         // 테스트를 위한 로그 출력
         logger.info("getUser success");
    }
}
