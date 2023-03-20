# Bitmap
A module that can read and write raw bmp image files. 
# Example
```lua
local require = loadstring(game:HttpGet("http://raw.github.com/0zBug/-/main/-"))

local Bitmap = require("Bitmap")

local Image = {}

for y = 1, 15 do
    Image[y] = {}
    for x = 1, 15 do
        Image[y][x] = {x ^ 2, y ^ 2, x * y}
    end
end

writefile("example.bmp", Bitmap.Encode(Image))

local Image = Bitmap.Decode(readfile("example.bmp"))

for y, Row in next, Image do
	for x, Pixel in next, Row do
		local Color = Pixel[1]
        
		if Color then
			local Square = Drawing.new("Square")
			Square.Visible = true
			Square.Position = Vector2.new(x, y) * 8
			Square.Size = Vector2.one * 8
			Square.Color = Color3.fromRGB(Color[1], Color[2], Color[3])
			Square.Filled = true
		end
	end 
end
```
