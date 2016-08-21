/mob/living/brain/death(gibbed)
	if(!gibbed && istype(container, /obj/item/device/mmi)) //If not gibbed but in a container.
		container.icon_state = "mmi_dead"
		clear_fullscreens()
		return ..(gibbed,"beeps shrilly as the MMI flatlines!")
	else
		clear_fullscreens()
		return ..(gibbed,"no message")

/mob/living/brain/gib()
	if(istype(container, /obj/item/device/mmi))
		qdel(container)//Gets rid of the MMI if there is one
	if(loc)
		if(istype(loc,/obj/item/organ/internal/brain))
			qdel(loc)//Gets rid of the brain item
	..(null,1)