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
package edlobez.es.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author edlobez
 */
@Entity
@Table (name="productos")
public class Productos {
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column  ( name = "id")     
    private int id;
    
    @Column(name="tipo_producto")
    @NotNull
    @Size (max=100)
    private String tipo_producto;
    
    @Column(name="marca")
    @NotNull
    @Size (max=100)
    private String marca;
    
    @Column(name="precio")
    @NotNull
    private float precio;
    
    @Column(name="modelo")
    @NotNull
    @Size (max=100)
    private String modelo;
    
    @Lob
    @Column(name="descripcion", columnDefinition = "TEXT")
    @NotNull
    private String descripcion;
    
    @Lob
    @Column(name="caracteristicas", columnDefinition = "TEXT")
    @NotNull
    private String caracteristicas;
    
    @Column(name="hombre")
    @NotNull
    private boolean hombre;

    public Productos(String tipo_producto, String marca, float precio, String modelo, String descripcion, String caracteristicas, boolean hombre) {
        this.tipo_producto = tipo_producto;
        this.marca = marca;
        this.precio = precio;
        this.modelo = modelo;
        this.descripcion = descripcion;
        this.caracteristicas = caracteristicas;
        this.hombre = hombre;
    }

    public Productos(int id, String tipo_producto, String marca, float precio, String modelo, String descripcion, String caracteristicas, boolean hombre) {
        this.id = id;
        this.tipo_producto = tipo_producto;
        this.marca = marca;
        this.precio = precio;
        this.modelo = modelo;
        this.descripcion = descripcion;
        this.caracteristicas = caracteristicas;
        this.hombre = hombre;
    }

    public Productos() {
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo_producto() {
        return tipo_producto;
    }

    public void setTipo_producto(String tipo_producto) {
        this.tipo_producto = tipo_producto;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCaracteristicas() {
        return caracteristicas;
    }

    public void setCaracteristicas(String caracteristicas) {
        this.caracteristicas = caracteristicas;
    }

    public boolean isHombre() {
        return hombre;
    }

    public void setHombre(boolean hombre) {
        this.hombre = hombre;
    }

    @Override
    public String toString() {
        return "Productos{" + "id=" + id + ", tipo_producto=" + tipo_producto + ", marca=" + marca + ", precio=" + precio + ", modelo=" + modelo + ", descripcion=" + descripcion + ", caracteristicas=" + caracteristicas + ", hombre=" + hombre + '}';
    }
    
    
    
}
