package br.com.ebix.test;

import br.com.ebix.dao.DaoGenerico;
import br.com.ebix.entity.Login;

public class Test {
	public static void main(String[] args) {
		
		Login login = new Login();
		
		DaoGenerico<Login> daoLogin = new DaoGenerico<>();
		
		login.setUsuario("Danilo");
	login.setSenha("3301");
		
		daoLogin.saveOrUpdate(login);
		
	

		System.out.println("Foi");
//		System.out.println(daoLogin.findById(Login.class, login.getId()));
		
	}
}
