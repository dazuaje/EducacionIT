/* Declaraciones */
	const d = document
	const menuBtn = d.querySelector('nav .btn')
	const menuLst = d.querySelector('nav .menu')
	const pBar = d.querySelector('.bar progress')
	const pIn = d.querySelector('.bar input')
	const ctx = d.querySelector('#canvas').getContext('2d')
	const mapBtn = d.querySelector('.map .icon')
	const mapFrm = d.querySelector('.map iframe')
	const animBtn = d.querySelector('.around .btn')
	const animDiv = d.querySelector('.around div')
	const prev = d.querySelector('#header .icon-prev')
	const next = d.querySelector('#header .icon-next')
	const slides = d.querySelectorAll('#header .slide li')
/* Navigation Bar */
	menuBtn.onclick = () => menuLst.classList.toggle('active')
/* Progress Bar */
	pIn.oninput = () => pBar.value = pIn.value
/* Animation Play*/
	animBtn.onclick = () => animDiv.style.animationPlayState == 'running' ? 
		(animDiv.style.animationPlayState = 'paused', animBtn.innerHTML = 'PLAY') : 
		(animDiv.style.animationPlayState = 'running', animBtn.innerHTML = 'PAUSE') 
/* Canvas */
	// Rectangulo
	ctx.fillStyle = '#448'
	ctx.fillRect(50,50,100,100) // x, y, width, height
	// Circulo
	ctx.fillStyle = 'rgba(204,51,51,.5)'
	ctx.arc(150, 150, 50, 0, 2 * Math.PI) // cx, cy, r, start, end
	ctx.fill()
	// Triangulo
	ctx.beginPath()
	ctx.fillStyle = 'hsla(120,50%,50%,.5)'
	ctx.moveTo(150,50)
	ctx.lineTo(150,150)
	ctx.lineTo(250,100)
	ctx.fill()
	// Texto
	ctx.font = 'bold 1rem calibri, sans-serif'
	ctx.strokeText('Canvas (Mapa de Bits)', 50, 250) // text, x, y
	mapBtn.onclick = () => mapFrm.classList.toggle('active') ? mapBtn.classList.replace('icon-max','icon-min') : mapBtn.classList.replace('icon-min', 'icon-max')
/* Gallery Fade*/
	/*actions*/
		prev.onclick = () => getItem(slides)
		next.onclick = () => getItem(slides, true)
	/*functions*/
		const getItem = (array, type = false, className = 'active') => {
			for(const i of array){
				if(i.classList.contains(className)){
					i.classList.remove(className)
					getNewItem(i, type)
			}	}	newItem.classList.add(className)
		}
		const getNewItem = (el, type) => {
			newItem =  type ? 
			(el.nextElementSibling || el.parentNode.firstElementChild ) : 
			(el.previousElementSibling || el.parentNode.lastElementChild)
		}