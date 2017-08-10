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
import com.invoicing.manage.entity.PurchasesRefundEntity;
import com.invoicing.manage.request.PurchasesRequestEntity;
import com.invoicing.manage.service.PurchasesRefundService;
import com.snailf.platforms.common.entity.PageInfo;

 
/** 
 * 类名: PurchasesRefundController   
 * 类描述: TODO.  进货退货管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/purchases/refund")
public class PurchasesRefundController {
	private static Logger logger=LoggerFactory.getLogger(PurchasesRefundController.class);
	
	@Autowired
	private PurchasesRefundService purchasesRefundService;
	
	
	
	/**
	 * goToPurchasesRefundList 进货退货管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToPurchasesRefundList(@RequestParam Integer flag){
//		进货管理
		String url=null;
		if(flag==1){
			 url="/purchases/purchases_list";
		}else{
			 url="/purchases/refund_list";
		}
		return new ModelAndView(url);
	}
		
	/**
	 * getPurchasesRefundEntityList 获取进货退货管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getPurchasesRefundList(PurchasesRequestEntity purchasesRequestEntity){
		logger.debug("method [getPurchasesRefundEntityList] 查询进货退货管理列表，请求参数："+JSON.toJSONString(purchasesRequestEntity));
		PageInfo<PurchasesRefundEntity> pageInfo=new PageInfo<PurchasesRefundEntity>();
		pageInfo.setPageNo(purchasesRequestEntity.getPageNo());
		pageInfo.setPageSize(purchasesRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		params.put("orderType", purchasesRequestEntity.getOrderType());
		PageInfo<PurchasesRefundEntity> purchasesRefundList = purchasesRefundService.getList(pageInfo, params);
		logger.debug("method [getPurchasesRefundEntityList] 查询进货退货管理列表，返回结果为："+JSON.toJSONString(purchasesRefundList));
		return new SuccessResponseEntity(purchasesRefundList);
		
	}
	
	/**
	 * goToPurchasesRefundAdd 进货退货管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToPurchasesRefundAdd(){
		String url="/basedate/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addPurchasesRefundEntity 新建进货退货管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addPurchasesRefund(PurchasesRefundEntity areaEntity){
		try {
			logger.debug("新建进货退货管理，传入参数为："+JSON.toJSONString(areaEntity));
			int result = purchasesRefundService.insertSelective(areaEntity);
			logger.debug("新建进货退货管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("进货退货管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToPurchasesRefundUpdate 进货退货管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToPurchasesRefundUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/area/area_update";
		PurchasesRefundEntity areaEntity=purchasesRefundService.selectByPrimaryKey(id);
		if(null!=areaEntity){
			modelMap.put("area", areaEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updatePurchasesRefundEntity 修改进货退货管理
	 * @param PurchasesRefundEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updatePurchasesRefund(PurchasesRefundEntity areaEntity){
		try {
			logger.debug("编辑进货退货管理，传入参数为："+JSON.toJSONString(areaEntity));
			int result = purchasesRefundService.updateByPrimaryKeySelective(areaEntity);
			logger.debug("编辑进货退货管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("进货退货管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delPurchasesRefundEntity 删除进货退货管理
	 * @param PurchasesRefundEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delPurchasesRefund(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				PurchasesRefundEntity areaEntity=new PurchasesRefundEntity ();
				areaEntity.setId(id);
				areaEntity.setUpdateTime(new Date());
				logger.debug("删除进货退货管理，传入参数为："+JSON.toJSONString(areaEntity));
				int result = purchasesRefundService.updateByPrimaryKeySelective(areaEntity);
				logger.debug("删除进货退货管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("进货退货管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<PurchasesRefundEntity> purchasesRefundList=purchasesRefundService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(purchasesRefundList.size()>0){
			res.setData(purchasesRefundList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
