/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ghms.baruk.servlet;

import br.com.ghms.baruk.bo.EmpresasBO;
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
 * @author onitel
 */
@WebServlet(name = "empresas", urlPatterns = {"/Empresas"})
public class empresas extends HttpServlet {

    private EmpresasBO empresaBO = new EmpresasBO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (Objects.nonNull(req.getParameter("cadastrar"))) {
            try {
                empresaBO.IncluirEmpresa(req.getParameter("empresa"), req.getParameter("descricao"), req.getParameter("link"));

                req.setAttribute("mensagemSucesso", "Empresa Adicionada com sucesso!");
            } catch (Exception e) {
                req.setAttribute("mensagemErro", "Erro ao adicionar a empresa" + e.getMessage());
            }

        } else if (Objects.nonNull(req.getParameter("editar"))) {
            //Tratando editar
            req.setAttribute("empresaeditando", empresaBO.getEmpresa(req.getParameter("idempresa")));
        }

        try {

            req.setAttribute("empresas", empresaBO.getEmpresas());

        } catch (Exception e) {

            req.setAttribute("mensagemErro", "Sem empresas cadastradas!");

        }

        req.getRequestDispatcher("/paginas/empresas.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            req.setAttribute("empresas", empresaBO.getEmpresas());

        } catch (Exception e) {

            req.setAttribute("mensagemErro", "Sem empresas cadastradas!");

        }

        req.getRequestDispatcher("/paginas/empresas.jsp").forward(req, resp);
    }

}
