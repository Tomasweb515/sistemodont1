<%@include file="conexion.jsp"%>
<%    if (request.getParameter("listar").equals("buscarproveedor")) {
        try {
            Statement st = null;
            ResultSet rs = null;
            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM pacientes order by idpaciente;");
%>
<option value="">Seleccionar</option>
<%
                while (rs.next()) {%>
<option value="<%out.print(rs.getString(1));%>,<%out.print(rs.getString(5));%>"><%out.print(rs.getString(2));%></option>
<%}
        } catch (Exception e) {
            out.println("error PSQL" + e);
        }
    }else if (request.getParameter("listar").equals("buscardoctores")) {
        try {
            Statement st = null;
            ResultSet rs = null;
            st = conn.createStatement();
            rs = st.executeQuery("SELECT idservicio, ser_nombre, ser_precio, ser_estado, doc.iddoctor, doc.doc_nombre FROM public.servicios ser,doctores doc where ser_estado='Activo';");
%>
<option value="">Seleccionar</option>
<%
                while (rs.next()) {%>
<option value="<%out.print(rs.getString(1));%>,<%out.print(rs.getString(3));%>,<%out.print(rs.getString(6));%>"><%out.print(rs.getString(2));%></option>
<%}
        } catch (Exception e) {
            out.println("error PSQL" + e);
        }
    }%>