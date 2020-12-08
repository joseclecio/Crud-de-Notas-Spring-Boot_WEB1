# Crud-de-Notas-Spring-Boot
## Um Crud de Notas Spring Boot utilizando as tecnologias Spring MVC + Spring Security + JSP + Hibernate + MySQL
<br>
<br>

# Modos de Instalação
## Passo 1:
### > Vá até a pasta *📂src* -> *📂main* -> *📂resources* -> *📄application.properties*

## Passo 2:
### > Vá até o arquivo *📄application.properties* e dê 2 clicks 

## Passo 3:
### > 

```
## Spring view resolver set up
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp

## Spring DATASOURCE (DataSourceAutoConfiguration & DataSourceProperties)
spring.datasource.url = jdbc:mysql://localhost:3306/users_database?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false
spring.datasource.username = root
spring.datasource.password = 98650807


## Hibernate Properties
# The SQL dialect makes Hibernate generate better SQL for the chosen database
spring.jpa.properties.hibernate.dialect = org.hibernate.dialect.MySQL5InnoDBDialect

# Hibernate ddl auto (create, create-drop, validate, update)
spring.jpa.hibernate.ddl-auto = update
```


