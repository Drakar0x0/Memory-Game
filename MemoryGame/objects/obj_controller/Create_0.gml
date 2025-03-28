//Quando for 2, teremos 2 cartas para comparar
global.selectionNumber = 0

global.spriteT = undefined
   
//Armazenar as cartas para comparar
global.match[0, 0] = undefined //sprite index
global.match[0, 1] = undefined //ID

global.match[1, 0] = undefined //sprite index
global.match[1, 1] = undefined //ID

//Selecionar apenas 2 cartas
global.canSelect = false

//Contador de viradas de carta
global.flipCounter = 0

//Altura e Largura do tabuleiro
height = 2
width = 5

//Numero de cartas presentes para popular
laranjaCount = 0
macaCount = 0
uvaCount = 0
abacaxiCount = 0
bananaCount = 0

xx = 80
yy = 160

//Se chegou no max de 2 cartas
found = false

//Cada tentativa ser diferente
randomize()
randomInt = irandom(4)

cardInstance = ds_list_create()

countFound = 0
//Criar cartas
for(var i = 0; i < width; i++)
{
	for(var j = 0; j < height; j++)
	{
		//Guardar o ID da instancia em card
		var card = instance_create_layer(xx, yy, "Instances", obj_card)
		
		while(found == false && countFound < 8)
		{ 
			switch(randomInt)
			{
				//LARANJA
				case 0:
					if(laranjaCount < 2)
					{
						card.sprite_index = spr_card_laranja
						card.sprite = 0
						found = true
						laranjaCount++
						countFound++
						global.spriteT = card.sprite
					}
					
					//Se gerar mesmo numero, mudar
					else
					{
						randomize()
						randomInt = irandom(4) 
					}
				break
				
				//MAÇA
				case 1:
					if(macaCount < 2)
					{
						card.sprite_index = spr_card_maca
						card.sprite = 1
						found = true
						macaCount++
						countFound++
						global.spriteT = card.sprite
					}
					
					
					else
					{
						randomize()
						randomInt = irandom(4) 
					}
				break
				
				//UVA
				case 2:
					if(uvaCount < 2)
					{
						card.sprite_index = spr_card_uva
						card.sprite = 2
						found = true
						uvaCount++
						countFound++
						global.spriteT = card.sprite
					}
					
					
					else
					{
						randomize()
						randomInt = irandom(4) 
					}
				break
				
				//ABACAXI
				case 3:
					if(abacaxiCount < 2)
					{
						card.sprite_index = spr_card_abacaxi
						card.sprite = 3
						found = true
						abacaxiCount++
						countFound++
						global.spriteT = card.sprite
					}
					
					
					else
					{
						randomize()
						randomInt = irandom(4) 
					}
				break
				
				//BANANA
				case 4:
					if(bananaCount < 2)
					{
						card.sprite_index = spr_card_banana
						card.sprite = 4
						found = true
						bananaCount++
						countFound++
						global.spriteT = card.sprite
					}
					
					
					else
					{
						randomize()
						randomInt = irandom(4) 
					}
				break
					
			}
			
			randomize()
			randomInt = irandom(4)
			found = false
			yy += 200
			
			
		}
		xx += 130
		yy = 300
		
	}
}


//Quando clicar, virar a carta e ver o conteudo
with(obj_card)
{
	flipped = true
	
}

//Tempo para o jogador ver as cartas, sem interagir
countdown = 3 //Segundos

//Virar as cartas para baixo depois de um tempo
alarm[0] = room_speed * 3 //Segundos