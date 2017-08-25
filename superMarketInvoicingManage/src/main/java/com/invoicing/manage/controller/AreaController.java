package com.invoicing.manage.controller; 

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.invoicing.manage.comment.entity.ErrorResponseEntity;
import com.invoicing.manage.comment.entity.PageInfo;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.AreaEntity;
import com.invoicing.manage.request.AreaRequestEntity;
import com.invoicing.manage.service.AreaService;
import com.invoicing.manage.service.impl.AreaServiceImpl;

 
/** 
 * 类名: AreaController   
 * 类描述: TODO.  地区管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/base/date/area")
public class AreaController {
	private static Logger logger=LoggerFactory.getLogger(AreaController.class);
	
	@Autowired
	private AreaService areaService;
	
	
	
	/**
	 * goToAreaList 地区管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToAreaList(){
		String url="/basedate/area/area_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getAreaEntityList 获取地区管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getAreaList(AreaRequestEntity areaRequestEntity){
		logger.debug("method [getAreaEntityList] 查询地区管理列表，请求参数："+JSON.toJSONString(areaRequestEntity));
		PageInfo<AreaEntity> pageInfo=new PageInfo<AreaEntity>();
		pageInfo.setPageNo(areaRequestEntity.getPageNo());
		pageInfo.setPageSize(areaRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<AreaEntity> areaList = areaService.getList(pageInfo, params);
		logger.debug("method [getAreaEntityList] 查询地区管理列表，返回结果为："+JSON.toJSONString(areaList));
		return new SuccessResponseEntity(areaList);
		
	}
	
	/**
	 * goToAreaAdd 地区管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToAreaAdd(){
		String url="/basedate/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addAreaEntity 新建地区管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addArea(AreaEntity areaEntity){
		try {
			logger.debug("新建地区管理，传入参数为："+JSON.toJSONString(areaEntity));
			int result = areaService.insertSelective(areaEntity);
			logger.debug("新建地区管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("地区管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToAreaUpdate 地区管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToAreaUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/area/area_update";
		AreaEntity areaEntity=areaService.selectByPrimaryKey(id);
		if(null!=areaEntity){
			modelMap.put("area", areaEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateAreaEntity 修改地区管理
	 * @param AreaEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateArea(AreaEntity areaEntity){
		try {
			logger.debug("编辑地区管理，传入参数为："+JSON.toJSONString(areaEntity));
			int result = areaService.updateByPrimaryKeySelective(areaEntity);
			logger.debug("编辑地区管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("地区管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delAreaEntity 删除地区管理
	 * @param AreaEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delArea(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				AreaEntity areaEntity=new AreaEntity ();
				areaEntity.setId(id);
				areaEntity.setState(String.valueOf(0));
				areaEntity.setUpdateTime(new Date());
				logger.debug("删除地区管理，传入参数为："+JSON.toJSONString(areaEntity));
				int result = areaService.updateByPrimaryKeySelective(areaEntity);
				logger.debug("删除地区管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("地区管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(@RequestParam Long pId){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<AreaEntity> areaList=areaService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(areaList.size()>0){
			res.setData(areaList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
