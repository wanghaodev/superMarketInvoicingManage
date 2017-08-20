package com.invoicing.manage.util;

public enum GoodsEnum {
	 pay_method_cash(1,"现金支付"),
	 pay_method_bank(2,"银行卡支付"),
	 pay_method_weixin(3,"微信支付"),
	 pay_method_zhifubao(4,"支付宝支付"),
	 pay_method_repay_card(5,"现金支付");
	 
	 private Integer code;
	 private String Msg;
	
	 private GoodsEnum(){
		 
	 }
	 
	 private GoodsEnum(Integer code, String msg) {
		this.code = code;
		Msg = msg;
	}
	 
	 
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMsg() {
		return Msg;
	}
	public void setMsg(String msg) {
		Msg = msg;
	}
	 
	 

}
