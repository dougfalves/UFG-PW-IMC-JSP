package Java.imc.servlet;

import Java.imc.model.ImcModel;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/imc")
public class ImcController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String resultado = "";
		try{
			String altura_form = req.getParameter("altura");
			String peso_form = req.getParameter("peso");
			String sexo_form = req.getParameter("sexo");
			
			
			if (altura != null && peso != null) {
				resultado = ImcModel.resultadoImc(altura_form, peso_form, sexo_form);
			} else {
				resultado = "<h1>Informe os valores para calcular o IMC</h3>";
			}
			
			req.setAttribute("resultado", resultado);
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, res);
		}catch(Exception e){
			resultado = "Ocorreu um erro nao previsto!";
			req.setAttribute("resultado", resultado);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
			
		}
	}
}