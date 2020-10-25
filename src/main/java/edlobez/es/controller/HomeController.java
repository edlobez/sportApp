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
import edlobez.es.domain.Productos;
import edlobez.es.domain.Stocks;
import edlobez.es.service.ProductoService;
import edlobez.es.service.StockService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    
    @Autowired ProductoService productoService;
    @Autowired StockService stockService;

    @RequestMapping(value = {"/", "home"})
    public ModelAndView home(ModelMap modelo) {
        ModelAndView mv = new ModelAndView();        
        mv.setViewName("home");        
        cargarNovedades(modelo);
        cargarOfertas(modelo);
        return mv;
    }
    
    /**
     * Muestra en el slide superior las novedades
     */
    public void cargarNovedades (ModelMap modelo) {
        List <Productos> p = productoService.getNovedades();
        for ( Productos _p : p ) {
            System.out.println("Novedades\n" + _p.toString());
        }
        modelo.addAttribute("novedades", p);
    }
    
    /**
     * Cargar todos los productos que tengan stock
     */
    public void cargarTodos ( ModelMap modelo ) {
        List <Stocks> p = stockService.getAll();
        for ( Stocks _p : p ) {
            System.out.println("Todos\n\n" + _p.toString());
        }
        modelo.addAttribute("todos", p);
        
    }
    
    /**
     * Cargar los productos que están en oferta
     */
    public void cargarOfertas (ModelMap modelo) {
        List <Productos> p = productoService.getOfertas();
        for ( Productos _p: p ) 
            System.out.println("Ofertas\n" + _p);
        modelo.addAttribute("ofertas", p);
        
    }
    
    private void pruebas () {
        Productos p = productoService.getProductoById(2);
        System.out.println(p);
        
        stockService.getProductoByColor("amarillo");
        
        stockService.getProductoByColoryTalla("azul", 42);
    }
}
