# Crud-de-Notas-Spring-Boot
## Um Crud de Notas Spring Boot utilizando as tecnologias Spring MVC + Spring Security + JSP + Hibernate + MySQL
<br/>
<br/>

# Modos de Instalação
## Passo 1:
### > Vá até a pasta *📂src* -> *📂main* -> *📂resources* -> *📄application.properties*

## Passo 2:
### > Vá até o arquivo *📄application.properties* e dê 2 clicks 

## Passo 3:
### > Nesse arquivo você poderá configurar o banco, no meu caso configurei com o nome de *users_database*, más você poderá colocar qualquer nome. Más no MySQL terá que ser o mesmo nome. 
### > Defina a o usuário que você colocou no seu banco MySQL em *spring.datasource.username = root* e sua senha em *spring.datasource.password = root*, por padrão eu coloquei como *root*, más você poderá alterar.

```
## Spring view resolver set up
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp

## Spring DATASOURCE (DataSourceAutoConfiguration & DataSourceProperties)
spring.datasource.url = jdbc:mysql://localhost:3306/users_database?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false
spring.datasource.username = root
spring.datasource.password = root


## Hibernate Properties
# The SQL dialect makes Hibernate generate better SQL for the chosen database
spring.jpa.properties.hibernate.dialect = org.hibernate.dialect.MySQL5InnoDBDialect

# Hibernate ddl auto (create, create-drop, validate, update)
spring.jpa.hibernate.ddl-auto = update
```
<br/><br/>

# Criando a base de dados no MySQL
## Passo 1: 
### > Abra seu MySQL e entre em sua conexão
![img1](https://firebasestorage.googleapis.com/v0/b/testeslab-c72db.appspot.com/o/imagensTeste%2F1.PNG?alt=media&token=f7b05c6f-e987-405b-a634-3bde9beb9310)
<br/>
## Passo 2: 
### > Cria um banco de dados com o nome que desejar, aqui de exemplo eu criei um chamado *users_database*
### > Comando para criar: *create database users_database*
![img2](https://firebasestorage.googleapis.com/v0/b/testeslab-c72db.appspot.com/o/imagensTeste%2F2.PNG?alt=media&token=a27028df-6a9e-4e8a-ae16-3940b8440d69)
<br/>
## Passo 3: 
### > Após criado irá aparecer ao lado.
![img3](https://firebasestorage.googleapis.com/v0/b/testeslab-c72db.appspot.com/o/imagensTeste%2F3.PNG?alt=media&token=86be6495-df85-42df-a8d7-3ba158d76b6f)
<br/><br/>

# Executando o Projeto
## Passo 1: 
### > Vá na pasta *📂src* -> *📂java* -> *📂com* -> *📂crud* -> *📂notas* -> *📂notascrudspringboot* -> e clique com o botão direito do mouse no arquivo *📄NotasCrudSpringBootApplication* 

## Passo 2:
### > Clicado com o botão direito aparecerá as opções, você clica em *Run As* e em seguida *Spring Boot App*
![img4](https://firebasestorage.googleapis.com/v0/b/testeslab-c72db.appspot.com/o/imagensTeste%2F4.PNG?alt=media&token=bf53f955-ce13-47c9-9efd-4c9eb1593724)

### > Após o projeto ser executado, digite no navegador o endereço: <a targer="_blank"> <http://localhost:8080/></a>
### > Irá aparecer a tela de login abaixo:
![img5](https://firebasestorage.googleapis.com/v0/b/testeslab-c72db.appspot.com/o/imagensTeste%2F5.PNG?alt=media&token=7d0e31f5-6489-4659-8ab6-af4595eb32fb)

## Passo 3: 
### > No projeto form definidos 2 usuários:
#### Username: *admin* <br/> Password: *admin*
#### Username: *teste* <br/> Password: *teste*

##### > Você também poderá alterar ou colocar mais usuários indo no arquivo *📄SecurityConfiguration*

