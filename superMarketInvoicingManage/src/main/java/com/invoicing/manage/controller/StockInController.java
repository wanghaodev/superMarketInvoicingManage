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
import com.invoicing.manage.entity.StockInEntity;
import com.invoicing.manage.service.StockInService;
import com.invoicing.manage.comment.entity.PageInfo;
 
/** 
 * 类名: StockInController   
 * 类描述: TODO.  出入库管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/stock/stockin")
public class StockInController {
	private static Logger logger=LoggerFactory.getLogger(StockInController.class);
	
	@Autowired
	private StockInService stockInService;
	
	/**
	 * goToStockInList 出入库管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToStockInList(){
		String url="/stock/stockin/stockin_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getStockInEntityList 获取出入库管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getStockInList(BaseRequestEntity requestEntity){
		logger.debug("method [getStockInEntityList] 查询出入库管理列表，请求参数："+JSON.toJSONString(requestEntity));
		PageInfo<StockInEntity> pageInfo=new PageInfo<StockInEntity>();
		pageInfo.setPageNo(requestEntity.getPageNo());
		pageInfo.setPageSize(requestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<StockInEntity> StockInList = stockInService.getList(pageInfo, params);
		logger.debug("method [getStockInEntityList] 查询出入库管理列表，返回结果为："+JSON.toJSONString(StockInList));
		return new SuccessResponseEntity(StockInList);
		
	}
	
	/**
	 * goToStockInAdd 出入库管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToStockInAdd(){
		String url="/stock/stockin/stockin_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addStockInEntity 新建出入库管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addStockIn(StockInEntity brandEntity){
		try {
			logger.debug("新建出入库管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = stockInService.insertSelective(brandEntity);
			logger.debug("新建出入库管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("出入库管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToStockInUpdate 出入库管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToStockInUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/brand/brand_update";
		StockInEntity brandEntity=stockInService.selectByPrimaryKey(id);
		if(null!=brandEntity){
			modelMap.put("brand", brandEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateStockInEntity 修改出入库管理
	 * @param StockInEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateStockIn(StockInEntity brandEntity){
		try {
			logger.debug("编辑出入库管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = stockInService.updateByPrimaryKeySelective(brandEntity);
			logger.debug("编辑出入库管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("出入库管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delStockInEntity 删除出入库管理
	 * @param StockInEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delStockIn(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				StockInEntity brandEntity=new StockInEntity ();
				brandEntity.setId(id);
				brandEntity.setValid(0);
				brandEntity.setUpdateTime(new Date());
				logger.debug("删除出入库管理，传入参数为："+JSON.toJSONString(brandEntity));
				int result = stockInService.updateByPrimaryKeySelective(brandEntity);
				logger.debug("删除出入库管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("出入库管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getStockInList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<StockInEntity> StockInList=stockInService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(StockInList.size()>0){
			res.setData(StockInList);
			logger.info("method [getStockInList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
