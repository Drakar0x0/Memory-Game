draw_set_color(make_color_rgb(183,224,31))

//Mostrar informações das cartas
draw_text(50, 10, "Card 1 sprite_index: " + string(global.match[0, 0])) //Sprite Index
draw_text(50, 25, "Card 1 ID: " + string(global.match[0, 1])) //ID

draw_text(400, 10, "Card 2 sprite_index: " + string(global.match[1, 0])) //Sprite Index
draw_text(400, 25, "Card 2 ID: " + string(global.match[1, 1])) //ID

//Desenhar as tentativas
draw_text(700, 10, "Contagem Tentativas: " + string(global.flipCounter))

//Desenhar Relógio
draw_text(950, 10, "Countdown: " +  string(countdown))