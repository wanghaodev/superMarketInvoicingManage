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
import com.invoicing.manage.comment.entity.PageInfo;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.entity.GoodsBrandEntity;
import com.invoicing.manage.request.GoodsBrandRequestEntity;
import com.invoicing.manage.service.GoodsBrandService;
 
/** 
 * 类名: GoodsBrandController   
 * 类描述: TODO.  品牌管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/base/date/brand")
public class GoodsBrandController {
	private static Logger logger=LoggerFactory.getLogger(GoodsBrandController.class);
	
	@Autowired
	private GoodsBrandService brandService;
	
	
	
	/**
	 * goToGoodsBrandList 品牌管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsBrandList(){
		String url="/basedate/brand/brand_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsBrandEntityList 获取品牌管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsBrandList(GoodsBrandRequestEntity brandRequestEntity){
		logger.debug("method [getGoodsBrandEntityList] 查询品牌管理列表，请求参数："+JSON.toJSONString(brandRequestEntity));
		PageInfo<GoodsBrandEntity> pageInfo=new PageInfo<GoodsBrandEntity>();
		pageInfo.setPageNo(brandRequestEntity.getPageNo());
		pageInfo.setPageSize(brandRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<GoodsBrandEntity> brandList = brandService.getList(pageInfo, params);
		logger.debug("method [getGoodsBrandEntityList] 查询品牌管理列表，返回结果为："+JSON.toJSONString(brandList));
		return new SuccessResponseEntity(brandList);
		
	}
	
	/**
	 * goToGoodsBrandAdd 品牌管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsBrandAdd(){
		String url="/basedate/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsBrandEntity 新建品牌管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoodsBrand(GoodsBrandEntity brandEntity){
		try {
			logger.debug("新建品牌管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = brandService.insertSelective(brandEntity);
			logger.debug("新建品牌管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("品牌管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsBrandUpdate 品牌管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsBrandUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/brand/brand_update";
		GoodsBrandEntity brandEntity=brandService.selectByPrimaryKey(id);
		if(null!=brandEntity){
			modelMap.put("brand", brandEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsBrandEntity 修改品牌管理
	 * @param GoodsBrandEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoodsBrand(GoodsBrandEntity brandEntity){
		try {
			logger.debug("编辑品牌管理，传入参数为："+JSON.toJSONString(brandEntity));
			int result = brandService.updateByPrimaryKeySelective(brandEntity);
			logger.debug("编辑品牌管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("品牌管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsBrandEntity 删除品牌管理
	 * @param GoodsBrandEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoodsBrand(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsBrandEntity brandEntity=new GoodsBrandEntity ();
				brandEntity.setId(id);
				brandEntity.setIsDelete(1);
				brandEntity.setUpdateTime(new Date());
				logger.debug("删除品牌管理，传入参数为："+JSON.toJSONString(brandEntity));
				int result = brandService.updateByPrimaryKeySelective(brandEntity);
				logger.debug("删除品牌管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("品牌管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsBrandEntity> brandList=brandService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(brandList.size()>0){
			res.setData(brandList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
