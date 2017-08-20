package com.invoicing.manage.controller; 

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.invoicing.manage.comment.entity.BaseRequestEntity;
import com.invoicing.manage.comment.entity.PageInfo;
import com.invoicing.manage.comment.entity.ResponseEntity;
import com.invoicing.manage.comment.entity.SuccessResponseEntity;
import com.invoicing.manage.respose.StatisticResponseEntity;
 
/** 
 * 类名: StatisticController   
 * 类描述: TODO.  统计管理 
 * 创建人: WangHao.   
 * 创建日期: 2017年7月28日 上午10:50:43   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@Controller
@RequestMapping("/invoicing/statistic")
public class StatisticController {
	private static Logger logger=LoggerFactory.getLogger(StatisticController.class);
	
	/*@Autowired
	private StatisticService brandService;*/
	
	
	
	/**
	 * goToStatisticList 机构收银统计列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/org/cash/statistic", method = RequestMethod.GET)
	public ModelAndView goToOrgStatisticList(){
		String url="/statistic/org_statistic";
		return new ModelAndView(url);
	}
	
	/**
	 * goToStatisticList 门店收银统计列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/store/cash/statistic", method = RequestMethod.GET)
	public ModelAndView goToStoreStatisticList(){
		String url="/statistic/store_statistic";
		return new ModelAndView(url);
	}
	
	/**
	 * goToStatisticList 商品销售额统计列表页
	 * @return 返回类型为 ModelAndView
	 * @exception
	 * @since JDK 1.7
	 */
	@RequestMapping(value = "/goods/salse/statistic", method = RequestMethod.GET)
	public ModelAndView goToStatisticList(){
		String url="/statistic/goods_sale_statistic";
		return new ModelAndView(url);
	}
	
	/**
	 * getStatisticEntityList 获取机构统计列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/org/cash/statistic", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getStatisticList(BaseRequestEntity brandRequestEntity){
		PageInfo pageList = new PageInfo();
		pageList.setPageNo(1);
		pageList.setPageSize(10);
		pageList.setRows(this.buildOrgTotal());
		pageList.setTotal(3);
		logger.debug("method [getStatisticEntityList] 查询统计机构收银，返回结果为："+JSON.toJSONString(pageList));
		return new SuccessResponseEntity(pageList);
		
	}
	
	/**
	 * getStatisticEntityList 获取门店统计列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/store/cash/statistic", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getStoreStatisticTotal(BaseRequestEntity brandRequestEntity){
		PageInfo pageList = new PageInfo();
		pageList.setPageNo(1);
		pageList.setPageSize(10);
		pageList.setRows(this.buildStoreTotal());
		pageList.setTotal(3);
		logger.debug("method [getStatisticEntityList] 查询统计门店收银列表，返回结果为："+JSON.toJSONString(pageList));
		return new SuccessResponseEntity(pageList);
		
	}
	
	/**
	 * getStatisticEntityList 获取门店统计列表
	 * @param requestParams
	 * @return 返回类型为 ResponseEntity
	 * @exception
	 * @since JDK 1.7
	 */
	
	@RequestMapping(value = "/goods/salse/statistic", method = RequestMethod.POST)
	@ResponseBody
	 public ResponseEntity getGoodsSaleStatistic(BaseRequestEntity brandRequestEntity){
		PageInfo pageList = new PageInfo();
		pageList.setPageNo(1);
		pageList.setPageSize(10);
		pageList.setRows(this.buildGoosSaleTotal());
		pageList.setTotal(3);
		logger.debug("method [getStatisticEntityList] 查询商品统计，返回结果为："+JSON.toJSONString(pageList));
		return new SuccessResponseEntity(pageList);
		
	}
	
	/**
	 * 构造机构收银统计数据
	 */
	private List<StatisticResponseEntity> buildOrgTotal(){
		List<StatisticResponseEntity> list=new ArrayList<StatisticResponseEntity>();
		for (int i = 0; i < 3; i++) {
			StatisticResponseEntity statistic=new StatisticResponseEntity();
			statistic.setOrgName("家乐福0"+i);
			statistic.setOrgId(Long.valueOf("100"+i));
			statistic.setParentOrgName("家乐福");
			statistic.setCashPay(Long.valueOf(100+31+i));
			statistic.setBankPay(Long.valueOf(100+i));
			statistic.setWeinxinPay(Long.valueOf(100+2+i));
			statistic.setZhifubaoPay(Long.valueOf(100-10+i));
			statistic.setRePayCardPay(Long.valueOf(100-29+i));
			//合计
			statistic.setTotalAmount(Long.valueOf(statistic.getCashPay() + statistic.getBankPay()
					+ statistic.getWeinxinPay() + statistic.getZhifubaoPay()
					+ statistic.getRePayCardPay()));
			list.add(statistic);	
		}
		return list;
	}
	
	/**
	 * 构造商户收银统计数据
	 */
	private List<StatisticResponseEntity> buildStoreTotal(){
		List<StatisticResponseEntity> list=new ArrayList<StatisticResponseEntity>();
		for (int i = 0; i < 3; i++) {
			StatisticResponseEntity statistic=new StatisticResponseEntity();
			statistic.setOrgName("家乐福"+i);
			statistic.setStoreId(Long.valueOf("10011"+i));
			statistic.setStoreName("家乐福001"+i+"店");
			statistic.setCashPay(Long.valueOf(100+31+i));
			statistic.setBankPay(Long.valueOf(100+i));
			statistic.setWeinxinPay(Long.valueOf(100+2+i));
			statistic.setZhifubaoPay(Long.valueOf(100-10+i));
			statistic.setRePayCardPay(Long.valueOf(100-29+i));
			//合计
			statistic.setTotalAmount(Long.valueOf(statistic.getCashPay() + statistic.getBankPay()
					+ statistic.getWeinxinPay() + statistic.getZhifubaoPay()
					+ statistic.getRePayCardPay()));
			list.add(statistic);
		}
		return list;
	}
	
	
	/**
	 * 构造商品销售统计数据
	 */
	private List<StatisticResponseEntity> buildGoosSaleTotal(){
		List<StatisticResponseEntity> list=new ArrayList<StatisticResponseEntity>();
		Long saleTotal=11110l;
		for (int i = 0; i < 3; i++) {
			StatisticResponseEntity statistic=new StatisticResponseEntity();
			statistic.setStoreName("家乐福0"+i);
			statistic.setGoodsName("产品01"+i);
			statistic.setGoodsSpu("010212"+i);
			statistic.setSaleNum(10+i);
			statistic.setSaleAmount(Long.valueOf(1000+i));
			saleTotal+=statistic.getSaleAmount();
			DecimalFormat   df =new DecimalFormat("#.00");
			Double scale=Double.valueOf(statistic.getSaleAmount())/Double.valueOf(saleTotal);
			logger.info("所占比例："+df.format(scale));
			statistic.setGoodsScale(Double.valueOf(df.format(scale*100)));
			list.add(statistic);
		}
		return list;
	}
	

}
