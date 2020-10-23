/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edlobez.es.controller;

/**
 *
 * @author edlobez-vbox
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = {"/", "home"})
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();        
        mv.setViewName("home");        
        return mv;
    }
}
