Enemy = Object:extend()

timeSpawn = 0
repeatSpawnRate = 3

EnemySpawn = {}


function Enemy:new(w,h)
  self.x = math.random(0,500)
  self.y = math.random(0,700)
  self.collider = world:newRectangleCollider(self.x,self.y,w,h)
  self.collider:setCollisionClass('Enemy')
  self.collider:setObject(self)
end



function Enemy:update(dt)
  --spawn aleatorio xd
 timeSpawn = timeSpawn + dt
  
  if timeSpawn >= repeatSpawnRate then
    
   enemy_generate()
   
   timeSpawn = 0
   end
  
 
 
end

function Enemy:draw()
  love.graphics.draw(images.stone,self.collider:getX()-48,self.collider:getY()-48,0,0.2,0.2)
love.graphics.draw(images.stone,self.collider:getX()-4,self.collider:getY()-48,0,0.2,0.2)
love.graphics.draw(images.stone,self.collider:getX()-77,self.collider:getY()-48,0,0.2,0.2)
end

function enemy_generate()
  
    enemy1 = Enemy:new(20,80,80)
    enemy2 = Enemy:new(80,80)
    enemy3 = Enemy:new(80,80)
    point =  Point:new(20,20)
  
  
end