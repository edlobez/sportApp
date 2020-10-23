/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edlobez.es.controller;

/**
 *
 * @author edlobez
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopController {
    
    @RequestMapping(value = {"shop"})
    public ModelAndView saluda() {
        ModelAndView mv = new ModelAndView();        
        mv.setViewName("shop");        
        return mv;
    }
    
}
