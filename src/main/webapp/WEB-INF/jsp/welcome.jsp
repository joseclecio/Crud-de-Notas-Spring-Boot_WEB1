<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">

	<div class="panel panel-info">
		<div class="panel-heading">Página Principal</div>
		<div class="panel-body">
			Seja Bem-Vindo(a) ${name}!! <a href="/list-todos">Clique Aqui</a>
			para criar notas!!.
		</div>
	</div>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img style="width: 50%; height: 55%; position: relative; left:25%;" src="https://cdn.educba.com/academy/wp-content/uploads/2018/09/JSP-Interview-Questions.jpg"
					">
			</div>

			<div class="item">
				<img style="width: 50%; height: 55%; position: relative; left:25%;" src="https://arquivo.devmedia.com.br/marketing/img/guia-hibernate-38312.png"
					>
			</div>

			<div class="item">
				<img style="width: 50%; height: 55%; position: relative; left:25%;" src="https://d1.awsstatic.com/asset-repository/products/amazon-rds/1024px-MySQL.ff87215b43fd7292af172e2a5d9b844217262571.png"
					>
			</div>
			
			<div class="item">
				<img style="width: 50%; height: 55%; position: relative; left:25%;" src="https://miro.medium.com/max/600/1*gxXLMIuJDHCH7fwIgEP1cg.png"
					>
			</div>
			
			<div class="item">
				<img style="width: 50%; height: 55%; position: relative; left:25%;" src="https://miro.medium.com/max/1200/1*GCu4cNWIU1ElDbY7d4ycZw.png"
					a>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Anterior</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Próximo</span>
		</a>
	</div>
</div>


<%@ include file="common/footer.jspf"%>
