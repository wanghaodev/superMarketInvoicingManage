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
import com.invoicing.manage.entity.SaleRecordEntity;
import com.invoicing.manage.request.SaleRecordRequestEntity;
import com.invoicing.manage.service.SaleRecordService;
import com.snailf.platforms.common.entity.PageInfo;
 
/** 
 * 类名: SaleRecordController   
 * 类描述: TODO.  销售记录 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/sale/record")
public class SaleRecordController {
	private static Logger logger=LoggerFactory.getLogger(SaleRecordController.class);
	
	@Autowired
	private SaleRecordService saleRecordService;
	
	
	
	/**
	 * goToSaleRecordList 销售记录列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToSaleRecordList(){
		String url="/sale/record/sale_record_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getSaleRecordEntityList 获取销售记录列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getSaleRecordList(SaleRecordRequestEntity saleRecordRequestEntity){
		logger.debug("method [getSaleRecordEntityList] 查询销售记录列表，请求参数："+JSON.toJSONString(saleRecordRequestEntity));
		PageInfo<SaleRecordEntity> pageInfo=new PageInfo<SaleRecordEntity>();
		pageInfo.setPageNo(saleRecordRequestEntity.getPageNo());
		pageInfo.setPageSize(saleRecordRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<SaleRecordEntity> saleRecordList = saleRecordService.getList(pageInfo, params);
		logger.debug("method [getSaleRecordEntityList] 查询销售记录列表，返回结果为："+JSON.toJSONString(saleRecordList));
		return new SuccessResponseEntity(saleRecordList);
		
	}
	
	/**
	 * goToSaleRecordAdd 销售记录添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToSaleRecordAdd(){
		String url="/sale/record/sale_record_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addSaleRecordEntity 新建销售记录
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addSaleRecord(SaleRecordEntity brandEntity){
		try {
			logger.debug("新建销售记录，传入参数为："+JSON.toJSONString(brandEntity));
			int result = saleRecordService.insertSelective(brandEntity);
			logger.debug("新建销售记录，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("销售记录添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToSaleRecordUpdate 销售记录编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToSaleRecordUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/sale/record/sale_record_update";
		SaleRecordEntity brandEntity=saleRecordService.selectByPrimaryKey(id);
		if(null!=brandEntity){
			modelMap.put("brand", brandEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateSaleRecordEntity 修改销售记录
	 * @param SaleRecordEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateSaleRecord(SaleRecordEntity brandEntity){
		try {
			logger.debug("编辑销售记录，传入参数为："+JSON.toJSONString(brandEntity));
			int result = saleRecordService.updateByPrimaryKeySelective(brandEntity);
			logger.debug("编辑销售记录，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("销售记录编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delSaleRecordEntity 删除销售记录
	 * @param SaleRecordEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delSaleRecord(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				SaleRecordEntity brandEntity=new SaleRecordEntity ();
				brandEntity.setId(id);
				brandEntity.setIsDelete(1);
				brandEntity.setUpdateTime(new Date());
				logger.debug("删除销售记录，传入参数为："+JSON.toJSONString(brandEntity));
				int result = saleRecordService.updateByPrimaryKeySelective(brandEntity);
				logger.debug("删除销售记录，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("销售记录删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<SaleRecordEntity> saleRecordList=saleRecordService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(saleRecordList.size()>0){
			res.setData(saleRecordList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
