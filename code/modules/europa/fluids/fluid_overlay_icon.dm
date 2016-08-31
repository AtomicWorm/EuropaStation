/obj/effect/fluid/update_icon()
	alpha = min(FLUID_MAX_ALPHA,max(FLUID_MIN_ALPHA,ceil(255*(fluid_amount/FLUID_MAX_DEPTH))))
	if(fluid_amount > FLUID_DELETING && fluid_amount <= FLUID_EVAPORATION_POINT)
		overlays += get_fluid_icon("shallow_still")
	else if(fluid_amount >= FLUID_EVAPORATION_POINT && fluid_amount <= FLUID_DEEP)
		overlays += get_fluid_icon("mid_still")
	else if(fluid_amount >= FLUID_DEEP && fluid_amount < FLUID_OCEAN_DEPTH)
		overlays += get_fluid_icon("deep_still")
	else if(fluid_amount >= FLUID_OCEAN_DEPTH)
		overlays += get_fluid_icon("ocean")