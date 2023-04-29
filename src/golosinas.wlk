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

object cosa {
	var pesoEnGramos
	var precio
	
	method contieneGluten() = true
	method sabor() = gustos.get(1)
	method asignarPeso(gramos) {
		pesoEnGramos=gramos
		precio=gramos*0.5
	}
	method precio()=precio
	method pesoEnGramos()=pesoEnGramos
	method darMordisco(){
		pesoEnGramos-=2
	}
}

object golosinaBaniada {
	var golosinaBase
	var peso
	var cantMordiscos = 1
	
	method baniar(unaGolosina) {
		golosinaBase = unaGolosina
		peso = golosinaBase.pesoEnGramos() + 4
		cantMordiscos = 0
	}
	
	method precio() = golosinaBase.precio() + 2
	method pesoEnGramos() = peso
	method sabor() = golosinaBase.sabor()
	method contieneGluten() = golosinaBase.contieneGluten()

	method darMordisco() {
		cantMordiscos ++
		golosinaBase.darMordisco()
		peso = golosinaBase.pesoEnGramos() + if(cantMordiscos == 1){2}else{0}
	}
}

object pastillaTuttiFruitti {
	var property precio 
	var property sabor = gustosTutti.get(0)
	var property pesoEnGramos = 5
	var contieneGluten

	method contieneGluten(valor) { contieneGluten=valor }
	method contieneGluten() = contieneGluten
	method precio(){
		if (self.contieneGluten()){
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
