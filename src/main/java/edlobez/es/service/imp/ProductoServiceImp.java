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
import edlobez.es.repository.MyRepository;
import edlobez.es.service.ProductoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 *
 * @author edlobez
 */
@Service
public class ProductoServiceImp implements ProductoService {
    
    @Autowired @Qualifier ("productosImp") MyRepository myProductoRepImp;

    @Override
    public Productos getProductoById(int id) {
        return (Productos) myProductoRepImp.getbyId(id);
    }

    @Override
    public List<Productos> getAllProductos() {
        return myProductoRepImp.getAll();
    }

    @Override
    public List<Productos> getProductosByColor(Colores c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

    }

    @Override
    public List<Productos> getProductoByTalla(double talla) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Productos> getProductosByPrecio(float precio1, float precio2) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Productos> getProductosByMarca(String marca) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Productos> getProductosByTipo(String tipo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Productos> getNovedades() {
        return myProductoRepImp.get("novedad", true);
    }

    @Override
    public List<Productos> getOfertas() {
        return myProductoRepImp.get("oferta", true);
    }

    @Override
    public List<Productos> getAllOrderAscBy(String string) {
        return myProductoRepImp.getAllOrderBy("asc", string);
    }

    @Override
    public List<Productos> getAllOrderDecBy(String string) {
        return myProductoRepImp.getAllOrderBy("desc", string);
    }
    
}
