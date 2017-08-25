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
import com.invoicing.manage.entity.GoodsPropertyValueEntity;
import com.invoicing.manage.request.PropertyValRequestEntity;
import com.invoicing.manage.service.GoodsPropertyValueService;
import com.invoicing.manage.comment.entity.PageInfo;

 
/** 
 * 类名: GoodsPropertyValueController   
 * 类描述: TODO.  商品属性值 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/goods/property/value")
public class GoodsPropertyValueController {
	private static Logger logger=LoggerFactory.getLogger(GoodsPropertyValueController.class);
	
	@Autowired
	private GoodsPropertyValueService goodsPropertyValueService;
	
	
	
	/**
	 * goToGoodsPropertyValueList 商品属性值列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsPropertyValueList(){
		String url="/goods/propertyValue/property_value_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsPropertyValueEntityList 获取商品属性值列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsPropertyValueList(PropertyValRequestEntity propertyValue){
		logger.debug("method [getGoodsPropertyValueEntityList] 查询商品属性值列表，请求参数："+JSON.toJSONString(propertyValue));
		PageInfo<GoodsPropertyValueEntity> pageInfo=new PageInfo<GoodsPropertyValueEntity>();
		pageInfo.setPageNo(propertyValue.getPageNo());
		pageInfo.setPageSize(propertyValue.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		params.put("propertyId", propertyValue.getPropertyId());
		params.put("propertyValue", propertyValue.getPropertyValue());
		PageInfo<GoodsPropertyValueEntity> areaList = goodsPropertyValueService.getList(pageInfo, params);
		logger.debug("method [getGoodsPropertyValueEntityList] 查询商品属性值列表，返回结果为："+JSON.toJSONString(areaList));
		return new SuccessResponseEntity(areaList);
		
	}
	
	/**
	 * goToGoodsPropertyValueAdd 商品属性值添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsPropertyValueAdd(){
		String url="/basedate/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsPropertyValueEntity 新建商品属性值
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoodsPropertyValue(GoodsPropertyValueEntity areaEntity){
		try {
			logger.debug("新建商品属性值，传入参数为："+JSON.toJSONString(areaEntity));
			int result = goodsPropertyValueService.insertSelective(areaEntity);
			logger.debug("新建商品属性值，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品属性值添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsPropertyValueUpdate 商品属性值编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsPropertyValueUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/goods/propertyValue/property_value_update";
		GoodsPropertyValueEntity areaEntity=goodsPropertyValueService.selectByPrimaryKey(id);
		if(null!=areaEntity){
			modelMap.put("area", areaEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsPropertyValueEntity 修改商品属性值
	 * @param GoodsPropertyValueEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoodsPropertyValue(GoodsPropertyValueEntity areaEntity){
		try {
			logger.debug("编辑商品属性值，传入参数为："+JSON.toJSONString(areaEntity));
			int result = goodsPropertyValueService.updateByPrimaryKeySelective(areaEntity);
			logger.debug("编辑商品属性值，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品属性值编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsPropertyValueEntity 删除商品属性值
	 * @param GoodsPropertyValueEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoodsPropertyValue(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsPropertyValueEntity areaEntity=new GoodsPropertyValueEntity ();
				areaEntity.setId(id);
				areaEntity.setIsDelete(0);
				areaEntity.setUpdateTime(new Date());
				logger.debug("删除商品属性值，传入参数为："+JSON.toJSONString(areaEntity));
				int result = goodsPropertyValueService.updateByPrimaryKeySelective(areaEntity);
				logger.debug("删除商品属性值，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品属性值删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsPropertyValueEntity> areaList=goodsPropertyValueService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(areaList.size()>0){
			res.setData(areaList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
