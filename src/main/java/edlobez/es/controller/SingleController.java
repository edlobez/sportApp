/*
 * Copyright (C) 2020 edlobez
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package edlobez.es.controller;

import edlobez.es.domain.Colores;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author edlobez
 */
@Controller
public class SingleController {
    
    @Autowired ProductoService productoService;
    @Autowired StockService stockService;
    
    @RequestMapping(value = {"single"})
    public ModelAndView saluda(
            @RequestParam("id") int id,
            @RequestParam (name="color", required = false) String color,
            ModelMap modelo
    ) {
        ModelAndView mv = new ModelAndView();        
        mv.setViewName("single");
        
        cargarProducto(id, modelo, color);      
        
        return mv;
    }

    private void cargarProducto(int id, ModelMap modelo, String color) {
        Productos p = productoService.getProductoById(id);
        List <Stocks> todos = stockService.getProductoById(p);
        List <Stocks> por_colores = null;
        if ( color != null) {
          por_colores = stockService.getProductoByColor(p, new Colores(color));
          modelo.addAttribute("color_actual", color ); 
        }
        else {
          por_colores =  stockService.getProductoByColor(p, todos.get(0).getColor()); 
          modelo.addAttribute("color_actual", todos.get(0).getColor().getColor() ); 
        }
        
        
        
        List <Colores> colores = new ArrayList <Colores>();
        modelo.addAttribute("producto", p);
        if ( por_colores != null )
            modelo.addAttribute("stocks", por_colores );
        else 
           modelo.addAttribute("stocks", todos ); 
        
        System.out.println("Producto:\n" + p);
        System.out.println("Stocks:\n");
        for ( Stocks _s : todos ) {
            System.out.println("\n\n" + _s);
            if ( !colores.contains (_s.getColor()) )
                colores.add(_s.getColor());
        }
        modelo.addAttribute("colores", colores);
        
        
    }
    
}
