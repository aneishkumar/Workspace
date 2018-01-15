package com.ecomproject.DAO;
import java.util.List;
import com.ecomproject.model.Cart;

public interface CartDAO {
	public void addToCart(Cart cartitem);
	public List<Cart> getCartItems(String username);
	public void deleteCartItem(Cart cart);
	public Cart getCartItem(int cartid);
	public void updateCartItem(Cart cart);
}
