WINDOW_HEIGHT = 700
WINDOW_WIDTH  = 500

Object = require "classic"
require 'player'
require 'Enemy'
require 'menu'
require 'Point'

Score = 0

GAME_STATE = "Home"

function love.load()
  
  --cargar archivos del juego audio imagenes etc
  load_todo()
  
  --clases colisiones
  world:addCollisionClass('cropped')
  world:addCollisionClass('Player')
  world:addCollisionClass('Point', {ignores = {'cropped'}})
  world:addCollisionClass('Enemy', {ignores = {'cropped'}})
  world:addCollisionClass('flat', {ignores = {'cropped'}})
  ---end
  
  --jugador
  Player1 = Player:new(60,60)
  
  --enemigo
  enemy_generate()

  ---paredes
  wall_left = world:newRectangleCollider(0, 0, 1, WINDOW_HEIGHT)
  wall_right = world:newRectangleCollider(WINDOW_WIDTH, 0, 1, WINDOW_HEIGHT)
  wall_up = world:newRectangleCollider(0, 0, WINDOW_WIDTH,1)
  wall_up:setObject('wall_up')
  wall_down = world:newRectangleCollider(0, WINDOW_HEIGHT, WINDOW_WIDTH, 1)

  
  wall_left:setType('static')
  wall_left:setCollisionClass('cropped')
  wall_left:setObject('cropped')
  
  wall_right:setType('static')
  wall_right:setCollisionClass('cropped')
  wall_right:setObject('cropped')
  
  wall_up:setType('static')
  wall_up:setCollisionClass('cropped')
  wall_up:setObject('cropped')
  
  wall_down:setType('static')
  wall_down:setCollisionClass('cropped')
  wall_down:setObject('cropped')
  ---paredes

 
end


function love.update(dt)
  
  if GAME_STATE == "Play" then
    Player:update(dt)
    Enemy:update(dt)
    world:update(dt)
    
    
  end
  
end


function love.draw()
  
   if GAME_STATE == "Play" then
    
    world:draw()
    love.graphics.draw(images.background,0,0,0,0.8,0.8)
    Player:draw()
    Enemy:draw()
    Point:draw()
    gui_player()
    
    
    
   elseif GAME_STATE == "Home" then
    Home()
   elseif GAME_STATE == "GAME-OVER" then
    game_over()
   end
   
     
end
