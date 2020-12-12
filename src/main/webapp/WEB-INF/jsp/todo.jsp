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
							<form:input id="outra_data" onkeypress="mascaraData(this)"
								maxlength="10" autocomplete="off" path="targetDate" type="text"
								class="form-control" required="required" />
							<form:errors path="targetDate" cssClass="text-warning" />
						</fieldset>

						<button type="submit" class="btn btn-success">Adicionar</button>
						<a href="/list-todos"><button type="button"
								class="btn btn-danger">Cancelar</button></a>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	function mascaraData(val) {
		var pass = val.value;
		var expr = /[0123456789]/;

		for (i = 0; i < pass.length; i++) {
			// charAt -> retorna o caractere posicionado no índice especificado
			var lchar = val.value.charAt(i);
			var nchar = val.value.charAt(i + 1);

			if (i == 0) {
				// search -> retorna um valor inteiro, indicando a posição do inicio da primeira
				// ocorrência de expReg dentro de instStr. Se nenhuma ocorrencia for encontrada o método retornara -1
				// instStr.search(expReg);
				if ((lchar.search(expr) != 0) || (lchar > 3)) {
					val.value = "";
				}

			} else if (i == 1) {

				if (lchar.search(expr) != 0) {
					// substring(indice1,indice2)
					// indice1, indice2 -> será usado para delimitar a string
					var tst1 = val.value.substring(0, (i));
					val.value = tst1;
					continue;
				}

				if ((nchar != '/') && (nchar != '')) {
					var tst1 = val.value.substring(0, (i) + 1);

					if (nchar.search(expr) != 0)
						var tst2 = val.value.substring(i + 2, pass.length);
					else
						var tst2 = val.value.substring(i + 1, pass.length);

					val.value = tst1 + '/' + tst2;
				}

			} else if (i == 4) {

				if (lchar.search(expr) != 0) {
					var tst1 = val.value.substring(0, (i));
					val.value = tst1;
					continue;
				}

				if ((nchar != '/') && (nchar != '')) {
					var tst1 = val.value.substring(0, (i) + 1);

					if (nchar.search(expr) != 0)
						var tst2 = val.value.substring(i + 2, pass.length);
					else
						var tst2 = val.value.substring(i + 1, pass.length);

					val.value = tst1 + '/' + tst2;
				}
			}

			if (i >= 6) {
				if (lchar.search(expr) != 0) {
					var tst1 = val.value.substring(0, (i));
					val.value = tst1;
				}
			}
		}

		if (pass.length > 10)
			val.value = val.value.substring(0, 10);
		return true;
	}
</script>
<%@ include file="common/footer.jspf"%>
