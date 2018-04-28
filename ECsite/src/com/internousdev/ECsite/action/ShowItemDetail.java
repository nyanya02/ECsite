package com.internousdev.ECsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ECsite.dao.BuyItemDAO;
import com.internousdev.ECsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;


public class ShowItemDetail extends ActionSupport implements SessionAware{

	public Map<String, Object> session;
	private BuyItemDAO buyItemDAO = new BuyItemDAO();

	public String execute(){

		BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

		session.put("id", buyItemDTO.getId());
		session.put("buyItem_name", buyItemDTO.getItemName());
		session.put("buyItem_price", buyItemDTO.getItemPrice());

		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
