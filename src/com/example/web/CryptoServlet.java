package com.example.web;

import java.io.IOException;
import com.example.util.CryptoUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CryptoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String inputText = request.getParameter("inputText");
        String secretKey = request.getParameter("secretKey");
        String result = "";
        String error = null;

        try {
            if ("encrypt".equals(action)) {
                result = CryptoUtils.encrypt(secretKey, inputText);
            } else if ("decrypt".equals(action)) {
                result = CryptoUtils.decrypt(secretKey, inputText);
            }
        } catch (Exception e) {
            error = "Error: " + e.getMessage();
            e.printStackTrace();
        }

        request.setAttribute("result", result);
        request.setAttribute("error", error);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}