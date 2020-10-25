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
package edlobez.es.repository.imp;

import edlobez.es.repository.MyRepository;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * https://docs.jboss.org/hibernate/orm/3.3/reference/es-ES/html/querycriteria.html
 * https://docs.jboss.org/hibernate/orm/3.3/reference/es-ES/html/
 * @author edlobez
 */
@Transactional
@Repository
//@Component("myRepositoryImp")
public abstract class MyRepositoryImp <T> implements MyRepository <T> {   

        
    @Autowired
    private SessionFactory sessionFactory;
    
    private Class<T> _type;
    
    public MyRepositoryImp () {
        setClass();
    }

    @Override
    public void add(T t) {
        getSession().saveOrUpdate(t);
    }
    
    @Override
    public void delete (T t) {
        getSession().delete(t);
    }
    
    @Override
    public void update (T t){
        getSession().merge(t);
    }
    
    @Override
    public List<T> get (String campo, int valor) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq(campo, valor));    
        return (List<T>) criteria.list();
    }
    
    @Override
    public List<T> get (String campo, String valor) {
        Criteria criteria = createEntityCriteria();
        
        if ( valor.contains("%") ) {
            criteria.add(Restrictions.like(campo, valor));  
        }
        else  
            criteria.add(Restrictions.eq(campo, valor)); 
     
        return (List<T>) criteria.list();
    } 

    @Override
    public List<T> get(String campo, T t) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq(campo, t));    
        return (List<T>) criteria.list();
    }
    
    @Override
    public List <T> get ( String campo, T t, String campo2, String valor2) {
        
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq(campo, t))
                .add(Restrictions.like(campo2, valor2))        
                ;    
        return (List<T>) criteria.list();
        
    }
    
    @Override
    public List <T> get ( String campo, T t, String campo2, double valor2) {
        
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq(campo, t))
                .add(Restrictions.eq(campo2, valor2))        
                ;    
        return (List<T>) criteria.list();
        
    }
    
    @Override
    public T getbyId(int i) {
        return getSession().get( this._type, i);
    }
    

    @Override
    public List<T> getAll() {
        Criteria criteria = createEntityCriteria();
        return (List <T>) criteria.list();
    }

   @Override
   public abstract void setClass(); 
    
    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    protected Criteria createEntityCriteria() {        
        return getSession().createCriteria(this._type);
    }
    
    protected Class<T> getType () {
        return this._type;
    }
    
    protected void setType (Class <T> type ) {
        this._type = type;
    }
    
}
