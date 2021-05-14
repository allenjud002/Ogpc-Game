/// @desc Control Pause

//open Shop Methond
if (keyboard_check_pressed(ord("P"))) {
	
	PauseOpen = true;
	global.shop = true;
	instance_deactivate_object(oPlayer);

	
} else if (PauseOpen) && (keyboard_check_pressed(vk_space)) {
	
	PauseOpen = false;
	global.shop = false;
	instance_activate_object(oPlayer);

}


//Shop is open
if (PauseOpen) {
	
		
	
		if (keyboard_check_pressed(vk_down)) {
		
		selected ++;
		if (selected == itemCount) selected = 0;
		
	}
	
		if (keyboard_check_pressed(vk_up)) {
		
		selected -- ;
		if (selected < 0) selected = itemCount - 1;
		
	}
		//Buy a Item
		var arr = items[| selected];
		var item = arr[0];
		var price = arr[1];
		
		
		//Buy a Item
		var arr = items[| selected];
		var item = arr[0];
		var price = arr[1];
		if (keyboard_check_pressed(vk_enter) && (can_buy = true)) {
		
	
		//add item to player
		ds_list_add(global.inv,item);
		global.money -= price;
		
		
	}
	if global.money < 0
	{
		can_buy = false;
		global.money = 0;
		
	}

	if global.money > 0
		{
			can_buy = true;
			
			
		}

}