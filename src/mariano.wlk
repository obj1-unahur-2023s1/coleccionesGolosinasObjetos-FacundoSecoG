import golosinas.*

object mariano {
	const property bolsaDeGolosinas = []
	
	method comprar(unaGolosina){
		bolsaDeGolosinas.add(unaGolosina)
	}
	method desechar(unaGolosina){
		bolsaDeGolosinas.remove(unaGolosina)
	}
	method cantidadDeGolosinas(){
		return bolsaDeGolosinas.size()
	}
	method tieneLaGolosina(unaGolosina){
		return bolsaDeGolosinas.map({golosina=>golosina==unaGolosina})
	}
	method probarGolosinas(){
		bolsaDeGolosinas.forEach({golosina=>golosina.darMordisco()})
	}
	method hayGolosinaSinTACC(){
		return bolsaDeGolosinas.map({golosina=>not(golosina.contieneGluten())})
	}
	method preciosCuidados(){
		return bolsaDeGolosinas.map({golosina=>golosina.precio()<=10})
	} 
	method golosinaDeSabor(unSabor){
		return self.bolsaDeGolosinas().find({golosina=>golosina.sabor()==unSabor})
	}
	method golosinasDeSabor(unSabor){
		return self.bolsaDeGolosinas().filter({golosina=>golosina.sabor()==unSabor})
	}
	method sabores(){
		return self.bolsaDeGolosinas().map({golosina=>golosina.sabor()}).asSet()
	}
	method golosinaMasCara(){
		return self.bolsaDeGolosinas().map({golosina=>golosina.precio()}).max()
	}
	method pesoGolosinas(){
		return self.bolsaDeGolosinas().map({golosina=>golosina.pesoEnGramos()}).sum()
	}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(self.bolsaDeGolosinas().asSet())
	}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(self.sabores().asSet())
	}
}
