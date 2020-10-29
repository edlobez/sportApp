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

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import edlobez.es.domain.Productos;
import edlobez.es.domain.Stocks;
import edlobez.es.service.ProductoService;
import edlobez.es.service.StockService;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("shop")
public class ShopController {
    
    @Autowired ProductoService productoService;
    @Autowired StockService stockService;
    
    @RequestMapping(value = {""})    
    public ModelAndView saluda(
            ModelMap modelo
    ) {
        ModelAndView mv = new ModelAndView(); 
        cargarTodos (modelo, null);
        mv.setViewName("shop");        
        return mv;
    }
    
    @RequestMapping("ordenarProductos")
    @ResponseBody
    public String ordenar(
       @RequestParam ("orden") String orden,
       ModelMap modelo
    ) {
        
            System.out.println("Orden opcion " + orden);
            return cargarTodos (modelo,orden);
            //return "true";
        
        
    }
    
    public String cargarTodos (ModelMap modelo, String orden)  {
        List <Stocks> todos_en_stock = stockService.getAll();
        //List <Stocks> todos_en_stock = stockService.getAllOrderAscBy("precio");
        //List <Productos> todos_productos = new ArrayList <Productos>();
        List <Productos> todos_productos = null;
        if ( orden == null || orden.length()==0 || orden.toLowerCase().equals("hightolow"))
            todos_productos = productoService.getAllOrderDecBy("precio");
        else 
            todos_productos = productoService.getAllOrderAscBy("precio"); 
        
        for ( Stocks _s : todos_en_stock ) 
            if ( !todos_productos.contains (_s.getId_producto()) )
                todos_productos.remove(_s.getId_producto() );
                
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
        
        
        ObjectMapper JSON_MAPPER = new ObjectMapper();
        JSONObject member = null;
        JSONArray array = new JSONArray();
        for (Productos d : todos_productos) {
            try {
                member = new JSONObject(JSON_MAPPER.writeValueAsString(d));
                array.put(member);
            } catch (JsonProcessingException ex) {
                System.out.println("Error creando objetos JSONArray");
            } catch (JSONException ex) {
                System.out.println("Error creando objetos JSONArray");
            }
        }
         JSONObject json = new JSONObject();
        try {            
            json.put("n_filas", total_filas);
            json.put("data", array);
        } catch (JSONException ex) {
            System.out.println("Error creando objetos JSONObject para listado ficheros");

        }
        
       System.out.println ("\n\n" + json.toString());
       return json.toString();
        
        
    }
    
    public void _cargarTodos (ModelMap modelo) {
        List <Stocks> todos_en_stock = stockService.getAll();
        //List <Stocks> todos_en_stock = stockService.getAllOrderAscBy("precio");
        //List <Productos> todos_productos = new ArrayList <Productos>();
        List <Productos> todos_productos = productoService.getAllOrderAscBy("precio");
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
