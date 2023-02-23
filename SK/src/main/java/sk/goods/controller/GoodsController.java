package sk.goods.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GoodsController {
	
	//브랜드 회원 정보 전체 상품 리스트
		@GetMapping(value="/goodsList")
		public ModelAndView goodsList(@RequestParam Map<String, Object> map) throws Exception {
			ModelAndView mv = new ModelAndView("goodsList");
		 
		 return mv;
		}
}
