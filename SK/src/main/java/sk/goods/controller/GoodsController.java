package sk.goods.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GoodsController {

	@GetMapping(value = "/goodsWriteForm")
	public ModelAndView goodsWriteForm(Map<String, Object> map) throws Exception {
		ModelAndView mv = new ModelAndView("goodsWriteForm");
		return mv;
	}
}
