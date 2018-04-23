package edu.acc.itsx7051.Project06;

import java.util.ArrayList;

public class ItemManager {
    ArrayList<Item> items = new ArrayList<> ();
    
    public Item[] getAllItems() {

        return (Item[]) this.items.toArray(new Item[]{});
    }
    
    public void addItem(Item newItem) {
        items.add(newItem);
    }
}
