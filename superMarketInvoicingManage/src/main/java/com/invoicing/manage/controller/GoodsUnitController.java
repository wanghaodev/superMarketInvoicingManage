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
import com.invoicing.manage.entity.GoodsUnitEntity;
import com.invoicing.manage.request.GoodsUnitRequestEntity;
import com.invoicing.manage.service.GoodsUnitService;
import com.invoicing.manage.comment.entity.PageInfo;
 
/** 
 * 类名: GoodsUnitController   
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
@RequestMapping("/invoicing/base/date/unit")
public class GoodsUnitController {
	private static Logger logger=LoggerFactory.getLogger(GoodsUnitController.class);
	
	@Autowired
	private GoodsUnitService goodsUnitService;
	
	
	
	/**
	 * goToGoodsUnitList 单位管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsUnitList(){
		String url="/basedate/unit/unit_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsUnitEntityList 获取单位管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsUnitList(GoodsUnitRequestEntity unitRequestEntity){
		logger.debug("method [getGoodsUnitEntityList] 查询单位管理列表，请求参数："+JSON.toJSONString(unitRequestEntity));
		PageInfo<GoodsUnitEntity> pageInfo=new PageInfo<GoodsUnitEntity>();
		pageInfo.setPageNo(unitRequestEntity.getPageNo());
		pageInfo.setPageSize(unitRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		params.put("unitName", unitRequestEntity.getUnitName());
		params.put("unitEnglishName", unitRequestEntity.getUnitEnglishName());
		PageInfo<GoodsUnitEntity> unitList = goodsUnitService.getList(pageInfo, params);
		logger.debug("method [getGoodsUnitEntityList] 查询单位管理列表，返回结果为："+JSON.toJSONString(unitList));
		return new SuccessResponseEntity(unitList);
		
	}
	
	/**
	 * goToGoodsUnitAdd 单位管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsUnitAdd(){
		String url="/basedate/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsUnitEntity 新建单位管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoodsUnit(GoodsUnitEntity unitEntity){
		try {
			logger.debug("新建单位管理，传入参数为："+JSON.toJSONString(unitEntity));
			int result = goodsUnitService.insertSelective(unitEntity);
			logger.debug("新建单位管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("单位管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsUnitUpdate 单位管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsUnitUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/basedate/unit/unit_update";
		GoodsUnitEntity unitEntity=goodsUnitService.selectByPrimaryKey(id);
		if(null!=unitEntity){
			modelMap.put("unit", unitEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsUnitEntity 修改单位管理
	 * @param GoodsUnitEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoodsUnit(GoodsUnitEntity unitEntity){
		try {
			logger.debug("编辑单位管理，传入参数为："+JSON.toJSONString(unitEntity));
			int result = goodsUnitService.updateByPrimaryKeySelective(unitEntity);
			logger.debug("编辑单位管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("单位管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsUnitEntity 删除单位管理
	 * @param GoodsUnitEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoodsUnit(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsUnitEntity unitEntity=new GoodsUnitEntity ();
				unitEntity.setId(id);
				unitEntity.setIsDelete(1);
				unitEntity.setUpdateTime(new Date());
				logger.debug("删除单位管理，传入参数为："+JSON.toJSONString(unitEntity));
				int result = goodsUnitService.updateByPrimaryKeySelective(unitEntity);
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
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsUnitEntity> unitList=goodsUnitService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(unitList.size()>0){
			res.setData(unitList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
