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
import com.invoicing.manage.entity.GoodsEntity;
import com.invoicing.manage.request.GoodsRequestEntity;
import com.invoicing.manage.service.GoodsService;
import com.snailf.platforms.common.entity.PageInfo;

 
/** 
 * 类名: GoodsController   
 * 类描述: TODO. 商品管理管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/goods/info")
public class GoodsController {
	private static Logger logger=LoggerFactory.getLogger(GoodsController.class);
	
	@Autowired
	private GoodsService goodsService;
	
	
	
	/**
	 * goToGoodsList商品管理列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/page/list", method = RequestMethod.GET)
	public ModelAndView goToGoodsList(){
		String url="/goods/goodsInfo/goods_list";
		return new ModelAndView(url);
	}
		
	/**
	 * getGoodsEntityList 获取商品管理列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/page/list", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsList(GoodsRequestEntity goodsRequestEntity){
		logger.debug("method [getGoodsEntityList] 查询商品管理列表，请求参数："+JSON.toJSONString(goodsRequestEntity));
		PageInfo<GoodsEntity> pageInfo=new PageInfo<GoodsEntity>();
		pageInfo.setPageNo(goodsRequestEntity.getPageNo());
		pageInfo.setPageSize(goodsRequestEntity.getPageSize());
		Map<String,Object> params=new HashMap<String,Object>();
		PageInfo<GoodsEntity> goodsList = goodsService.getList(pageInfo, params);
		logger.debug("method [getGoodsEntityList] 查询商品管理列表，返回结果为："+JSON.toJSONString(goodsList));
		return new SuccessResponseEntity(goodsList);
		
	}
	
	/**
	 * goToGoodsAdd商品管理添加页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView goToGoodsAdd(){
		String url="/basedate/Role/Role_add";
		return new ModelAndView(url);
	}
	
	/**
	 * addGoodsEntity 新建商品管理
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addGoods(GoodsEntity goodsEntity){
		try {
			logger.debug("新建商品管理，传入参数为："+JSON.toJSONString(goodsEntity));
			int result = goodsService.insertSelective(goodsEntity);
			logger.debug("新建商品管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品管理添加异常，{}",e);
			return new ErrorResponseEntity();
		}
		
		
	}
	
	/**
	 * goToGoodsUpdate商品管理编辑页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView goToGoodsUpdate(@RequestParam Long id,ModelMap modelMap){
		String url="/goods/goodsInfo/goods_update";
		GoodsEntity goodsEntity=goodsService.selectByPrimaryKey(id);
		if(null!=goodsEntity){
			modelMap.put("goods", goodsEntity);
		}
		return new ModelAndView(url,modelMap);
	}
	
	/**
	 * updateGoodsEntity 修改商品管理
	 * @param GoodsEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity updateGoods(GoodsEntity goodsEntity){
		try {
			logger.debug("编辑商品管理，传入参数为："+JSON.toJSONString(goodsEntity));
			int result = goodsService.updateByPrimaryKeySelective(goodsEntity);
			logger.debug("编辑商品管理，返回结果为："+JSON.toJSONString(result));
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品管理编辑异常，{}",e);
			return new ErrorResponseEntity();
		}
		
	}
	
	/**
	 * delGoodsEntity 删除商品管理
	 * @param GoodsEntity
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/del", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity delGoods(@RequestParam Long id){
		try {
			if(null!=String.valueOf(id)){
				GoodsEntity goodsEntity=new GoodsEntity ();
				goodsEntity.setId(id);
				goodsEntity.setIsDelete(0);
				goodsEntity.setUpdateTime(new Date());
				logger.debug("删除商品管理，传入参数为："+JSON.toJSONString(goodsEntity));
				int result = goodsService.updateByPrimaryKeySelective(goodsEntity);
				logger.debug("删除商品管理，返回结果为："+JSON.toJSONString(result));
			}
			return new SuccessResponseEntity();
		} catch (Exception e) {
			logger.info("商品管理删除异常，{}",e);
			return new ErrorResponseEntity();
		}
	}
	
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity getRoleList(){
		Map<String,Object> queryMap=new HashMap<String,Object>();
		List<GoodsEntity> goodsList=goodsService.getList(queryMap);
		ResponseEntity res=new ResponseEntity();
		if(goodsList.size()>0){
			res.setData(goodsList);
			logger.info("method [getRoleList],返回结果：{}",res);
		}
		return res;
		
	}
	

}
