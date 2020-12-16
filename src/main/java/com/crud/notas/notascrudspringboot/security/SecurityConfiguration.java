package com.crud.notas.notascrudspringboot.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

/*
1 - Esta classe estende  WebSecurityConfigurerAdapter  e substitui alguns de seus 
métodos para definir algumas especificações da configuração de segurança da web.
*/

@SuppressWarnings("deprecation")
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth)
    throws Exception {
    	//pode-se definir mais de um usuário
    	
        auth.inMemoryAuthentication()
            .passwordEncoder(NoOpPasswordEncoder.getInstance())
            .withUser("admin").password("admin") //posso definir um usuário apartir daqui
            .roles("USER", "ADMIN");
        
        auth.inMemoryAuthentication()
        .passwordEncoder(NoOpPasswordEncoder.getInstance())
        .withUser("teste").password("teste") //posso definir um usuário apartir daqui
        .roles("USER", "TESTE");
    }

    /*
     2 - O   método configure(HttpSecurity) define quais caminhos de URL devem ser protegidos 
e quais não devem. Especificamente, os caminhos "/" e "/ login" são configurados para não exigir 
qualquer autenticação. Todos os outros caminhos devem ser autenticados.*/
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
        .antMatchers("/login", "/h2-console/**")
        .permitAll()
        .antMatchers("/", "/*todo*/**").access("hasRole('USER')").and()
        .formLogin(); //login padrão do spring. Esta é uma página de login simples fornecida pelo Spring Security

        http.csrf().disable();
        http.headers().frameOptions().disable();
    }
}

