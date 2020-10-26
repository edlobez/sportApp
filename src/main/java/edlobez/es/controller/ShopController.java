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

import edlobez.es.domain.Productos;
import edlobez.es.domain.Stocks;
import edlobez.es.service.ProductoService;
import edlobez.es.service.StockService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopController {
    
    @Autowired ProductoService productoService;
    @Autowired StockService stockService;
    
    @RequestMapping(value = {"shop"})
    public ModelAndView saluda(
            ModelMap modelo
    ) {
        ModelAndView mv = new ModelAndView(); 
        cargarTodos (modelo);
        mv.setViewName("shop");        
        return mv;
    }
    
    public void cargarTodos (ModelMap modelo) {
        List <Stocks> todos_en_stock = stockService.getAll();
        List <Productos> todos_productos = new ArrayList <Productos>();
        for ( Stocks _s : todos_en_stock ) 
            if ( !todos_productos.contains (_s.getId_producto()) )
                todos_productos.add(_s.getId_producto() );
        
        
        int aux = todos_productos.size();
        System.out.println("Número de productos: " + aux );
        int filas_completas = aux/3;
        int filas_incompletas = aux%3;
        int total_filas = 0;
        System.out.println("Número de filas completas " +  filas_completas );
        if ( filas_incompletas != 0 ) {
            System.out.println("Fila incompleta con " + filas_incompletas + " elementos");
            total_filas++;
        }
        total_filas = total_filas + filas_completas;
        Productos ps[][] = new Productos [total_filas][3];
        
        int k = 0;
        for ( int i = 0; i < total_filas; i++)
            for ( int j = 0; j < 3; j++) {
                if ( k >= aux ) break;
                if ( todos_productos.get(k) != null ) {
                    ps[i][j] = todos_productos.get(k);
                    k++;
                }
            }
        
        modelo.addAttribute("productos", ps);
        modelo.addAttribute("filas", total_filas);
         
        for ( int i = 0; i < total_filas; i++)
            for ( int j = 0; j < 3; j++)
                System.out.println(ps[i][j]);
    }
}
