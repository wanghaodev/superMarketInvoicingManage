/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:MenuResponse.java 
 * 包名:com.invoicing.manage.respose 
 * 创建日期:2017年8月2日上午10:26:19 
 * 
*/  
  
package com.invoicing.manage.respose; 

import com.invoicing.manage.comment.entity.BaseEntity;
 
/** 
 * 类名: MenuResponse  菜单类 
 * 类描述: TODO.   菜单响应实体类
 * 创建人: WangHao.   
 * 创建日期: 2017年8月2日 上午10:26:19   
 * 修改备注：
 * @author WangHao  
 * @version  V1.0.0
 * @since JDK 1.7 
 * @see       
 */
@SuppressWarnings("serial")
public class MenuResponse extends BaseEntity{
    
	/**
     * 父权限id
     */
    private Long pid;
	/**
     * 权限名称
     */
    private String name;
    /**
     * 功能url
     */
    private String url;
    /**
     * 是否有子菜单
     */
    private String hassub;
    /**
     * 是否有效
     */
    private String hasvalid;
    /**
     * 层级id（权限，例如：app_init_cashier_001_001;app_init_cashier_001;data_dictionary ）
     */
    private String hierarchical;
    /**
     * 权限排序
     */
    private Integer orderbyId;

    /**
     * true表示显示菜单，false表示界面不显示菜单
     */
    private String showMenu;
    /**
     * menu表示菜单，button表示操作按钮
     */
    private String showType;
    /**
     * 菜单图标样式
     */
    private String iconClass;
	public Long getPid() {
		return pid;
	}
	public void setPid(Long pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getHassub() {
		return hassub;
	}
	public void setHassub(String hassub) {
		this.hassub = hassub;
	}
	public String getHasvalid() {
		return hasvalid;
	}
	public void setHasvalid(String hasvalid) {
		this.hasvalid = hasvalid;
	}
	public String getHierarchical() {
		return hierarchical;
	}
	public void setHierarchical(String hierarchical) {
		this.hierarchical = hierarchical;
	}
	public Integer getOrderbyId() {
		return orderbyId;
	}
	public void setOrderbyId(Integer orderbyId) {
		this.orderbyId = orderbyId;
	}
	public String getShowMenu() {
		return showMenu;
	}
	public void setShowMenu(String showMenu) {
		this.showMenu = showMenu;
	}
	public String getShowType() {
		return showType;
	}
	public void setShowType(String showType) {
		this.showType = showType;
	}
	public String getIconClass() {
		return iconClass;
	}
	public void setIconClass(String iconClass) {
		this.iconClass = iconClass;
	}

    
    
}
