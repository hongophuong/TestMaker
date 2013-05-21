<%-- 
    Document   : lambai
    Created on : May 20, 2013, 2:15:44 AM
    Author     : Win7
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Làm Bài Thi</title>
    </head>
    <body>
        <!--<table>-->
        <form action="nopbai" method="post">
        <%
                    List list = (List) request.getAttribute("dethi");
                    int id = 0;
                    
                    if (list.isEmpty()) {
                        for (int i = 0; i < 7; i++) {
                            out.print("<th><i>empty</i></th>");
                        }
                    }

                    Iterator<String> it = list.iterator();
                    String[] cus = new String[5];
                    while (it.hasNext()) {
                        out.print("<input type='hidden' value='"+id+"'>");
                        id = Integer.parseInt(it.next());
                        
                        out.println("<b>");
                        out.print("Câu hỏi "+id+": ");
                        out.print(it.next());
                        out.println("</b><br>");


                        for (int i = 0; i < 5; i++) {
                            out.print((i+1)+". ");
                            out.print("<input type='radio' value='"+i+"'>");

                            cus[i] = it.next();
                            out.print(cus[i]);
                            out.print("<br>");
                        }
                                                    out.print("<br>");

                    }
                %>
        </form>

        <!--</table>-->
    </body>
</html>
