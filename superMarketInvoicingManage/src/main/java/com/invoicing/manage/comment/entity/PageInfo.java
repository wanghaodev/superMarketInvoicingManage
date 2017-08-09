package com.invoicing.manage.comment.entity;

import java.io.Serializable;
import java.util.List;

public class PageInfo<T>
  implements Serializable
{
  private int pageNo;
  private int pageSize;
  private int total;
  private List<T> rows;

  public PageInfo()
  {
    this.pageNo = 1;
    this.pageSize = 10;
    this.total = 0;
  }

  public int getPageNo()
  {
    return this.pageNo;
  }

  public void setPageNo(int pageNo)
  {
    this.pageNo = pageNo;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public void setPageSize(int pageSize)
  {
    if (pageSize < 1)
      pageSize = 1;
    else if (pageSize <= 100);
    this.pageSize = pageSize;
  }

  public int getTotal()
  {
    return this.total;
  }

  public void setTotal(int total)
  {
    this.total = total;
  }

  public List<T> getRows()
  {
    return this.rows;
  }

  public void setRows(List<T> rows)
  {
    this.rows = rows;
  }

  public int getStart() {
    return ((this.pageNo - 1) * this.pageSize);
  }
}