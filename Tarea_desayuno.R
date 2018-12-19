Cortar <- function(x){
  if(x=="pan"){
    return("pan cortado")
  }else if(x=="naranjas"){
    return("naranjas cortadas")
  }else if(x=="palta"){
    return("palta cortada")
  }else{
    return(paste("No sé que hacer con ",x))
  }
}

Moler <- function(x){
  if(x=="palta cortada"){
    return("palta molida")
  }else{
    return(paste("No sé que hacer con ",x))
  }
}

CalentarSarten <- function(){
  return("sartén caliente")
}

Preparar <- function(x,y){
  if(x=="naranjas cortadas"){
    return("jugo de naranjas")
  }else if((x=="masa de panqueques" && y=="sartén caliente")||(y=="masa de panqueques" && x=="sartén caliente")){
    return("panqueques")
  }else if((x=="harina" && y=="huevos")||(y=="harina" && x=="huevos")){
    return("masa de panqueques")
  }else if((x=="pan tostado" && y=="palta molida")||(y=="pan tostado" && x=="palta molida")){
    return("pan tostado con palta")
  }else{
    return("faltan elementos")  
  }
}

Calentar <- function(x){
  if(x=="cafe"){
    return("cafe caliente")
  }else if(x=="pan cortado"){
    return("pan tostado")
  }else{
    return(paste("No sé que hacer con ",x))
  }
}

Rellenar <- function(x){
  if(x=="panqueques"){
    return("panqueques con manjar")
  }else{
    return(paste("No sé que hacer con ",x)) 
  }
}

Servir <- function(x,y,z,j){
  if((x=="pan tostado con palta" && y=="panqueques con manjar" && z=="jugo de naranjas" && j=="cafe caliente")){
    return("mmmmm... niami... el desayuno está maravilloso")
  }else{
    return("iiiuuuu... esto no está listo")
  }
}
#Lista de tareas

Cortar("pan") 
Cortar("palta") 
Cortar("naranjas")
CalentarSarten()
Preparar("harina","huevos")
Calentar(Cortar("pan"))
Preparar(Preparar("harina","huevos"),CalentarSarten())
Moler(Cortar("palta"))
Calentar("cafe")
Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta")))
Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten()))
Preparar(Cortar("naranjas"))
Servir(Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta"))), Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten())), Preparar(Cortar("naranjas")), Calentar("cafe"))

