package sk.common.logger;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
public class LoggerAspect {
//	protected Log log = LogFactory.getLog(LoggerAspect.class);
	protected Logger log = LoggerFactory.getLogger("testLogger");
	static String name = "";
	static String type = "";

	@Around("execution(* sk..controller.*Controller.*(..)) or execution(* sk..service.*Impl.*(..)) or execution(* sk..dao.*DAO.*(..))")
	public Object logPrint(ProceedingJoinPoint joinPoint) throws Throwable {
		type = joinPoint.getSignature().getDeclaringTypeName();

		if (type.indexOf("Controller") > -1) {
			name = "Controller \t : ";
		} else if (type.indexOf("Service") > -1) {
			name = "ServiceImpl \t : ";
		} else if (type.indexOf("DAO") > -1) {
			name = "DAO : \t : ";
		}
		log.debug(name + type + "." + joinPoint.getSignature().getName() + "()");
		return joinPoint.proceed();
	}
}
