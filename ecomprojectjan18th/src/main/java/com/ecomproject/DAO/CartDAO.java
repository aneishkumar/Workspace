package com.ecomproject.DAO;
import java.util.List;
import com.ecomproject.model.Cart;

public interface CartDAO {
	public void addToCart(Cart cartitem);
	public Cart getCartItem(int cartid);
	public List<Cart> getCartItems(String username);
}
