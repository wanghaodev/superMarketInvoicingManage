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
import com.invoicing.manage.entity.GoodsSupplierEntity;
import com.invoicing.manage.request.GoodsSupplierRequestEntity;
import com.invoicing.manage.service.GoodsSupplierService;
import com.invoicing.manage.comment.entity.PageInfo;
 
/** 
 * 类名: GoodsSupplierController   
 * 类描述: TODO.  单位管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/base/date/supplier")
public class GoodsSupplierController {
	private static Logger logger=LoggerFactory.getLogger(GoodsSupplierController.class);
	
	@Autowired
	private GoodsSupplierService goodsSupplierService;
	
	
	
	/**
	 * goToGoodsSupplierList 单位管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsSupplierList(){
		String url="/basedate/supplier/supplier_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsSupplierEntityList 获取单位管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsSupplierList(GoodsSupplierRequestEntity supplierRequestEntity){
		logger.debug("method [getGoodsSupplierEntityList] 查询单位管理列表，请求参数："+JSON.toJSONString(supplierRequestEntity));
		PageInfo<GoodsSupplierEntity> pageInfo=new PageInfo<GoodsSupplierEntity>();
		pageInfo.setPageNo(supplierRequestEntity.getPageNo());
		pageInfo.setPageSize(supplierRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<GoodsSupplierEntity> supplierList = goodsSupplierService.getList(pageInfo, params);
		logger.debug("method [getGoodsSupplierEntityList] 查询单位管理列表，返回结果为："+JSON.toJSONString(supplierList));
		return new SuccessResponseEntity(supplierList);
		
	}
	
	/**
	 * goToGoodsSupplierAdd 单位管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsSupplierAdd(){
		String url="/basedate/supplier/supplier_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsSupplierEntity 新建单位管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoodsSupplier(GoodsSupplierEntity supplierEntity){
		try {
			logger.debug("新建单位管理，传入参数为："+JSON.toJSONString(supplierEntity));
			int result = goodsSupplierService.insertSelective(supplierEntity);
			logger.debug("新建单位管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("单位管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsSupplierUpdate 单位管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsSupplierUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/supplier/supplier_update";
		GoodsSupplierEntity supplierEntity=goodsSupplierService.selectByPrimaryKey(id);
		if(null!=supplierEntity){
			modelMap.put("supplier", supplierEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsSupplierEntity 修改单位管理
	 * @param GoodsSupplierEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoodsSupplier(GoodsSupplierEntity supplierEntity){
		try {
			logger.debug("编辑单位管理，传入参数为："+JSON.toJSONString(supplierEntity));
			int result = goodsSupplierService.updateByPrimaryKeySelective(supplierEntity);
			logger.debug("编辑单位管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("单位管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsSupplierEntity 删除单位管理
	 * @param GoodsSupplierEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoodsSupplier(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsSupplierEntity supplierEntity=new GoodsSupplierEntity ();
				supplierEntity.setId(id);
				supplierEntity.setIsDelete(1);
				supplierEntity.setUpdateTime(new Date());
				logger.debug("删除单位管理，传入参数为："+JSON.toJSONString(supplierEntity));
				int result = goodsSupplierService.updateByPrimaryKeySelective(supplierEntity);
				logger.debug("删除单位管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("单位管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getsupplierList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsSupplierEntity> supplierList=goodsSupplierService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(supplierList.size()>0){
			res.setData(supplierList);
			logger.info("method [getsupplierList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
