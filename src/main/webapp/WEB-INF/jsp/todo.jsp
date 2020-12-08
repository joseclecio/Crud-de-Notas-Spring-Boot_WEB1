<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
 <div class="row">
  <div class="col-md-6 col-md-offset-3 ">
   <div class="panel panel-success">
    <div class="panel-heading">Adicionar Notas</div>
    <div class="panel-body">
     <form:form method="post" modelAttribute="todo">
      <form:hidden path="id" />
      <fieldset class="form-group">
       <form:label path="description">Descrição</form:label>
       <form:input path="description" type="text" class="form-control"
        required="required" />
       <form:errors path="description" cssClass="text-warning" />
      </fieldset>

      <fieldset class="form-group">
       <form:label path="targetDate">Data da Nota</form:label>
       <form:input path="targetDate" type="text" class="form-control" required="required" />
       <form:errors path="targetDate" cssClass="text-warning" />
      </fieldset>

      <button type="submit" class="btn btn-success">Adicionar</button>
      <a href="/list-todos"><button type="button" class="btn btn-danger">Cancelar</button></a>
      
     </form:form>
    </div>
   </div>
  </div>
 </div>
</div>
<%@ include file="common/footer.jspf"%>