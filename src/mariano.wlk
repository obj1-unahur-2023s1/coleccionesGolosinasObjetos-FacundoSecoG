import golosinas.*

object mariano {
	const bolsaDeGolosinas=[]
	
	method bolsaDeGolosinas()=bolsaDeGolosinas
	method comprar(unaGolosina){
		bolsaDeGolosinas.add(unaGolosina)
	}
	method desechar(unaGolosina){
		bolsaDeGolosinas.remove(unaGolosina)
	}
	method cantidadDeGolosinas()=bolsaDeGolosinas.size()
	method tieneLaGolosina(unaGolosina)=bolsaDeGolosinas.any({golosina=>golosina==unaGolosina})
	method probarGolosinas()=bolsaDeGolosinas.forEach({golosina=>golosina.darMordisco()})
	method hayGolosinaSinTACC()=bolsaDeGolosinas.any({golosina=>not(golosina.contieneGluten())})
	method preciosCuidados()=bolsaDeGolosinas.all({golosina=>golosina.precio()<=10})
	method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find({golosina=>golosina.sabor()==unSabor})
	method golosinasDeSabor(unSabor)=bolsaDeGolosinas.filter({golosina=>golosina.sabor()==unSabor})
	method sabores()=bolsaDeGolosinas.map({golosina=>golosina.sabor()}).asSet()
	method golosinaMasCara()=bolsaDeGolosinas.max({golosina=>golosina.precio()})
	method pesoGolosinas()=bolsaDeGolosinas.map({golosina=>golosina.pesoEnGramos()}).sum()
	method golosinasFaltantes(golosinasDeseadas)=golosinasDeseadas.asSet().difference(bolsaDeGolosinas.asSet()).asList()
	method gustosFaltantes(gustosDeseados)=gustosDeseados.asSet().difference(self.sabores().asSet()).asList()
}
