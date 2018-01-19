package com.ecomproject.DAO;
import java.util.List;
import com.ecomproject.model.Cart;

public interface CartDAO {
	public void addToCart(Cart cartitem);
	public Cart getCartItem(int cartid);
	public List<Cart> getCartItems(String username);
	public void deleteCartItem(Cart cart);
	public void updateCartItem(Cart cart);
	public Cart getCartItemPi(int productid);
}
