package com.rzlyxw.ym.transaction.controller;

import com.rzlyxw.ym.transaction.domain.ShopOrder;
import com.rzlyxw.ym.transaction.domain.YmUser;
import com.rzlyxw.ym.transaction.dto.PageInfo;
import com.rzlyxw.ym.transaction.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("order")
public class OrderController {
    @Resource
    private OrderService orderService;

    /**
     * 生成订单
     */
    @PostMapping("create")
    @ResponseBody
    public Long create(Long expressId, HttpSession session) {
        // 从 session 中获取会员信息
        YmUser user = (YmUser) session.getAttribute("user");

        // 创建订单
        Long orderId = orderService.create(user.getId(), expressId);

        return orderId;
    }
}
