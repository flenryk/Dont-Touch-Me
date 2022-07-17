Player = Object:extend()

function Player:new(x,y)

  self.collider = world:newBSGRectangleCollider(x, y, 50,60, 8)
  self.collider:setCollisionClass('Player')
  self.collider:setObject(self)

end


function Player:update(dt)

    local px, py = self.collider:getLinearVelocity()
  
    if love.keyboard.isDown("a") and px > -300 then
      self.collider:applyForce(-5000,0)
    
    elseif love.keyboard.isDown('d') and px < 300 then
      self.collider:applyForce(5000,0)
    end
  
    function love.keypressed(key)
      if key == "w" then

      self.collider:applyLinearImpulse(0,-2000)
      sound.jump:play()
      end
  
    end

  
    
    if self.collider:enter('cropped') then
    local collision_data = self.collider:getEnterCollisionData('cropped')
    local cropped = collision_data.collider:getObject()
    
    sound.lose:play()
    GAME_STATE = "GAME-OVER"
  end
  
    if self.collider:enter('Enemy') then
      local collision_data = self.collider:getEnterCollisionData('Enemy')
      local cropped = collision_data.collider:getObject()
    
      sound.lose:play()
      GAME_STATE = "GAME-OVER"
    end
  
    if self.collider:enter('Point') then
    local collision_data = self.collider:getEnterCollisionData('Point')
    local cropped = collision_data.collider:getObject()

    sound.point:play()
    Score = Score + 1
  end
  
    animations_skin.move:update(dt)
  
  
end

function Player:draw()
  animations_skin.move:draw(skin_spriteSheet,self.collider:getX()-35,self.collider:getY()-40)
  
end




 
