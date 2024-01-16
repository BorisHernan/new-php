document.addEventListener('DOMContentLoaded',  () => {

    const reloj_ = document.querySelector('#clock')
    let formato24 =  false


    const hora_actual = () => {
        const fecha = new Date()
        let horas = fecha.getHours()
        let minutos = actualizar_hora(fecha.getMinutes())
        let segundos = actualizar_hora(fecha.getSeconds())

        if(formato24) {
            reloj_.innerText = `${horas} : ${minutos} : ${segundos}`
        } else{
            const amPm = horas >=12 ? 'PM' : 'AM'
            horas = horas % 12 || 12
            reloj_.innerText = `${horas} : ${minutos} : ${segundos} ${amPm} `
        }

        setTimeout(hora_actual, 1000);
    }

    const actualizar_hora = numero => {
        return numero < 10 ? '0' + numero : numero
    }

    hora_actual()

})