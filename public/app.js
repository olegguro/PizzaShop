


function something()
{
	var x = window.localStorage.getItem ('bbb');
	
	x = x * 1 + 1;

	window.localStorage.setItem('bbb', x);

	alert (x);
}

function add_to_card(id)
{
	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	// //вывод колличества item'ов в корзине
	// alert('Items in your cart: ' + cart_get_number_of_item());

	update_orders_input();
	update_order_button ();
}

function update_orders_input()
{
	var orders = cart_get_orders();
	$('#orders_input').val(orders); 
}

function update_order_button ()
{
	var text = 'Cart (' + cart_get_number_of_item() + ')';
	$('#orders_button').val(text); 
}

function cart_get_number_of_item()
{
	var cnt = 0;

	for(var i = 0; i < localStorage.length; i++)
	{
		var key = window.localStorage.key(i); //получаем ключ
		var value = window.localStorage.getItem(key); //получаем значение, аналог в ruby hh[key] = x
		if(key.indexOf('product_') ==0)
		{
			cnt = cnt + value * 1;
		}
	}

	return cnt;

}

function cart_get_orders()
{
	var orders = '';

	for(var i = 0; i < localStorage.length; i++)
	{
		var key = window.localStorage.key(i); //получаем ключ
		var value = window.localStorage.getItem(key); //получаем значение, аналог в ruby hh[key] = x
		if(key.indexOf('product_') ==0)
		{
			orders = orders + key  + '=' + value + ',';
		}
	}

	return orders;

}

function cancel_order()
{
	window.localStorage.clear();

	update_orders_input();
	 update_order_button ();

	 $('#cart').text ('Your cart is empty now!')

	return false;
}