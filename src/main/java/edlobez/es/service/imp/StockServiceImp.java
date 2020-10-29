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
package edlobez.es.service.imp;

import edlobez.es.domain.Colores;
import edlobez.es.domain.Productos;
import edlobez.es.domain.Stocks;
import edlobez.es.repository.MyRepository;
import edlobez.es.service.StockService;
import java.awt.Color;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 *
 * @author edlobez
 */
@Service
public class StockServiceImp implements StockService {

    @Autowired @Qualifier ("stockImp") MyRepository stock;
    @Autowired @Qualifier ("productosImp") MyRepository myProductoRepImp;
    
    @Override
    public List<Productos> getProductoByColor(Colores c) {
    
        List<Stocks> stocks = stock.get ("color", c.getColor());
        return null;

    }

    @Override
    public List<Productos> getProductoByColor(String string) {

        List <Stocks> stocks = stock.get("color", new Colores(string) );
        
        for ( Stocks s : stocks )
            System.out.println(s.toString());
        
        return null;
    }

    @Override
    public List<Productos> getProductoByColoryTalla(String string, double i) {
        
        List <Stocks> stocks = stock.get("color", new Colores (string), "talla", i );
        
        for ( Stocks s : stocks )
            System.out.println(s.toString());
        
        return null;
        
        
    }

    @Override
    public List<Stocks> getAll() {
        return stock.getAll();
    }

    @Override
    public List <Stocks> getProductoById(Productos p) {
        return stock.get("id_producto", p);
    }

    @Override
    public List<Stocks> getProductoByColor(Productos prdcts, Colores clrs) {
        return stock.get("id_producto", prdcts, "color", clrs);
    }

    @Override
    public List<Stocks> getAllOrderAscBy(String string) {
        return stock.getAllOrderBy("asc", string);
    }

    @Override
    public List<Stocks> getAllOrderDecBy(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
    
}
