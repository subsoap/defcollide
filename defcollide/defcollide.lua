-- Script based collision detection without physics for Defold
-- Eventually want to port to a native extension for performance

local M = {}

-- point within an unrotated rectangle assuming that the rectangle's x,y is its centroid
function M.point_within_rectangle_centroid(point_x, point_y, rectangle_x, rectangle_y, rectangle_width, rectangle_height)
	local width_half = rectangle_width / 2
	local height_half = rectangle_height / 2
	if point_x >= (rectangle_x - width_half) and point_x <= (rectangle_x + width_half) then
		if point_y >= (rectangle_y - height_half) and point_y <= (rectangle_y + height_half) then
			return true
		end
	end
	return false
end




return M
