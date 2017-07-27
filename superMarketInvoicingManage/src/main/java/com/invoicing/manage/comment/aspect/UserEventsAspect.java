package com.invoicing.manage.comment.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.LoggerFactory;

/**
 * 用户操作拦截器
 * @author WH
 *
 */
@Aspect
public class UserEventsAspect {

	private static org.slf4j.Logger logger = LoggerFactory.getLogger(UserEventsAspect.class);

	// com.snailf.platforms.sys.user.intf.service		

	/**
	 * @fun 拦截：插入时候
	 * @param jp
	 * @throws Exception
	 */
	@Before("execution(* com.invoicing.manage.service..*.insert*(..))")
	public void afterInsert(JoinPoint jp) throws Exception {

		/*Object[] objects = jp.getArgs();
		if (objects != null && objects.length > 0) {
			logger.info(" 调用后台方法[" + jp.getSignature().getName() + "]\r传入参数：" + JSON.toJSONString(objects[0]) + ",userId:"
					+ UserUtil.getUserId() + ",userIp:" + UserUtil.getAddressIP());

			if (objects[0] instanceof BaseEntity) {
				//若：实体对象继承BaseEntity，则给继承该对象的用户补充相关信息
				BaseEntity baseEntity = (BaseEntity) objects[0];
				Date curDate = new Date();
				//设置：创建时间
				baseEntity.setCreateTime(curDate);
				//设置：创建人名称
				baseEntity.setCreator(UserUtil.getUserName());
				//设置：用户id
				baseEntity.setCreatorId(UserUtil.getUserId());
				baseEntity.setUpdateTime(curDate);
				baseEntity.setUpdator(UserUtil.getUserName());
				baseEntity.setUpdatorId(UserUtil.getUserId());
			}

		}*/
	}
	

	
	/**
	 * @fun 拦截：更新时候
	 * @param jp
	 * @throws Exception
	 */
	@Before("execution(* com.invoicing.manage.service..*.update*(..))")
	public void afterUpdate(JoinPoint jp) throws Exception {

		/*Object[] objects = jp.getArgs();
		if (objects != null && objects.length > 0) {
			logger.info(" 调用后台方法[" + jp.getSignature().getName() + "]\r传入参数：" + objects[0] + ",userId:"
					+ UserUtil.getUserId() + ",userIp:" + UserUtil.getAddressIP());

			if (objects[0] instanceof BaseEntity) {
				//若：实体对象继承BaseEntity，则给继承该对象的用户补充相关信息
				BaseEntity baseEntity = (BaseEntity) objects[0];
				Date curDate = new Date();
				baseEntity.setUpdateTime(curDate);
				baseEntity.setUpdator(UserUtil.getUserName());
				baseEntity.setUpdatorId(UserUtil.getUserId());
			}

		}*/
	}
	
	
	
}
