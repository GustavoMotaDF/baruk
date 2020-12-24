/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ghms.baruk.bo;

import br.com.ghms.baruk.entidade.Empresas;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author onitel
 */
public class EmpresasBO {

    private static final EntityManagerFactory emf
            = Persistence.createEntityManagerFactory("barukpu");

    public List<Empresas> getEmpresas() throws Exception {
        List<Empresas> empresas;
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        
        empresas = em.createQuery("from Empresas where ativo = 1").getResultList();
        em.getTransaction().commit();
        
        em.clear();
        em.close();
        
        if(empresas.equals("") || empresas.isEmpty()){
            throw new Exception("Sem empresas cadastradas!");
        }

        return empresas;
        
    }

    public void IncluirEmpresa(String empresa, String descricao, String link) {
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();

        Empresas empresas = new Empresas();
        empresas.setEmpresa(empresa);
        empresas.setDescricao(descricao);
        empresas.setLink(link);
        empresas.setAtivo(Boolean.TRUE);
        em.persist(empresas);
        em.getTransaction().commit();

        em.clear();
        em.close();
        
    }

    public void AlterarEmpresa(String idempresa, String empresa, String descricao, String link) {
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();

        Empresas empresas = em.find(Empresas.class, Long.valueOf(idempresa));
        empresas.setDescricao(descricao);
        empresas.setEmpresa(empresa);
        empresas.setLink(link);

    }

    public Empresas getEmpresa(String idempresa) {
        Empresas empresa;
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();

        empresa = em.find(Empresas.class, Long.valueOf(idempresa));
        em.getTransaction().commit();
        em.clear();
        em.close();
        return empresa;
    }

    public Boolean excluirEmpresa(String idempresa) {
        try {
            EntityManager en = emf.createEntityManager();
            en.getTransaction().begin();

            Empresas empresas = en.getReference(Empresas.class, Long.valueOf(idempresa));
            en.remove(empresas);

            en.getTransaction().commit();
            en.clear();
            en.close();
            return true;
        } catch (Exception e) {
            System.err.println("Erro ao excluir Empresa de id " + idempresa + " :" + e.getMessage());
            return false;
        }
    }

}
