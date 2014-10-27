namespace = "jdc_lamps:"

function craft_lamp(dye_colour)
	minetest.register_craft({
		output = 'jdc_lamps:'..dye_colour,
		recipe = {
			{'', 'dye:'..dye_colour, ''},
			{'dye:'..dye_colour, 'jdc_lamps:frame_glass', 'dye:'..dye_colour},
			{'', 'dye:'..dye_colour, ''},
		}
	})
end

function create_lamp(name, desc)
	minetest.register_node("jdc_lamps:"..name, {
		description = desc.." Lamp",
		drawtype = "mesh",
		tiles = {"lamp_"..name..".png"},
		paramtype = "light",
		use_texture_alpha = true,
		mesh = "lamp_model.b3d",
		groups = {cracky=3},
		light_source = 14,
	})
	
	craft_lamp(name)
end

minetest.register_craft({
	output = 'jdc_lamps:frame',
	recipe = {
		{'default:steel_ingot', 'group:wood', 'default:steel_ingot'},
		{'group:wood', 'default:torch', 'group:wood'},
		{'default:steel_ingot', 'group:wood', 'default:steel_ingot'},
	}
})


minetest.register_craft({
	type = "shapeless",
	output = 'jdc_lamps:frame_glass',
	recipe = {'default:glass', 'jdc_lamps:frame'},
})



create_lamp("black", "Black")
create_lamp("blue", "Blue")
create_lamp("brown", "Brown")
create_lamp("cyan", "Cyan")
create_lamp("dark_green", "Dark Green")
create_lamp("dark_grey", "Dark Grey")
create_lamp("green", "Green")
create_lamp("grey", "Grey")
create_lamp("magenta", "Magenta")
create_lamp("orange", "Orange")
create_lamp("pink", "Pink")
create_lamp("red", "Red")
create_lamp("violet", "Violet")
create_lamp("white", "White")
create_lamp("yellow", "Yellow")
create_lamp("frame", "Frame of the")
create_lamp("frame_glass", "Framed Glass of the")