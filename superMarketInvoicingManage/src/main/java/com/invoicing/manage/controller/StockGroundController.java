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
import com.invoicing.manage.entity.StockGroundEntity;
import com.invoicing.manage.service.StockGroundService;
import com.snailf.platforms.common.entity.PageInfo;
 
/** 
 * 类名: StockGroundController   
 * 类描述: TODO.  库存地管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/stock/ground")
public class StockGroundController {
	private static Logger logger=LoggerFactory.getLogger(StockGroundController.class);
	
	@Autowired
	private StockGroundService stockGroundService;
	
	
	
	/**
	 * goToStockGroundList 库存地管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToStockGroundList(){
		String url="/stock/ground/ground_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getStockGroundEntityList 获取库存地管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getStockGroundList(BaseRequestEntity requestEntity){
		logger.debug("method [getStockGroundEntityList] 查询库存地管理列表，请求参数："+JSON.toJSONString(requestEntity));
		PageInfo<StockGroundEntity> pageInfo=new PageInfo<StockGroundEntity>();
		pageInfo.setPageNo(requestEntity.getPageNo());
		pageInfo.setPageSize(requestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<StockGroundEntity> stockGroundList = stockGroundService.getList(pageInfo, params);
		logger.debug("method [getStockGroundEntityList] 查询库存地管理列表，返回结果为："+JSON.toJSONString(stockGroundList));
		return new SuccessResponseEntity(stockGroundList);
		
	}
	
	/**
	 * goToStockGroundAdd 库存地管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToStockGroundAdd(){
		String url="/stock/ground/ground_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addStockGroundEntity 新建库存地管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addStockGround(StockGroundEntity brandEntity){
		try {
			logger.debug("新建库存地管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = stockGroundService.insertSelective(brandEntity);
			logger.debug("新建库存地管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("库存地管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToStockGroundUpdate 库存地管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToStockGroundUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/brand/brand_update";
		StockGroundEntity brandEntity=stockGroundService.selectByPrimaryKey(id);
		if(null!=brandEntity){
			modelMap.put("brand", brandEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateStockGroundEntity 修改库存地管理
	 * @param StockGroundEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateStockGround(StockGroundEntity brandEntity){
		try {
			logger.debug("编辑库存地管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = stockGroundService.updateByPrimaryKeySelective(brandEntity);
			logger.debug("编辑库存地管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("库存地管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delStockGroundEntity 删除库存地管理
	 * @param StockGroundEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delStockGround(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				StockGroundEntity brandEntity=new StockGroundEntity ();
				brandEntity.setId(id);
				brandEntity.setValid(0);
				brandEntity.setUpdateTime(new Date());
				logger.debug("删除库存地管理，传入参数为："+JSON.toJSONString(brandEntity));
				int result = stockGroundService.updateByPrimaryKeySelective(brandEntity);
				logger.debug("删除库存地管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("库存地管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getStockGroundList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<StockGroundEntity> stockGroundList=stockGroundService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(stockGroundList.size()>0){
			res.setData(stockGroundList);
			logger.info("method [getStockGroundList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
