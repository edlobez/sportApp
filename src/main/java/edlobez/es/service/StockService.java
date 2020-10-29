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
package edlobez.es.service;

import edlobez.es.domain.Colores;
import edlobez.es.domain.Productos;
import edlobez.es.domain.Stocks;
import java.util.List;

/**
 *
 * @author edlobez
 */
public interface StockService {
    
    List<Productos> getProductoByColor (Colores c);
    
    List<Productos> getProductoByColor (String color);
    
    List<Productos> getProductoByColoryTalla (String color, double talla);
    
    List<Stocks> getAll ();
    
    List<Stocks>getAllOrderAscBy(String campo);
    
    List<Stocks>getAllOrderDecBy(String campo);
    
    List <Stocks> getProductoById ( Productos p);
    
    List <Stocks> getProductoByColor ( Productos p, Colores c);
    
}
