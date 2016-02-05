/obj/item/weapon/gun/composite/premade/rifle
	name = "hunting rifle"
	icon_state = "ballistic_rifle"
	variant_chamber = /obj/item/gun_component/chamber/ballistic/breech
	variant_stock =   /obj/item/gun_component/stock/rifle
	variant_grip =    /obj/item/gun_component/grip/rifle
	variant_body =    /obj/item/gun_component/body/rifle
	variant_barrel =  /obj/item/gun_component/barrel/rifle

/obj/item/weapon/gun/composite/premade/rifle/preloaded
	ammo_type = /obj/item/ammo_casing/a556

/obj/item/weapon/gun/composite/premade/rifle/large
	name = "7.62 rifle"
	variant_barrel = /obj/item/gun_component/barrel/rifle/large

/obj/item/weapon/gun/composite/premade/rifle/antimaterial
	set_model = /decl/weapon_model/anti_materiel_rifle
	name = "anti-materiel rifle"
	variant_barrel = /obj/item/gun_component/barrel/rifle/am
	variant_body =   /obj/item/gun_component/body/rifle/black

/obj/item/weapon/gun/composite/premade/rifle/antimaterial/New()
	new /obj/item/gun_component/accessory/chamber/scope(src)
	..()