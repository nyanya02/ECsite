package com.internousdev.ECsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ECsite.dao.BuyItemDAO;
import com.internousdev.ECsite.dao.SignInDAO;
import com.internousdev.ECsite.dto.BuyItemDTO;
import com.internousdev.ECsite.dto.SignInDTO;
import com.opensymphony.xwork2.ActionSupport;


public class SignInConfirmAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	public Map<String, Object> session;
	private SignInDAO signinDAO = new SignInDAO();
	private SignInDTO signinDTO = new SignInDTO();
	private BuyItemDAO buyItemDAO = new BuyItemDAO();


	public String execute(){

		String result = ERROR;

		signinDTO = signinDAO.getSignInUserInfo(loginUserId, loginPassword);
		session.put("loginUser", signinDTO);

		if(((SignInDTO)session.get("loginUser")).getLoginFlg()){
			result = SUCCESS;

			BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

			session.put("login_user_id", signinDTO.getLoginId());
			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());
		}

		return result;
	}

	public String getLoginUserId(){
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId){
		this.loginUserId = loginUserId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword = loginPassword;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
}
