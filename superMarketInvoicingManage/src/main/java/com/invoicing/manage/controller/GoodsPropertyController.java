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
import com.invoicing.manage.comment.entity.BaseRequestEntity;
import com.invoicing.manage.comment.entity.ErrorResponseEntity;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.GoodsPropertyEntity;
import com.invoicing.manage.service.GoodsPropertyService;
import com.snailf.platforms.common.entity.PageInfo;
 
/** 
 * 类名: GoodsPropertyController   
 * 类描述: TODO.  商品属性管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/goods/property")
public class GoodsPropertyController {
	private static Logger logger=LoggerFactory.getLogger(GoodsPropertyController.class);
	
	@Autowired
	private GoodsPropertyService goodsPropertyService;
	
	
	
	/**
	 * goToGoodsPropertyList 商品属性列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsPropertyList(){
		String url="/goods/property/property_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsPropertyEntityList 获取商品属性列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsPropertyList(BaseRequestEntity brandRequestEntity){
		logger.debug("method [getGoodsPropertyEntityList] 查询商品属性列表，请求参数："+JSON.toJSONString(brandRequestEntity));
		PageInfo<GoodsPropertyEntity> pageInfo=new PageInfo<GoodsPropertyEntity>();
		pageInfo.setPageNo(brandRequestEntity.getPageNo());
		pageInfo.setPageSize(brandRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<GoodsPropertyEntity> propertyList = goodsPropertyService.getList(pageInfo, params);
		logger.debug("method [getGoodsPropertyEntityList] 查询商品属性列表，返回结果为："+JSON.toJSONString(propertyList));
		return new SuccessResponseEntity(propertyList);
		
	}
	
	/**
	 * goToGoodsPropertyAdd 商品属性添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsPropertyAdd(){
		String url="/goods/property/property_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsPropertyEntity 新建商品属性
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoodsProperty(GoodsPropertyEntity propertyEntity){
		try {
			logger.debug("新建商品属性，传入参数为："+JSON.toJSONString(propertyEntity));
			int result = goodsPropertyService.insertSelective(propertyEntity);
			logger.debug("新建商品属性，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品属性添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsPropertyUpdate 商品属性编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsPropertyUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/goods/property/property_update";
		GoodsPropertyEntity propertyEntity=goodsPropertyService.selectByPrimaryKey(id);
		if(null!=propertyEntity){
			modelMap.put("brand", propertyEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsPropertyEntity 修改商品属性
	 * @param GoodsPropertyEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoodsProperty(GoodsPropertyEntity propertyEntity){
		try {
			logger.debug("编辑商品属性，传入参数为："+JSON.toJSONString(propertyEntity));
			int result = goodsPropertyService.updateByPrimaryKeySelective(propertyEntity);
			logger.debug("编辑商品属性，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品属性编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsPropertyEntity 删除商品属性
	 * @param GoodsPropertyEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoodsProperty(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsPropertyEntity propertyEntity=new GoodsPropertyEntity ();
				propertyEntity.setId(id);
				propertyEntity.setIsDelete(1);
				propertyEntity.setUpdateTime(new Date());
				logger.debug("删除商品属性，传入参数为："+JSON.toJSONString(propertyEntity));
				int result = goodsPropertyService.updateByPrimaryKeySelective(propertyEntity);
				logger.debug("删除商品属性，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品属性删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsPropertyEntity> propertyList=goodsPropertyService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(propertyList.size()>0){
			res.setData(propertyList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
