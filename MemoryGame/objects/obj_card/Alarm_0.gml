//Quando falha
with(global.match[0, 1])
{
	flipped = false
}
					
with(global.match[1, 1])
{
	flipped = false
}
	
//Resetar Vetor de comparação
global.match[0,0] = undefined 
global.match[0,1] = undefined 
global.match[1,0] = undefined 
global.match[1,1] = undefined 
	
	
//Jogador pode selecionar novamente
global.canSelect = true

//Resetar o selectionNumber
global.selectionNumber = 0