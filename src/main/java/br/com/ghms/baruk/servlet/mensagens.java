/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ghms.baruk.servlet;

import br.com.ghms.baruk.bo.ContatenosBO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author onitel
 */
@WebServlet(name = "mensagens", urlPatterns = {"/CaixaDeMensagens"})
public class mensagens extends HttpServlet {
    
        private ContatenosBO contatenosbo = new ContatenosBO();



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

         try {
            //LISTAR EMPRESAS CADASTRADAS
            req.setAttribute("contatenos", contatenosbo.getConstatenos());

        } catch (Exception e) {
            //MENSAGEM DE ERRO
            req.setAttribute("mensagemErro", "Sem mensagens recebidas!" + e.getMessage() );

        }
        req.getRequestDispatcher("/includes/logado/mensagens.jsp").forward(req, resp);
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
        req.getRequestDispatcher("/includes/logado/mensagens.jsp").forward(req, resp);
    }


}
