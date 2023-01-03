package com.rzlyxw.ym.transaction.interceptor;

import com.rzlyxw.ym.transaction.domain.YmUser;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登录验证拦截器
        */
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        YmUser YmUser = (YmUser) session.getAttribute("user");
//        if (YmUser == null){
//            //ajax请求返回401
//            if ("XMLHttpRequest".equalsIgnoreCase(request.getHeader("X-Requested-With"))){
//                response.sendError(401);
//            }
//            return true;
//        }
        //登录可以继续操作
        return true;
    }
}
