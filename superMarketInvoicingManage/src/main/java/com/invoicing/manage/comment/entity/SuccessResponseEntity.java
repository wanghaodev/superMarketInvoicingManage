package com.invoicing.manage.comment.entity;
@SuppressWarnings("serial")
public class SuccessResponseEntity extends ResponseEntity {

	public SuccessResponseEntity(String msg) {
		super(1, msg);
	}

	public SuccessResponseEntity(Object data) {
		super(1, "正确的操作", data);
	}

	public SuccessResponseEntity() {
		super(1, "正确的操作");
	}
}
