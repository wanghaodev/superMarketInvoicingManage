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
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.GoodsCategoryEntity;
import com.invoicing.manage.request.GoodsCategoryRequestEntity;
import com.invoicing.manage.service.GoodsCategoryService;
import com.snailf.platforms.common.entity.PageInfo;

 
/** 
 * 类名: GoodsCategoryController   
 * 类描述: TODO.  商品分类管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/goods/category")
public class GoodsCategoryController {
	private static Logger logger=LoggerFactory.getLogger(GoodsCategoryController.class);
	
	@Autowired
	private GoodsCategoryService goodsCategoryService;
	
	
	
	/**
	 * goToGoodsCategoryList 商品分类管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsCategoryList(){
		String url="/goods/category/category_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsCategoryEntityList 获取商品分类管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsCategoryList(GoodsCategoryRequestEntity goodsCategoryRequestEntity){
		logger.debug("method [getGoodsCategoryEntityList] 查询商品分类管理列表，请求参数："+JSON.toJSONString(goodsCategoryRequestEntity));
		PageInfo<GoodsCategoryEntity> pageInfo=new PageInfo<GoodsCategoryEntity>();
		pageInfo.setPageNo(goodsCategoryRequestEntity.getPageNo());
		pageInfo.setPageSize(goodsCategoryRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<GoodsCategoryEntity> goodsCategoryList = goodsCategoryService.getList(pageInfo, params);
		logger.debug("method [getGoodsCategoryEntityList] 查询商品分类管理列表，返回结果为："+JSON.toJSONString(goodsCategoryList));
		return new SuccessResponseEntity(goodsCategoryList);
		
	}
	
	/**
	 * goToGoodsCategoryAdd 商品分类管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsCategoryAdd(){
		String url="/goods/category/category_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsCategoryEntity 新建商品分类管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoodsCategory(GoodsCategoryEntity goodsCategoryEntity){
		try {
			logger.debug("新建商品分类管理，传入参数为："+JSON.toJSONString(goodsCategoryEntity));
			int result = goodsCategoryService.insertSelective(goodsCategoryEntity);
			logger.debug("新建商品分类管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品分类管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsCategoryUpdate 商品分类管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsCategoryUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/goods/category/category_update";
		GoodsCategoryEntity goodsCategoryEntity=goodsCategoryService.selectByPrimaryKey(id);
		if(null!=goodsCategoryEntity){
			modelMap.put("goodsCategory", goodsCategoryEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsCategoryEntity 修改商品分类管理
	 * @param GoodsCategoryEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoodsCategory(GoodsCategoryEntity goodsCategoryEntity){
		try {
			logger.debug("编辑商品分类管理，传入参数为："+JSON.toJSONString(goodsCategoryEntity));
			int result = goodsCategoryService.updateByPrimaryKeySelective(goodsCategoryEntity);
			logger.debug("编辑商品分类管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品分类管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsCategoryEntity 删除商品分类管理
	 * @param GoodsCategoryEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoodsCategory(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsCategoryEntity goodsCategoryEntity=new GoodsCategoryEntity ();
				goodsCategoryEntity.setId(id);
				goodsCategoryEntity.setIsDelete(1);
				goodsCategoryEntity.setUpdateTime(new Date());
				logger.debug("删除商品分类管理，传入参数为："+JSON.toJSONString(goodsCategoryEntity));
				int result = goodsCategoryService.updateByPrimaryKeySelective(goodsCategoryEntity);
				logger.debug("删除商品分类管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品分类管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsCategoryEntity> goodsCategoryList=goodsCategoryService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(goodsCategoryList.size()>0){
			res.setData(goodsCategoryList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
