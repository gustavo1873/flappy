Bird = Class{}

local GRAVITY = 20

function Bird:init()
    -- bird image and methods to get width and height
    self.image = love.graphics.newImage('bird.png')
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    -- adjust bird to be in the middle of the screen
    self.x = VIRTUAL_WIDTH / 2 - (self.width / 2)
    self.y = VIRTUAL_HEIGHT / 2 - (self.height / 2)

    --gravity
    self.dy = 0
end

function Bird:render()
    love.graphics.draw(self.image, self.x, self.y)
end

function Bird:update(dt)
    -- apply gravity to velocity
    self.dy = self.dy + GRAVITY * dt

    -- apply current velocity to Y position
    self.y = self.y + self.dy
end