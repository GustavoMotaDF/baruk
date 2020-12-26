/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ghms.baruk.entidade;

import java.util.Objects;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import static javax.persistence.FetchType.LAZY;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

/**
 *
 * @author onitel
 */
@Entity
public class Contatenos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idmensagem;
    @Lob @Basic(fetch=LAZY)
    @Column(name="mensagem", nullable=false, length=1000)    
    private String mensagem;
    private String nome;
    private String telefone;
    private String email;

    public Long getIdmensagem() {
        return idmensagem;
    }

    public void setIdmensagem(Long idmensagem) {
        this.idmensagem = idmensagem;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + Objects.hashCode(this.idmensagem);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Contatenos other = (Contatenos) obj;
        if (!Objects.equals(this.idmensagem, other.idmensagem)) {
            return false;
        }
        return true;
    }
    
    
}
