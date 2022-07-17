Point = Object:extend()

function Point:new(w,h)
  self.x = math.random(0,500)
  self.y = math.random(0,700)
  self.collider = world:newRectangleCollider(self.x,self.y,w,h)
  self.collider:setCollisionClass('Point')
  self.collider:setObject(self)
  
end

function Point:draw()
 
  love.graphics.draw(images.coin,self.collider:getX()-35,self.collider:getY()-35,0,0.2,0.2)

end