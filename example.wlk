//variedad de armas y equipos 

class Arma {
  method valorDeAtaque() 
}
class ArmasDeFilo inherits Arma{
  var filo
  var longitud 
  method longitud() = longitud 
  method filo() = filo.min(1).max(0)
  override method valorDeAtaque() = filo * longitud  
}

class ArmaContudente inherits Arma {
  var peso
  override method valorDeAtaque() = peso 
}



class Armadura {
  var defensa
  method defensa() = defensa 
}

class Casco inherits Armadura {
  override method defensa() =  10 
}

class Escudo inherits Armadura {
  method defensa(unGlariador) =  5 + unGlariador.destresa() 
}

class Gladiarior {
  var fuerza
  var destreza 
  var vida = 100 
  method fuerza() = fuerza 
  method destreza() = destreza
  method vida() = vida
  method poderDeAtaque()  
  method atacar(unEnemigo)
  method pelea(unEnemigo) {
    self.atacar(unEnemigo)
    unEnemigo.atacar() //verlo mas tarde
  }      
}

class Mirmillones inherits Gladiarior {
  //en general una espada o gladius, más un escudo rectangular o un casco con cresta
  override method destreza() = 15 
  var armaduraActual 
  method armaduraActual() = armaduraActual
  method cambiarArmadura(unaArmadura) {
    armaduraActual = unaArmadura
  }
  override method poderDeAtaque() = armaduraActual + fuerza
  override method atacar(unEnemigo) = self.poderDeAtaque() - unEnemigo.defensa() 
  method defensaDeGladiador() = armaduraActual.defensa() + self.destreza() //revisar puntos
}

class Dimachaerus inherits Gladiarior{
  const variedadDeArmas = []
  
  override method fuerza() = 10
  
  override method poderDeAtaque() = variedadDeArmas.sum({v => v.valorDeAtaque()}) + fuerza
  override method atacar(unEnemigo) {
    self.poderDeAtaque() - unEnemigo.defensa()
    destreza = destreza + 1
  }
}

class Grupo {
  const gladiadores = []
  method agregarGladedores(unGladeador) = gladiadores.add(unGladeador)
  method quitarGladeador(unGladeador) = gladiadores.remove(unGladeador)
  method elMasFuerte() = gladiadores.max({g => g.fuerza()})
  method nombreDeGrupoDimacherus() {}  
  method nombreDeGrupo(unGladeador) =
   if(unGladeador == Mirmillones) {
     "mirmillolandia"
   }
   else{
    0
   } 
}

object colosio {
  method combates(){} 
}

   