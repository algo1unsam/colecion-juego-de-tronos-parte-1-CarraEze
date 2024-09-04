object dan{
    var inventario = #{}
    var capacidad = 2
    method aumentarCapacidad(){
        capacidad += capacidad + 1
    }

    method rocaDragon(){
        castillo.agregar(inventario)
        inventario.clear()
    }

    method invDetails() {
      inventario.forEach({n =>  console.println(n.nombre())})
    }

    method agregar(obj){
        if(inventario.size()<capacidad)
            {inventario.add(obj)}
    }   
    }

class Objeto{
    var enPosesion = false
    const nombre
    method agarrar(){enPosesion = true}
    method nombre() = nombre
    method estado() = enPosesion
}

object castillo{
    var almacen = #{}
    method agregar(inv) = almacen.add(inv)
    method ver() = almacen.forEach({n => console.println(n)})
}

const espada = new Objeto(nombre="espada")
const libro = new Objeto(nombre="libro")
