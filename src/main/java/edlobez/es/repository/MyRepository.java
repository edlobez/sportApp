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
package edlobez.es.repository;


import java.util.List;

/**
 *
 * @author edlobez
 * @param <T>
 */
public interface MyRepository <T> {
    
    void add ( T file);
    
    T getbyId (int id);
    
    void delete (T type);
    
    void update (T type);
    
   // List<T> get (O_T type, String restriction);
    
    List<T> get (String campo, int valor);
    
    List<T> get (String campo, String valor);
    
    List <T> get ( String campo, T t);
    
    List <T> get ( String campo, T t, String campo2, String valor2);
    
    List <T> get ( String campo1, T t, String campo2, T t2);
    
    List <T> get ( String campo, T t, String campo2, double valor2);
    
    List <T> getAll ();
   
    List<T> getAllOrderBy(String tipo, String campo);
    
    abstract void setClass(); 
    
}
