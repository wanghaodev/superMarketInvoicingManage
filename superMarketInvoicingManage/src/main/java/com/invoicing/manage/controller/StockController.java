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
import com.invoicing.manage.entity.StockEntity;
import com.invoicing.manage.service.StockService;
import com.invoicing.manage.comment.entity.PageInfo;
 
/** 
 * 类名: StockController   
 * 类描述: TODO.  库存管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/stock/")
public class StockController {
	private static Logger logger=LoggerFactory.getLogger(StockController.class);
	
	@Autowired
	private StockService stockService;
	
	
	
	/**
	 * goToStockList 库存管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToStockList(){
		String url="/stock/stock/stock_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getStockEntityList 获取库存管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getStockList(BaseRequestEntity requestEntity){
		logger.debug("method [getStockEntityList] 查询库存管理列表，请求参数："+JSON.toJSONString(requestEntity));
		PageInfo<StockEntity> pageInfo=new PageInfo<StockEntity>();
		pageInfo.setPageNo(requestEntity.getPageNo());
		pageInfo.setPageSize(requestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<StockEntity> stockGroundList = stockService.getList(pageInfo, params);
		logger.debug("method [getStockEntityList] 查询库存管理列表，返回结果为："+JSON.toJSONString(stockGroundList));
		return new SuccessResponseEntity(stockGroundList);
		
	}
	
	/**
	 * goToStockAdd 库存管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToStockAdd(){
		String url="/stock/stock/stock_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addStockEntity 新建库存管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addStock(StockEntity brandEntity){
		try {
			logger.debug("新建库存管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = stockService.insertSelective(brandEntity);
			logger.debug("新建库存管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("库存管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToStockUpdate 库存管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToStockUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/brand/brand_update";
		StockEntity brandEntity=stockService.selectByPrimaryKey(id);
		if(null!=brandEntity){
			modelMap.put("brand", brandEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateStockEntity 修改库存管理
	 * @param StockEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateStock(StockEntity brandEntity){
		try {
			logger.debug("编辑库存管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = stockService.updateByPrimaryKeySelective(brandEntity);
			logger.debug("编辑库存管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("库存管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delStockEntity 删除库存管理
	 * @param StockEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delStock(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				StockEntity brandEntity=new StockEntity ();
				brandEntity.setId(id);
				brandEntity.setValid(0);
				brandEntity.setUpdateTime(new Date());
				logger.debug("删除库存管理，传入参数为："+JSON.toJSONString(brandEntity));
				int result = stockService.updateByPrimaryKeySelective(brandEntity);
				logger.debug("删除库存管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("库存管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getStockList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<StockEntity> stockGroundList=stockService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(stockGroundList.size()>0){
			res.setData(stockGroundList);
			logger.info("method [getStockList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
