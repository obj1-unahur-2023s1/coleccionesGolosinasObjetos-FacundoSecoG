const gustos=["frutilla","chocolate","naranja","vainilla"]
const gustosTutti=["frutilla","chocolate","naranja"]

object bombon {
	const precio = 5
	const sabor = gustos.get(0)
	var property pesoEnGramos = 15
	const contieneGluten = false
	
	method precio(){
		return precio
	}
	method sabor(){
		return sabor
	}
	method darMordisco(){
		pesoEnGramos-=((pesoEnGramos*0.2)-1)
	}
	method contieneGluten(){
		return contieneGluten
	}
}

object alfajor {
	const precio = 12
	const sabor = gustos.get(1)
	var property pesoEnGramos = 300
	const contieneGluten = true
	
	method precio(){
		return precio
	}
	method sabor(){
		return sabor
	}
	method darMordisco(){
		pesoEnGramos-=pesoEnGramos*0.2
	}
	method contieneGluten(){
		return contieneGluten
	}
}

object caramelo {
	const precio = 1
	const sabor = gustos.get(0)
	var property pesoEnGramos = 5
	const contieneGluten = false
	
	method precio(){
		return precio
	}
	method sabor(){
		return sabor
	}
	method darMordisco(){
		pesoEnGramos-=1
	}
	method contieneGluten(){
		return contieneGluten
	}
}

object chupetin {
	const precio = 2
	const sabor = gustos.get(2)
	var property pesoEnGramos = 7
	const contieneGluten = false
	
	method precio(){
		return precio
	}
	method sabor(){
		return sabor
	}
	method darMordisco(){
		if (pesoEnGramos>=2){
			pesoEnGramos-=(pesoEnGramos*0.1)
			}
	}
	method contieneGluten(){
		return contieneGluten
	}
}

object oblea {
	const precio = 5
	const sabor = gustos.get(3)
	var property pesoEnGramos = 250
	const contieneGluten = true
	
	method precio(){
		return precio
	}
	method sabor(){
		return sabor
	}
	method darMordisco(){
		if (pesoEnGramos>70){
			pesoEnGramos-=(pesoEnGramos*0.5)
		}else{
			pesoEnGramos-=(pesoEnGramos*0.25)
		}
		
	}
	method contieneGluten(){
		return contieneGluten
	}
}

object chocolatin {
	var property precio 
	const sabor = gustos.get(1)
	var property pesoEnGramos 
	const contieneGluten = true
	
	method precio(gramos){
		pesoEnGramos=gramos
		return 0.5*gramos
	}
	method sabor(){
		return sabor
	}
	method darMordisco(){
		pesoEnGramos-=2
	}
	method contieneGluten(){
		return contieneGluten
	}
}

object golosinaBaniada {
	var property precio 
	var property sabor 
	var property golosinaBase 
	var property pesoEnGramos 
	var property contieneGluten 
	
	method contieneGluten(){
		contieneGluten = self.golosinaBase().contieneGluten()
		return contieneGluten
	}
	method pesoEnGramos(){
		pesoEnGramos = self.golosinaBase().pesoEnGramos()
		return pesoEnGramos+4
	}
	method precio(){
		precio = self.golosinaBase().precio()
		return precio+2
	}
	method sabor(){
		sabor = self.golosinaBase().sabor()
		return sabor
	}
	method darMordisco(){
		var cantMordiscos 
		if (cantMordiscos<=2){
			cantMordiscos+=1
			golosinaBase.darMordisco()
			pesoEnGramos-=(golosinaBase.pesoEnGramos()+2)	
		}else{
			cantMordiscos+=1
			golosinaBase.darMordisco()
			pesoEnGramos-=(golosinaBase.pesoEnGramos())
		}
	}
}

object pastillaTuttiFruitti {
	var property precio 
	var property sabor = gustosTutti.get(0)
	var property pesoEnGramos = 5
	var property contieneGluten 
	
	method precio(){
		if (contieneGluten){
			precio = 10
		}else{
			precio = 7
		}
		return precio
	}
	method sabor(){
		return sabor
	}
	method darMordisco(){
		pesoEnGramos-=1
		if (sabor==gustosTutti.last()){
			sabor=gustosTutti.get(0)
		}else if (sabor==gustosTutti.get(0)){
			sabor=gustosTutti.get(1)
		}else{
			sabor=gustosTutti.get(2)
		}
	}
}
