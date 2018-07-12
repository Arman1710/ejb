//package epam.news.services;
//
//
//import org.apache.log4j.Logger;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//
//import javax.ejb.EJB;
//import javax.ejb.Stateless;
//
//@Stateless
//public class SecurityService {
//    private final static Logger LOGGER = Logger.getLogger(SecurityService.class);
//
//    @Autowired
//    private AuthenticationManager authenticationManager;
//
//    @Autowired
//    private UserDetailsService userDetailsService;
//
//
//    public void autoLogin(String username, String password) {
//        UserDetails userDetails = userDetailsService.loadUserByUsername(username);
//        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());
//
//        authenticationManager.authenticate(authenticationToken);
//
//        if (authenticationToken.isAuthenticated()) {
//            SecurityContextHolder.getContext().setAuthentication(authenticationToken);
//            LOGGER.debug(String.format("Successfully %s auto logged in", username));
//
//        }
//    }
//}