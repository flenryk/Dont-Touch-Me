# 🎮 Don't Touch Me - Juego de Plataformas

<div align="center">
 <img width="500" height="700" alt="Don't touch me" src="https://github.com/user-attachments/assets/5c484574-7661-4cbe-b3db-f9433741f7b0" />

  [![Love2D](https://img.shields.io/badge/Love2D-11.4-red.svg)](https://love2d.org/)
  [![Lua](https://img.shields.io/badge/Lua-5.1-blue.svg)](https://www.lua.org/)
  [![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
</div>

## 📖 Descripción

**Don't Touch Me** es un emocionante juego de plataformas desarrollado con Love2D donde tu objetivo es sobrevivir el mayor tiempo posible evitando enemigos mortales y recolectando monedas para aumentar tu puntuación. ¡Demuestra tus habilidades de salto y evasión!

### ✨ Características

- 🎯 **Gameplay adictivo**: Mecánicas simples pero desafiantes
- 🎨 **Gráficos pixelados**: Estilo retro con sprites animados
- 🔊 **Audio inmersivo**: Efectos de sonido y música de fondo
- 🏆 **Sistema de puntuación**: Compite por la puntuación más alta
- 🎮 **Controles intuitivos**: Fácil de aprender, difícil de dominar

## 🎮 Controles

| Tecla | Acción |
|-------|--------|
| `W` | Saltar |
| `A` | Mover hacia la izquierda |
| `D` | Mover hacia la derecha |
| `ESC` | Salir del juego |
| `Click` | Comenzar juego |
| `Espacio` | Reiniciar después de game over |

## 🚀 Instalación

### Prerrequisitos

- [Love2D](https://love2d.org/) versión 11.4 o superior
- Sistema operativo compatible (Windows, macOS, Linux)

### Pasos de Instalación

1. **Clona el repositorio**
   ```bash
   git clone https://github.com/flenryk/game-lua.git
   cd game-lua
   ```

2. **Ejecuta el juego**
   ```bash
   # En Windows
   love .
   
   # En macOS/Linux
   love .
   ```

   O simplemente arrastra la carpeta del proyecto sobre el ejecutable de Love2D.

## 🏗️ Estructura del Proyecto

```
game-lua/
├── 📁 images/          # Recursos gráficos
│   ├── bg.png          # Fondo del juego
│   ├── coin.png        # Monedas
│   ├── icon.png        # Icono del juego
│   ├── logo.png        # Logo principal
│   ├── point.png       # Indicador de puntos
│   ├── skin.png        # Sprites del jugador
│   └── stone.png       # Sprites de enemigos
├── 📁 sound/           # Archivos de audio
│   ├── jump.wav        # Sonido de salto
│   ├── lose.wav        # Sonido de derrota
│   ├── music.mp3       # Música de fondo
│   └── point.wav       # Sonido de punto
├── 📁 font/            # Fuentes
│   └── font.ttf        # Fuente principal
├── 📁 libraries/       # Librerías externas
│   ├── anim8.lua       # Sistema de animaciones
│   └── windfield/      # Motor de física
├── 📄 main.lua         # Archivo principal
├── 📄 conf.lua         # Configuración del juego
├── 📄 player.lua       # Lógica del jugador
├── 📄 Enemy.lua        # Lógica de enemigos
├── 📄 Point.lua        # Lógica de puntos
├── 📄 menu.lua         # Sistema de menús
└── 📄 classic.lua      # Sistema de clases
```

## 🛠️ Tecnologías Utilizadas

- **Love2D**: Framework de desarrollo de juegos 2D
- **Lua**: Lenguaje de programación principal
- **Windfield**: Motor de física para Love2D
- **Anim8**: Sistema de animaciones para sprites

## 🎯 Mecánicas del Juego

### Jugador
- Movimiento horizontal con física realista
- Sistema de salto con impulso
- Detección de colisiones con enemigos y obstáculos
- Animaciones fluidas de movimiento

### Enemigos
- Spawn aleatorio cada 3 segundos
- Múltiples tipos de enemigos con diferentes tamaños
- Colisiones mortales con el jugador

### Sistema de Puntuación
- Recolección de monedas para aumentar puntuación
- Efectos de sonido al recolectar puntos
- Persistencia de puntuación durante la partida

## 🎨 Personalización

El juego es altamente personalizable. Puedes modificar:

- **Velocidad de spawn de enemigos**: Cambia `repeatSpawnRate` en `Enemy.lua`
- **Fuerza de salto**: Modifica el impulso en `main.lua`
- **Gravedad**: Ajusta la gravedad del mundo en `main.lua`
- **Sprites**: Reemplaza las imágenes en la carpeta `images/`
- **Sonidos**: Cambia los archivos de audio en la carpeta `sound/`

## 🐛 Reportar Problemas

Si encuentras algún bug o tienes sugerencias, por favor:

1. Abre un [issue](https://github.com/flenryk/game-lua/issues) en GitHub
2. Describe el problema detalladamente
3. Incluye pasos para reproducir el error
4. Especifica tu sistema operativo y versión de Love2D

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Para contribuir:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

## 👨‍💻 Autor

**flenryk** - Desarrollador Full-Stack

- GitHub: [@flenryk](https://github.com/flenryk)
- LinkedIn: [flenryk](https://www.linkedin.com/in/flenryk)

## 🙏 Agradecimientos

- [Love2D Community](https://love2d.org/) por el excelente framework
- [Windfield](https://github.com/adnzzzzZ/windfield) por el motor de física
- [Anim8](https://github.com/kikito/anim8) por el sistema de animaciones

---

<div align="center">
  <p>Hecho con ❤️ por <a href="https://github.com/flenryk">flenryk</a></p>
  <p>⭐ Si te gusta el proyecto, ¡dale una estrella!</p>
</div>
