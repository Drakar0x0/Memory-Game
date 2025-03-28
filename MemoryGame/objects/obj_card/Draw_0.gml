if(flipped == true)
{
	draw_sprite(sprite_index, 0, x, y)
}

else
{		
	draw_sprite(spr_card_facedown, 0, x, y)
}

draw_text(x, y, sprite)
draw_text(x+100, y+200, flipped)