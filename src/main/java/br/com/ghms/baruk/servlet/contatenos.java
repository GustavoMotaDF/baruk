/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ghms.baruk.servlet;

import br.com.ghms.baruk.bo.ContatenosBO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alephtav
 */
@WebServlet(name = "contatenos", urlPatterns = {"/Contate-nos"})
public class contatenos extends HttpServlet {
    private ContatenosBO contatenosbo = new ContatenosBO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
           if (Objects.nonNull(req.getParameter("enviar"))) {
               try{
                   contatenosbo.IncluirMensagem(req.getParameter("mensagem"), req.getParameter("nome"), req.getParameter("telefone"), req.getParameter("email"));
                    req.setAttribute("mensagemSucesso",  "<div id=\"foo\" class=\"alert alert-success alert-dismissible fade show \" role=\"alert\"> <strong> Mensagem enviada com sucesso!<br>Caso seja alguma duvida, iremos responder via WhatsApp e/ou Email.<br>Até Logo, "+req.getParameter("nome")+" ^.^ </strong> <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button> </div>"
                    + "<script>$().ready(function() {\n" +
                        "	setTimeout(function () {\n" +
                        "		$('#foo').hide(); // \"foo\" é o id do elemento que seja manipular.\n" +
                        "	}, 10000); // O valor é representado em milisegundos.\n" +
                        "});</script>");
               }catch(Exception e){
                   req.setAttribute("mensagemErro", "Erro ao Enviar a mensagem" + e.getMessage());
               
               }
           
           } 
           
           try {
            //LISTAR EMPRESAS CADASTRADAS
            req.setAttribute("contatenos", contatenosbo.getConstatenos());

        } catch (Exception e) {
            //MENSAGEM DE ERRO
            req.setAttribute("mensagemErro", "Sem mensagens recebidas!" + e.getMessage() );

        }
        
        
        
        
         req.getRequestDispatcher("/paginas/contatenos.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         try {
            //LISTAR EMPRESAS CADASTRADAS
            req.setAttribute("contatenos", contatenosbo.getConstatenos());

        } catch (Exception e) {
            //MENSAGEM DE ERRO
            req.setAttribute("mensagemErro", "Sem mensagens recebidas!" + e.getMessage() );

        }
        
        
        req.getRequestDispatcher("/paginas/contatenos.jsp").forward(req, resp);
        
        
        
    }


}
