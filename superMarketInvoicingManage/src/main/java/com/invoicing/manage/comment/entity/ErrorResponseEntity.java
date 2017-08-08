package com.invoicing.manage.comment.entity;

/**
  * 类名称： ErrorResponseEntity
  * 类描述：响应异常实体类
  * 创建日期: 2017年8月8日 下午1:36:24    
  * 创建人: WangHao
  * 修改时间：2017年8月8日 下午1:36:24
  * 修改备注：
  * @version  V1.0.0 
  *
 */
@SuppressWarnings("serial")
public class ErrorResponseEntity extends ResponseEntity
{
  public ErrorResponseEntity()
  {
    super(Integer.valueOf(1000), "系统异常"); }

  public ErrorResponseEntity(String msg) {
    super(Integer.valueOf(0), msg); }

  public ErrorResponseEntity(Integer code, String msg) {
    super(code, msg);
  }
}