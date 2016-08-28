<%@ page import="com.emergys.Categoria" %>
<%@ page import="com.emergys.InnerCategory" %>

<%
Categoria c = new Categoria();
 %>
 <jsp:useBean id="c2" class="com.emergys.Categoria" scope="application"/> 

<div class="col-12" id="urrea">
 
    <%
     c2 = new Categoria(); 
     InnerCategory[]  categos= null;
     c2.categorias.copyInto(categos); %>
    <% for (int i =0;i<categos.length;i++){
    		InnerCategory catego = categos[i];
    		c2.getSubCategorias(catego.getId());
    		InnerCategory[] subCategos=null;
    		c2.subCategorias.copyInto(subCategos);
     %>
   <div class="col-4">
       <ul>
      <li> <%= catego.getName()%>>
        <ul>
        <%for (int j=0;j<subCategos.length;j++) {
        InnerCategory subCatego = subCategos[j] ;
        
        %>
        	  <li><%subCatego.getName(); %></li>
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
