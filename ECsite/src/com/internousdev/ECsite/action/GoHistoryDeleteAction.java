package com.internousdev.ECsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ECsite.dao.HistoryPageDAO;
import com.internousdev.ECsite.dto.HistoryPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoHistoryDeleteAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;
	public HistoryPageDAO historyPageDAO = new HistoryPageDAO();
	public HistoryPageDTO historyPageDTO = new HistoryPageDTO();
	public String deleteFlg;

	public String delete() throws SQLException{
		System.out.println("delete");
		String item_transaction_id = session.get("id").toString();
		String user_master_id = session.get("login_user_id").toString();

		int res = historyPageDAO.buyItemHistoryDelete(item_transaction_id, user_master_id);

		if(res > 0){
			session.put("message", "商品情報を正しく削除しました。");
		}else if(res == 0){
			session.put("message", "商品情報の削除に失敗しました。");
		}
		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}


}
