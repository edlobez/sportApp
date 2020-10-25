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
import java.util.List;

/**
 *
 * @author edlobez
 */
public interface ProductoService {
    
    Productos getProductoById ( int id );
    
    List <Productos> getAllProductos ();
    
    List <Productos> getProductosByColor ( Colores c);
    
    List <Productos> getProductoByTalla ( double talla );
    
    // Retorna los productos en un rango de precios
    List <Productos> getProductosByPrecio (float precio1, float precio2);
    
    List <Productos> getProductosByMarca ( String marca );
    
    List <Productos> getProductosByTipo (String tipo );
    
    List <Productos> getNovedades ();
    
    List <Productos> getOfertas();
    
}
