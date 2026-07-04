-- This runs once when the game boots up
function love.load()
    score = 0
end

-- This handles drawing shapes and text to the 3DS screens
function love.draw(screen)
    if screen == "top" then
        -- This code draws on the TOP screen
        love.graphics.print("My First 3DS Game!", 100, 50)
        love.graphics.print("Score: " .. score, 100, 100)
        
    elseif screen == "bottom" then
        -- This code draws on the BOTTOM screen
        love.graphics.print("Tap the Touch Screen to score!", 20, 50)
        
        -- Draw a little box representing a button
        love.graphics.rectangle("line", 20, 100, 100, 50)
        love.graphics.print("CLICK ME", 35, 115)
    end
end

-- This detects when the 3DS bottom touchscreen is tapped
function love.touchpressed(id, x, y, dx, dy, pressure)
    -- If they tap inside our button rectangle
    if x > 20 and x < 120 and y > 100 and y < 150 then
        score = score + 1
    end
end

-- Pressing any button on the D-pad/buttons closes the game safely
function love.gamepadpressed(joystick, button)
    love.event.quit()
end
