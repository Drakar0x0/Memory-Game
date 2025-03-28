//Correlacionar tempo e segundos
if(countdown > 0)
{
	countdown -= (1/room_speed)	
}


if(place_meeting(x, y, obj_card))
{
	var cardID = ds_list_create()
    var hits = instance_place_list(x, y, obj_card, cardID, false)
	
    if(hits > 0)
	{
        
        for(var i = 0; i < hits; i++)
		{
			
			if(mouse_check_button_pressed(mb_left))
			{
        
				var idCard = cardID[| i]
				if(ds_list_find_index(cardInstance, idCard) = -1)
				{
					ds_list_add(cardInstance, cardID)
					
					with(idCard) //flipped e id?
					{
						//sprite_index = spr_card_laranja
						
						switch(global.spriteT)
						{
							case 0:
								sprite_index = spr_card_laranja
								break
								
							case 1:
								sprite_index = spr_card_maca
								break
							
							case 2:
								sprite_index = spr_card_uva
								break
							
							case 3:
								sprite_index = spr_card_abacaxi
								break
							
							case 4:
								sprite_index = spr_card_banana
								break
						}
						global.spriteT = undefined
						
						
					}
				}
			}
        }
        
	}    
}

x = mouse_x
y = mouse_y