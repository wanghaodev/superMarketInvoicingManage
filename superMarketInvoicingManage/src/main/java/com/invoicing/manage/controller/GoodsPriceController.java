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
import com.invoicing.manage.entity.GoodsNormalPriceEntity;
import com.invoicing.manage.request.GoodsNormalPriceRequestEntity;
import com.invoicing.manage.service.GoodsNormalPriceService;
import com.invoicing.manage.comment.entity.PageInfo;

 
/** 
 * 类名: GoodsNormalPriceController   
 * 类描述: TODO.  商品价格 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/goods/price")
public class GoodsPriceController {
	private static Logger logger=LoggerFactory.getLogger(GoodsPriceController.class);
	
	@Autowired
	private GoodsNormalPriceService goodsNormalPriceService;
	
	/**
	 * goToGoodsNormalPriceList 商品价格列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsNormalPriceList(){
		String url="/goods/price/price_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsNormalPriceEntityList 获取商品价格列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsNormalPriceList(GoodsNormalPriceRequestEntity goodsNormalPriceRequestEntity){
		logger.debug("method [getGoodsNormalPriceEntityList] 查询商品价格列表，请求参数："+JSON.toJSONString(goodsNormalPriceRequestEntity));
		PageInfo<GoodsNormalPriceEntity> pageInfo=new PageInfo<GoodsNormalPriceEntity>();
		pageInfo.setPageNo(goodsNormalPriceRequestEntity.getPageNo());
		pageInfo.setPageSize(goodsNormalPriceRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<GoodsNormalPriceEntity> goodsPriceList = goodsNormalPriceService.getList(pageInfo, params);
		logger.debug("method [getGoodsNormalPriceEntityList] 查询商品价格列表，返回结果为："+JSON.toJSONString(goodsPriceList));
		return new SuccessResponseEntity(goodsPriceList);
		
	}
	
	/**
	 * goToGoodsNormalPriceAdd 商品价格添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsNormalPriceAdd(){
		String url="/basedate/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsNormalPriceEntity 新建商品价格
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoodsNormalPrice(GoodsNormalPriceEntity goodsPriceEntity){
		try {
			logger.debug("新建商品价格，传入参数为："+JSON.toJSONString(goodsPriceEntity));
			int result = goodsNormalPriceService.insertSelective(goodsPriceEntity);
			logger.debug("新建商品价格，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品价格添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsNormalPriceUpdate 商品价格编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsNormalPriceUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/goods/price/price_update";
		GoodsNormalPriceEntity goodsPriceEntity=goodsNormalPriceService.selectByPrimaryKey(id);
		if(null!=goodsPriceEntity){
			modelMap.put("goodsPrice", goodsPriceEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsNormalPriceEntity 修改商品价格
	 * @param GoodsNormalPriceEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoodsNormalPrice(GoodsNormalPriceEntity goodsPriceEntity){
		try {
			logger.debug("编辑商品价格，传入参数为："+JSON.toJSONString(goodsPriceEntity));
			int result = goodsNormalPriceService.updateByPrimaryKeySelective(goodsPriceEntity);
			logger.debug("编辑商品价格，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品价格编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsNormalPriceEntity 删除商品价格
	 * @param GoodsNormalPriceEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoodsNormalPrice(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsNormalPriceEntity goodsPriceEntity=new GoodsNormalPriceEntity ();
				goodsPriceEntity.setId(id);
				goodsPriceEntity.setIsDelete(1);
				goodsPriceEntity.setUpdateTime(new Date());
				logger.debug("删除商品价格，传入参数为："+JSON.toJSONString(goodsPriceEntity));
				int result = goodsNormalPriceService.updateByPrimaryKeySelective(goodsPriceEntity);
				logger.debug("删除商品价格，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品价格删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsNormalPriceEntity> goodsPriceList=goodsNormalPriceService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(goodsPriceList.size()>0){
			res.setData(goodsPriceList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
