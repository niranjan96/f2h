package com.niit.f2h.dao;

import java.util.List;

import com.niit.f2h.model.Cart;
import com.niit.f2h.model.CartItem;


public interface CartItemDAO {
	void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByItemId (int itemId);
    
    List<CartItem> getCartItemByItemName (String itemName);

    public List<CartItem> list();
}
