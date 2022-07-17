function load_todo()
  wf =  require "libraries/windfield"
  world = wf.newWorld()
  world:setGravity(0, 500)
  
  anim8 = require 'libraries/anim8'
  
  math.randomseed(os.time()) 
  
  images = {
    
    background = love.graphics.newImage('images/bg.png'),
    logo = love.graphics.newImage('images/logo.png'),
    pointimg = love.graphics.newImage('images/point.png'),
    coin = love.graphics.newImage('images/coin.png'),
    stone = love.graphics.newImage('images/stone.png')
  }
 
  sound = {
    jump = love.audio.newSource("sound/jump.wav","static"),
    lose = love.audio.newSource("sound/lose.wav","static"),
    point = love.audio.newSource("sound/point.wav","static"),
    music = love.audio.newSource("sound/music.mp3","static")
  }
  
  fonts = {
    font = love.graphics.newFont("font/font.ttf", 8)
    }
  
  skin_spriteSheet = love.graphics.newImage('images/skin.png')
  animate_skin_grip = anim8.newGrid(72,72,skin_spriteSheet:getWidth(),skin_spriteSheet:getHeight())
  
  
  animations_skin = { }
  
  animations_skin.move = anim8.newAnimation(animate_skin_grip('1-4',1),0.2)
end


function gui_player()
  
   love.graphics.draw(images.pointimg,0,0,0,0.5,0.5)
   sound.music:play()
   sound.music:setVolume(0.17)
   score()
   
end

function Home()
  love.graphics.draw(images.background,0,0)
  love.graphics.draw(images.logo,30,50,0,0.7,0.7)
  love.graphics.setColor(1,1,1) 
  love.graphics.setNewFont("font/font.ttf",23)
  love.graphics.print(' Presiona click para comenzar ',86,500)
  
  
function love.mousereleased(x,y,click)
    if click == 1 then
        
      GAME_STATE = "Play"
           
    end
  
end  
  function love.keypressed(key)
      if key == "escape" then
        love.event.quit()

      end
  
    end
end


function game_over()
love.graphics.draw(images.background,0,0)
love.graphics.setNewFont("font/font.ttf",30)

love.graphics.print('Lo siento perdiste',130,280)
love.graphics.print(Score,245,400)
sound.jump:stop()

  
function love.mousereleased(x,y,click)
    if click == 1 then
      love.graphics.print('Descubriste un easter egg FELICIDADES',130,280)
    end
  
end  

if love.keyboard.isDown('space') then
    Player.collider:destroy()

    Player1 = Player:new(60,60)
    Score = 0
    GAME_STATE = 'Play'
  end
  
  function love.keypressed(key)
      if key == "escape" then
        GAME_STATE = "Home"

      end
  
    end
  
end


function score()
  love.graphics.setColor(255,259,97)
  love.graphics.setNewFont("font/font.ttf",20)   
  love.graphics.print(Score,100,25)
  
end