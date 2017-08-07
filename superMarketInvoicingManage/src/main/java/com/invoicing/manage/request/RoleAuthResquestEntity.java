package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

@SuppressWarnings("serial")
public class RoleAuthResquestEntity extends BaseRequestEntity{
	private Long roleId;
	private Long [] authIds;
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public Long[] getAuthIds() {
		return authIds;
	}
	public void setAuthIds(Long[] authIds) {
		this.authIds = authIds;
	}
	
	

}
