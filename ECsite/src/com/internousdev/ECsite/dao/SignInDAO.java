package com.internousdev.ECsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ECsite.dto.SignInDTO;
import com.internousdev.ECsite.util.DBConnector;

public class SignInDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private SignInDTO signinDTO = new SignInDTO();

	public SignInDTO getSignInUserInfo(String loginUserId, String loginPassword){

		String sql = "SELECT * FROM login_user_transaction where login_id = ? AND login_pass = ?";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, loginUserId);
			preparedStatement.setString(2, loginPassword);

			ResultSet resultSet = preparedStatement.executeQuery();

			if(resultSet.next()){
				signinDTO.setLoginId(resultSet.getString("login_id"));
				signinDTO.setLoginId(resultSet.getString("login_pass"));
				signinDTO.setLoginId(resultSet.getString("user_name"));

				if(!(resultSet.getString("login_id").equals(null))){
					signinDTO.setLoginFlg(true);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}

		return signinDTO;
	}

	public SignInDTO getSignInDTO() {
		return signinDTO;
	}

}
