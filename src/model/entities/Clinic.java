/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.entities;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Thomas Barr-Taylor
 */
public class Clinic {
    EntityManager em;
    public Clinic() {
        em = Persistence
                .createEntityManagerFactory("Lab11_StarterPU")
                .createEntityManager();
    }
/**
 * this function creates a new pet and uses as well as setting the name, type 
 * and owner of the new pet
 * @param petName
 * @param petType
 * @param owner 
 */
    public void addPet(String petName, String petType, Owner owner) {
        Pet pet = new Pet();
        pet.setPetName(petName);
        pet.setPetType(petType);
        pet.setPetOwner(owner);
        
        owner.getPetCollection().add(pet);
        
        em.getTransaction().begin();
        em.persist(pet);
        em.getTransaction().commit();
    }
    /**
     * this function creates a new owner as well as setting the name of the new
     * owner
     * @param ownerName 
     */
    public void addOwner(String ownerName)
    {
        Owner owner = new Owner();
        owner.setOwnerName(ownerName);
        
        em.getTransaction().begin();
        em.persist(owner);
        em.getTransaction().commit();
    }
    /**
     * creates a query of all pets and converts it into a list then in a for 
     * loop it will go through the list and puts each item into an array
     * @param columnCount the amount of columns in the table
     * @return the array with pet data in
     */
    public String[][] getPetArray(int columnCount) {
        Query query = em.createNamedQuery("Pet.findAll");
        List<Pet> pets = query.getResultList();
        
        int rowCount = pets.size();
        
        String[][] data = new String[rowCount][columnCount];
        
        int row = 0;
        
        for (Pet pet : pets)
        {
            data[row][0] = pet.getId().toString();
            data[row][1] = pet.getPetName();
            data[row][2] = pet.getPetType();
            Owner owner = pet.getPetOwner();
            data[row][3] = (owner==null) ? "?" : owner.getOwnerName();
            row++;
        }
        return data;
    }
    /**
     * creates a query of all owners and converts it into a list then in a for 
     * loop it will go through the list and put each item into an array
     * @param columnCount
     * @return 
     */
    public String[][] getOwnerArray(int columnCount){
        Query query = em.createNamedQuery("Owner.findAll");
        List<Owner> ownerList = query.getResultList();
        
        int rowCount = ownerList.size();
        
        String[][] data = new String[rowCount][columnCount];
        
        int row = 0;
        
        for (Owner owner : ownerList)
        {
            String petlist = "";
            for (Pet pet : owner.getPetCollection()) {
                petlist += pet.getPetName() + ", ";
            }
            data[row][0] = owner.getId().toString();
            data[row][1] = owner.getOwnerName();
            data[row][2] = petlist;
            row++;
        }
        return data;
    }
    /**
     * will get all owners from a query and returns as a list
     * @return a list of all owners
     */
    public List<Owner> getOwnerList() {
        Query query = em.createNamedQuery("Owner.findAll");
        List<Owner> ownerList = query.getResultList();
        return ownerList;
    }
    /**
     * gets a query of all owners with the name provided and turns it into a list
     * @param ownerName
     * @return 
     * @throws Exception 
     */
    public Owner findOwnerByName(String ownerName) throws Exception {
        Query query = em.createNamedQuery("Owner.findByName");
        List<Owner> owner = query.setParameter("name", ownerName).getResultList();
        return owner.get(0);
    }
}
