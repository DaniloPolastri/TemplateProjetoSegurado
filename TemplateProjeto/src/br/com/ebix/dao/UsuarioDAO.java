package br.com.ebix.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.ebix.connection.ConnectionFactory;
import br.com.ebix.entity.Login;

public class UsuarioDAO {
	public boolean login(String login, String senha) {
		EntityManager em = ConnectionFactory.getEntityManager();
        boolean check = false;
        try {

            em.getTransaction().begin();
            Query consulta = em.createQuery("from Usuario usuarios where login = ?1 and senha = ?2");

            consulta.setParameter(1, login);
            consulta.setParameter(2, senha);
            consulta.setMaxResults(1);

            List<Login> usuario = consulta.getResultList();

            em.getTransaction().commit();

        } catch (Exception e) {
            em.getTransaction().rollback();
        }

        finally {
            em.close();
        }
        return check;
    }
}
