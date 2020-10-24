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

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author edlobez
 */
@Entity
@Table (name = "stocks")
public class Stocks implements Serializable {
    
    @Id
    @ManyToOne
    @JoinColumn(name="id")
    private Productos id;
    
    @Column(name="talla")
    @NotNull
    private double talla;
    
    @Column(name="stock")
    @NotNull
    private int stock;
        
    @ManyToOne
    @JoinColumn(name = "color")   
    private Colores color;

    public Stocks(Productos id, double talla, int stock, Colores color) {
        this.id = id;
        this.talla = talla;
        this.stock = stock;
        this.color = color;
    }

    public Stocks(double talla, int stock, Colores color) {
        this.talla = talla;
        this.stock = stock;
        this.color = color;
    }

    public Stocks() {
    }

    public Productos getId() {
        return id;
    }

    public void setId(Productos id) {
        this.id = id;
    }


    public double getTalla() {
        return talla;
    }

    public void setTalla(double talla) {
        this.talla = talla;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    @Override
    public String toString() {
        return "Stocks{" + "id=" + id + ", talla=" + talla + ", stock=" + stock + ", color=" + color + '}';
    }
    
    
    
}
