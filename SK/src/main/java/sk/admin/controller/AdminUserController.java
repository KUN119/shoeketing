package sk.admin.controller;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;

import sk.admin.service.AdminUserService;

@Controller
public class AdminUserController {

	@Resource(name = "adminUserService")
	private AdminUserService adminUserService;

	Log log = LogFactory.getLog(this.getClass());
}
