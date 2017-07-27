<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
    <div class="container-fluid">
        <!-- <div class="jumbotron">
            <div id="main" style="height:550px"></div>
        </div> -->
        <div class="panel panel-default">
            <div class="panel-heading">
               	 机构/商户管理流程
            </div>
            <div class="panel-body narrow-input">
                <a href="####"><img class="	flowChart" src="<%=request.getContextPath() %>/static/image/rtryu.png" alt="" style="
               
                "/></a>
            </div><!-- /.panel-body -->
        </div><!-- /.panel -->
        
        <div class="panel panel-default clasbordernone">
            <div class="panel-heading" style="border:none;">机构/商户运营数据</div>
            <div class="panel-body narrow-input" style="padding:0">
                <div class="table-responsive" style="padding:0">
                    <table class="table table-bordered half-table panel-tabel">
                        <tbody>
                            <tr class="clatr">
                               <!--  <th>机构总数</th>
                                <td id="orgCount">0个</td>
                                <th>商户总数</th>
                                <td id="merchantCount">0个</td> -->
                                <td>
                                	<div class="cladivimg">
                                		<div>
                                			<img src="<%=request.getContextPath() %>/static/image/bang_03.png" alt="" />
                                		</div>
                                        <p class="clap1">机构总数</p>
                                        <p class="clap2"><span class="claspan1">${orgCount }</span>个</p>
                                	</div>	
                                	
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_05.png" alt="" />
                                        </div>
                                        <p class="clap1">店铺总数</p>
                                        <p class="clap2"><span class="claspan2">${storeCount }</span>个</p>
                                	</div>
                                
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_07.png" alt="" />
                                        </div>
                                	   <p class="clap1">今日收益金额</p>
                                       <p class="clap2"><span class="claspan3">${todayIncomeAmount }</span>元</p>
                                	</div>
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_09.png" alt="" />
                                        </div>
                                	 <p class="clap1">累计收益金额</p>
                                     <p class="clap2"><span class="claspan4">${incomeAmount }</span>元</p>
                                	</div>
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_11.png" alt="" />
                                        </div>
                                	 <p class="clap1">累计卡充值金额</p>
                                     <p class="clap2"><span class="claspan5">${cardRechargeAmount }</span>元</p>
                                	</div>
                                
                                </td>
                                
                            </tr>
                           
                           
                            
                             
                        </tbody>
                    </table>
                </div><!-- /.table-responsive -->
            </div><!-- /.panel-body -->
        </div><!-- /.panel -->
    </div>
