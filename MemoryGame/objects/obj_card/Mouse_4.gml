//Se podemos selecionar uma carta
if(global.canSelect == true)
{
	
	if(flipped == false)
	{
		flipped = true 
		global.flipCounter++
		
		//Salvar os dados da carta que foi clicada
		global.match[global.selectionNumber, 0] = sprite_index
		global.match[global.selectionNumber, 1] = id
		
		global.selectionNumber++
		
		//Já tem 2 cartas selecionadas
		if(global.selectionNumber == 2)
		{
			global.canSelect = false
			
			//Comparar cartas
			if(global.match[0, 0] == global.match[1, 0]) //Encontrou um par
			{
				
					//Ter certeza que as cartas estão viradas para cima
					with(global.match[0, 1])
					{
						flipped = true
					}
					
					with(global.match[1, 1])
					{
						flipped = true
					}
					
					//Resetar o selectionNumber
					global.selectionNumber = 0
					
					//Resetar Vetor de comparação
					global.match[0, 0] = undefined 
					global.match[0, 1] = undefined 
					global.match[1, 0] = undefined 
					global.match[1, 1] = undefined 
					
					
					//Jogador pode selecionar novamente
					global.canSelect = true
			
			}
			else
			{
				//Alarme para mostrar as cartas por alguns segundos e virar elas para baixo novamente
				alarm[0] = room_speed * 0.5
 			}	
		} 
			
	}
}
