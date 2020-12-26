/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ghms.baruk.bo;

import br.com.ghms.baruk.entidade.Contatenos;
import br.com.ghms.baruk.entidade.Empresas;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author onitel
 */
public class ContatenosBO {
     private static final EntityManagerFactory emf
            = Persistence.createEntityManagerFactory("barukpu");

    public List<Contatenos> getConstatenos() throws Exception {
        List<Contatenos> contatenos;
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        
        contatenos = em.createQuery("from Contatenos").getResultList();
        em.getTransaction().commit();
        
        em.clear();
        em.close();
        
        if(contatenos.equals("") || contatenos.isEmpty()){
            throw new Exception("Sem mensagens registradas!");
        }

        return contatenos;
        
    }
    public void IncluirMensagem(String mensagem, String nome, String telefone, String email) {
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();

        Contatenos contatenos = new Contatenos();
        contatenos.setMensagem(mensagem);
        contatenos.setNome(nome);
        contatenos.setTelefone(telefone);
        contatenos.setEmail(email);
        em.persist(contatenos);
        em.getTransaction().commit();

        em.clear();
        em.close();
        
    }
}
