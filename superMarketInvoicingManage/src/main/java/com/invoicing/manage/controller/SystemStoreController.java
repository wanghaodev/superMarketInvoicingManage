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
import com.invoicing.manage.entity.AreaEntity;
import com.invoicing.manage.entity.SystemStoreEntity;
import com.invoicing.manage.request.StoreRequestEntity;
import com.invoicing.manage.service.AreaService;
import com.invoicing.manage.service.SystemStoreService;
import com.invoicing.manage.comment.entity.PageInfo;

 
/** 
 * 类名: SystemStoreController   
 * 类描述: TODO.门店 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/system/store")
public class SystemStoreController {
	private static Logger logger=LoggerFactory.getLogger(SystemStoreController.class);
	
	@Autowired
	private SystemStoreService systemStoreService;
	
	@Autowired
	private AreaService areaService;
	
	
	
	/**
	 * goToSystemStoreList门店列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToSystemStoreList(){
		String url="/system/store/store_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getSystemStoreEntityList 获取门店列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getSystemStoreList(StoreRequestEntity storeRequestEntity){
		logger.debug("method [getSystemStoreEntityList] 查询门店列表，请求参数："+JSON.toJSONString(storeRequestEntity));
		PageInfo<SystemStoreEntity> pageInfo=new PageInfo<SystemStoreEntity>();
		pageInfo.setPageNo(storeRequestEntity.getPageNo());
		pageInfo.setPageSize(storeRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<SystemStoreEntity> goodsList = systemStoreService.getList(pageInfo, params);
		logger.debug("method [getSystemStoreEntityList] 查询门店列表，返回结果为："+JSON.toJSONString(goodsList));
		return new SuccessResponseEntity(goodsList);
		
	}
	
	/**
	 * goToSystemStoreAdd门店添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView goToSystemStoreAdd(ModelMap modelMap){
		String url="/system/store/store_add";
		
		//获取省份
		Map<String,Object> queryMap=new HashMap<String,Object>();
		queryMap.put("pid",1);
		List<AreaEntity> areaList = areaService.getList(queryMap);
		logger.info("areaList:"+JSON.toJSONString(areaList));
		if (areaList.size()>0) {
			modelMap.put("areaList",areaList);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * addSystemStoreEntity 新建门店
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addSystemStore(SystemStoreEntity goodsEntity){
		try {
			logger.debug("新建门店，传入参数为："+JSON.toJSONString(goodsEntity));
			int result = systemStoreService.insertSelective(goodsEntity);
			logger.debug("新建门店，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("门店添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	
	/**
	 * updateSystemStoreEntity 修改门店
	 * @param SystemStoreEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateSystemStore(SystemStoreEntity goodsEntity){
		try {
			logger.debug("编辑门店，传入参数为："+JSON.toJSONString(goodsEntity));
			int result = systemStoreService.updateByPrimaryKeySelective(goodsEntity);
			logger.debug("编辑门店，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("门店编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delSystemStoreEntity 删除门店
	 * @param SystemStoreEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delSystemStore(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				SystemStoreEntity goodsEntity=new SystemStoreEntity ();
				goodsEntity.setId(id);
				goodsEntity.setStatus(0);
				goodsEntity.setUpdateTime(new Date());
				logger.debug("删除门店，传入参数为："+JSON.toJSONString(goodsEntity));
				int result = systemStoreService.updateByPrimaryKeySelective(goodsEntity);
				logger.debug("删除门店，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("门店删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<SystemStoreEntity> goodsList=systemStoreService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(goodsList.size()>0){
			res.setData(goodsList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	
	/**
	 * @fun 加载：省市区
	 * @param modelMap
	 * @param pid
	 * @return
	 */
	@RequestMapping(value = "/get/city/list", method = RequestMethod.POST)
	@ResponseBody
	public Object loadAreaList(ModelMap modelMap,String pid) {
		//获取省份
				Map<String,Object> queryMap=new HashMap<String,Object>();
				queryMap.put("pid",pid);
		List<AreaEntity> areaList = areaService.getList(queryMap);
		logger.info("加载区县："+JSON.toJSONString(areaList));
		//获取：子集省市区
		if (areaList.size()>0) {
			return new SuccessResponseEntity(areaList);
		}
		return null;
	}

}
