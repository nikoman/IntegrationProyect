<%@ page import="com.emergys.Categoria" %>
<%@ page import="com.emergys.InnerCategory" %>

<div class="col-12" id="urrea">
 
    <% Categoria c2 = new Categoria();   %>
    <% for (int i =0;i<c2.categorias.size();i++){
    		c2.getSubCategorias(c2.categorias.get(i).getId());
    %>
   <div class="col-4">
       <ul>
      <li> <%= c2.categorias.get(i).getName() %>
        <ul>
        <%for (int j=0;j<c2.subCategorias.size();j++) { %>
        	  <li><%=c2.subCategorias.get(j).getName() %></li>
        <%} %>
        </ul>
      </li>
        </ul>
  </div>
    <%} %>>
<div class="col-12" id="surtek">
  <div class="col-4">
    <ul>
      <li>Categoría 1
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="col-4">
    <ul>
      <li>Categoría 2
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
      <li>Categoría 3
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="col-4">
    <ul>
      <li>Categoría 4
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
      <li>Categoría 5
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="col-4">
    <ul>
      <li>Categoría 6
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
      <li>Categoría 7
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
</div>
<div class="col-12" id="lock">
  <div class="col-4">
    <ul>
      <li>Categoría 1
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="col-4">
    <ul>
      <li>Categoría 2
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
      <li>Categoría 3
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="col-4">
    <ul>
      <li>Categoría 4
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
      <li>Categoría 5
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="col-4">
    <ul>
      <li>Categoría 6
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
      <li>Categoría 7
        <ul>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
          <li>sub categoría</li>
        </ul>
      </li>
    </ul>
  </div>
</div>
