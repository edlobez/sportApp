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

import edlobez.es.domain.Productos;
import edlobez.es.domain.Stocks;
import edlobez.es.service.ProductoService;
import edlobez.es.service.StockService;
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
            ModelMap modelo
    ) {
        ModelAndView mv = new ModelAndView();        
        mv.setViewName("single");
        
        cargarProducto(id, modelo);      
        
        return mv;
    }

    private void cargarProducto(int id, ModelMap modelo) {
        Productos p = productoService.getProductoById(id);
        List <Stocks> s = stockService.getProductoById(p);
        modelo.addAttribute("producto", p);
        modelo.addAttribute("stocks", s);
        
        System.out.println("Producto:\n" + p);
        System.out.println("Stocks:\n");
        for ( Stocks _s : s ) {
            System.out.println("\n\n" + s);
        }
        
    }
    
}
