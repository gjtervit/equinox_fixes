local isLoaded = false

function ActivateInteriorEntitySets(interior, name, sets)
	if IsValidInterior(interior) then
		if IsInteriorEntitySetActive(interior, sets[1]) then
			print(name .. " interior already active.")
		else
			for _, set in ipairs(sets) do
				ActivateInteriorEntitySet(interior, set)
			end
			print(name .. " interior activated.")
		end
	end
end

Citizen.CreateThread(function()
    while not isLoaded do
        Citizen.Wait(1)

		--Fixes broken Annesburg gun store interior set
	ActivateInteriorEntitySets(2818, "Annesburg gun store", {
		"ann_gunsmith_int_rent",
		"_sign_pistolAmmo_dressing",
		"_sign_revolverAmmo_dressing",
		"_sign_rifleAmmo_dressing",
		"_sign_shotgunAmmo_dressing",
		"_s_inv_arrowammo01x_dressing",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_revAmmo01x_group",
		"_s_inv_highvlcty_rifleAmmo01x_group",
		"_s_inv_pistolAmmo01x_group",
		"_s_inv_repeatHV_rifleammo01x_group",
		"_s_inv_repeat_rifleammo01x_dressing",
		"_s_inv_repeat_rifleammo01x_group",
		"_s_inv_revolverAmmo01x_group",
		"_s_inv_rifleAmmo01x_group",
		"_s_inv_shotgunAmmo01x_group",
		"_s_inv_slug_shotgunAmmo01x_group",
		"_s_inv_varmint_rifleammo01x_group"
	})

	--Fixes broken St. Denis bank floor (imap required also to remove alleyway geometry)
	ActivateInteriorEntitySets(42754, "Saint Denis bank", {
		"new_com_bank_before"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(3074, "Saint Denis general store", {
		"_p_bread06x_dressing",
		"_p_bread06x_group",
		"_p_cigar02x_dressing",
		"_p_cigar02x_group",
		"_p_cigarettebox01x_dressing",
		"_p_cigarettebox01x_group",
		"_s_biscuits01x_dressing",
		"_s_biscuits01x_group",
		"_s_brandy01x_group",
		"_s_candyBag01x_red_group",
		"_s_cheeseWedge1x_dressing",
		"_s_cheeseWedge1x_group",
		"_s_chocolateBar02x_dressing",
		"_s_chocolateBar02x_group",
		"_s_coffeeTin01x_dressing",
		"_s_coffeeTin01x_group",
		"_s_crackers01x_dressing",
		"_s_crackers01x_group",
		"_s_inv_gin01x_dressing",
		"_s_inv_gin01x_group",
		"_s_inv_rum01x_group",
		"_s_inv_tabacco01x_dressing",
		"_s_inv_tabacco01x_group",
		"_s_inv_whiskey01x_dressing",
		"_s_inv_whiskey01x_group"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(2050, "Saint Denis gun store", {
		"_s_inv_arrowammo01x_dressing",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_revAmmo01x_group",
		"_s_inv_highvlcty_rifleAmmo01x_group",
		"_s_inv_pistolAmmo01x_dressing",
		"_s_inv_pistolAmmo01x_group",
		"_s_inv_revolverAmmo01x_dressing",
		"_s_inv_revolverAmmo01x_group",
		"_s_inv_rifleAmmo01x_dressing",
		"_s_inv_rifleAmmo01x_group",
		"_s_inv_shotgunAmmo01x_dressing",
		"_s_inv_shotgunAmmo01x_group",
		"_s_inv_slug_shotgunAmmo01x_group",
		"_s_inv_varmint_rifleammo01x_group"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(34562, "Saint Denis doctor", {
		"SD_doc_curtain01",
		"_s_candyBag01x_red_group",
		"_s_chocolateBar02x_dressing",
		"_s_chocolateBar02x_group",
		"_s_inv_CocaineGum01x_dressing",
		"_s_inv_CocaineGum01x_group",
		"_s_inv_medicine01x_dressing",
		"_s_inv_medicine01x_group",
		"_s_inv_medicine_fty_dressing",
		"_s_inv_medicine_fty_group",
		"_s_inv_supertonic01x_dressing",
		"_s_inv_supertonic01x_group",
		"_s_inv_tonic01x_dressing",
		"_s_inv_tonic01x_group"
	})

	--Fixes broken Rhodes bank interior wall inside vault (requires below imaps as well to fix eterior textures)
	ActivateInteriorEntitySets(29442, "Rhodes bank", {
		"rhobank_int_walla"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(258, "Rhodes general store", {
		"_FIN2_EXT_P19_FRAMES_ON",
		"_p_apple01x_dressing",
		"_p_apple01x_group",
		"_p_bread06x_dressing",
		"_p_bread06x_group",
		"_p_cigar02x_dressing",
		"_p_cigar02x_group",
		"_p_cigarettebox01x_dressing",
		"_p_cigarettebox01x_group",
		"_p_corn02x_dressing",
		"_p_corn02x_group",
		"_p_tin_pomade01x_dressing",
		"_p_tin_pomade01x_group",
		"_s_beardTonic01x_dressing",
		"_s_beardTonic01x_group",
		"_s_biscuits01x_dressing",
		"_s_biscuits01x_group",
		"_s_brandy01x_group",
		"_s_candyBag01x_red_group",
		"_s_canPeas01x_dressing",
		"_s_canPeas01x_group",
		"_s_canPineapple01x_dressing",
		"_s_canPineapple01x_group",
		"_s_canStrawberries01x_dressing",
		"_s_canStrawberries01x_group",
		"_s_cheeseWedge1x_dressing",
		"_s_cheeseWedge1x_group",
		"_s_chocolateBar02x_dressing",
		"_s_chocolateBar02x_group",
		"_s_coffeeTin01x_dressing",
		"_s_coffeeTin01x_group",
		"_s_cornedBeef01x_dressing",
		"_s_cornedBeef01x_group",
		"_s_inv_horsePills01x_dressing",
		"_s_inv_horsePills01x_group",
		"_s_inv_rum01x_dressing",
		"_s_inv_rum01x_group",
		"_s_inv_tabacco01x_dressing",
		"_s_inv_tabacco01x_group",
		"_s_inv_whiskey01x_dressing",
		"_s_inv_whiskey01x_group",
		"_s_oatcakes01x_dressing",
		"_s_oatcakes01x_group",
		"_s_peach01x_dressing",
		"_s_peach01x_group",
		"_s_saltedbeef01x_group",
		"_s_saltedbeef02x_group"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(8962, "Rhodes gun store", {
		"p_fireplacelogs02x",
		"rhoGunsmith_FireON",
		"RHO_GUN_REGISTER",
		"_s_inv_arrowammo01x_dressing",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_revAmmo01x_group",
		"_s_inv_highvlcty_rifleAmmo01x_group",
		"_s_inv_pistolAmmo01x_group",
		"_s_inv_pistol_sign_dressing",
		"_s_inv_repeater_sign_dressing",
		"_s_inv_repeatHV_rifleammo01x_group",
		"_s_inv_repeat_rifleammo01x_group",
		"_s_inv_revolverAmmo01x_group",
		"_s_inv_revolver_sign_dressing",
		"_s_inv_rifleAmmo01x_group",
		"_s_inv_rifle_sign_dressing",
		"_s_inv_shotgunAmmo01x_group",
		"_s_inv_shotgun_sign_dressing",
		"_s_inv_slug_shotgunAmmo01x_group",
		"_s_inv_varmint_rifleammo01x_group"
	})

	--Fixes missing windows at the front of the saloon, missing chairs and set on poker table as well as a missing bed upstairs
	ActivateInteriorEntitySets(21250, "Valentine saloon", {
		"front_windows",
		"val_saloon_br03_bed",
		"6_chair_poker_set"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(45826, "Valentine general store", {
		"val_genstore_night_light",
		"_p_apple01x_dressing",
		"_p_apple01x_group",
		"_p_bread06x_dressing",
		"_p_bread06x_group",
		"_p_carrots_01x_dressing",
		"_p_carrots_01x_group",
		"_p_cigar02x_dressing",
		"_p_cigar02x_group",
		"_p_cigarettebox01x_dressing",
		"_p_cigarettebox01x_group",
		"_p_corn02x_dressing",
		"_p_corn02x_group",
		"_p_int_fishing01_dressing",
		"_p_package01x_dressing",
		"_p_package01x_group",
		"_p_pear_02x_dressing",
		"_p_pear_02x_group",
		"_p_tin_pomade01x_dressing",
		"_p_tin_pomade01x_group",
		"_p_tin_soap01x_dressing",
		"_p_tin_soap01x_group",
		"_s_biscuits01x_dressing",
		"_s_biscuits01x_group",
		"_s_canBeans01x_group",
		"_s_canBeans01_dressing",
		"_s_canCorn01x_dressing",
		"_s_canCorn01x_group",
		"_s_candyBag01x_red_group",
		"_s_canPeaches01x_dressing",
		"_s_canPeaches01x_group",
		"_s_cheeseWedge1x_group",
		"_s_chocolateBar02x_dressing",
		"_s_chocolateBar02x_group",
		"_s_coffeeTin01x_dressing",
		"_s_coffeeTin01x_group",
		"_s_crackers01x_dressing",
		"_s_crackers01x_group",
		"_s_cricketTin01x_dressing",
		"_s_cricketTin01x_group",
		"_s_gunOil01x_dressing",
		"_s_gunOil01x_group",
		"_s_inv_baitHerb01x_dressing",
		"_s_inv_baitherb01x_group",
		"_s_inv_baitMeat01x_dressing",
		"_s_inv_baitmeat01x_group",
		"_s_inv_gin01x_dressing",
		"_s_inv_gin01x_group",
		"_s_inv_horsePills01x_dressing",
		"_s_inv_horsePills01x_group",
		"_s_inv_pocketwatch04x_dressing",
		"_s_inv_pocketWatch04x_group",
		"_s_inv_rum01x_dressing",
		"_s_inv_rum01x_group",
		"_s_inv_tabacco01x_dressing",
		"_s_inv_tabacco01x_group",
		"_s_inv_whiskey01x_dressing",
		"_s_inv_whiskey01x_group",
		"_s_oatcakes01x_dressing",
		"_s_oatcakes01x_group",
		"_s_offal01x_dressing",
		"_s_offal01x_group",
		"_s_saltedbeef01x_group",
		"_s_saltedbeef02x_group",
		"_s_wormCan01x_dressing",
		"_s_wormcan01x_group"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(63746, "Valentine gun store", {
		"_s_inv_arrowammo01x_dressing",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_pistolAmmo01x_group",
		"_s_inv_pistol_sign_dressing",
		"_s_inv_repeater_sign_dressing",
		"_s_inv_repeatHV_rifleammo01x_group",
		"_s_inv_repeat_rifleammo01x_group",
		"_s_inv_revolverAmmo01x_group",
		"_s_inv_revolver_sign_dressing",
		"_s_inv_rifleAmmo01x_group",
		"_s_inv_rifle_sign_dressing",
		"_s_inv_shotgunAmmo01x_group",
		"_s_inv_shotgun_sign_dressing",
		"_s_inv_slug_shotgunAmmo01x_group",
		"_s_inv_varmint_rifleammo01x_group"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(21506, "Strawberry general store", {
		"_p_apple01x_dressing",
		"_p_apple01x_group",
		"_p_carrots_01x_dressing",
		"_p_carrots_01x_group",
		"_p_cigar02x_dressing",
		"_p_cigar02x_group",
		"_p_cigarettebox01x_dressing",
		"_p_cigarettebox01x_group",
		"_p_int_fishing01_dressing",
		"_p_tin_pomade01x_dressing",
		"_p_tin_pomade01x_group",
		"_p_tin_soap01x_dressing",
		"_p_tin_soap01x_group",
		"_saltedmeats_dressing",
		"_s_biscuits01x_dressing",
		"_s_biscuits01x_group",
		"_s_canBeans01x_dressing",
		"_s_canBeans01x_group",
		"_s_canCorn01x_dressing",
		"_s_canCorn01x_group",
		"_s_canPeaches01x_dressing",
		"_s_canPeaches01x_group",
		"_s_canPeas01x_dressing",
		"_s_canPeas01x_group",
		"_s_coffeeTin01x_dressing",
		"_s_coffeeTin01x_group",
		"_s_crackers01x_dressing",
		"_s_crackers01x_group",
		"_s_cricketTin01x_dressing",
		"_s_cricketTin01x_group",
		"_s_inv_baitHerb01x_dressing",
		"_s_inv_baitherb01x_group",
		"_s_inv_baitMeat01x_dressing",
		"_s_inv_baitmeat01x_group",
		"_s_inv_gin01x_dressing",
		"_s_inv_gin01x_group",
		"_s_inv_horsePills01x_dressing",
		"_s_inv_horsePills01x_group",
		"_s_inv_pocketwatch04x_dressing",
		"_s_inv_pocketWatch04x_group",
		"_s_inv_tabacco01x_dressing",
		"_s_inv_tabacco01x_group",
		"_s_inv_whiskey01x_dressing",
		"_s_inv_whiskey01x_group",
		"_s_oatcakes01x_dressing",
		"_s_oatcakes01x_group",
		"_s_saltedbeef01x_group",
		"_s_saltedbeef02x_group",
		"_s_wormCan01x_dressing",
		"_s_wormcan01x_group"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(514, "Tumbleweed general store", {
		"_p_apple01x_dressing",
		"_p_apple01x_group",
		"_p_cigarettebox01x_dressing",
		"_p_cigarettebox01x_group",
		"_p_corn02x_dressing",
		"_p_corn02x_group",
		"_p_tin_pomade01x_dressing",
		"_p_tin_pomade01x_group",
		"_p_tin_soap01x_dressing",
		"_p_tin_soap01x_group",
		"_saltedmeats_dressing",
		"_s_canCorn01x_dressing",
		"_s_canCorn01x_group",
		"_s_canPeas01x_dressing",
		"_s_canPeas01x_group",
		"_s_canStrawberries01x_dressing",
		"_s_canStrawberries01x_group",
		"_s_coffeeTin01x_dressing",
		"_s_coffeeTin01x_group",
		"_s_gunOil01x_dressing",
		"_s_gunOil01x_group",
		"_s_inv_baitHerb01x_dressing",
		"_s_inv_baitherb01x_group",
		"_s_inv_baitMeat01x_dressing",
		"_s_inv_baitmeat01x_group",
		"_s_inv_gin01x_dressing",
		"_s_inv_gin01x_group",
		"_s_inv_tabacco01x_dressing",
		"_s_inv_tabacco01x_group",
		"_s_inv_whiskey01x_dressing",
		"_s_inv_whiskey01x_group",
		"_s_oatcakes01x_dressing",
		"_s_oatcakes01x_group",
		"_s_saltedbeef01x_group",
		"_s_saltedbeef02x_group"
	})

	--Adds missing stock props from shelves
	ActivateInteriorEntitySets(11778, "Tumbleweed gun store", {
		"tum_gunsmith_int_rentSign",
		"_s_inv_arrowammo01x_dressing",
		"_s_inv_highvlcty_pstAmmo01x_group",
		"_s_inv_highvlcty_revAmmo01x_group",
		"_s_inv_highvlcty_rifleAmmo01x_group",
		"_s_inv_pistolAmmo01x_group",
		"_s_inv_pistol_sign_dressing",
		"_s_inv_repeater_sign_dressing",
		"_s_inv_repeatHV_rifleammo01x_group",
		"_s_inv_repeatXS_rifleammo01x_group",
		"_s_inv_repeat_rifleammo01x_group",
		"_s_inv_revolverAmmo01x_group",
		"_s_inv_revolver_sign_dressing",
		"_s_inv_rifleAmmo01x_group",
		"_s_inv_rifle_sign_dressing",
		"_s_inv_shotgunAmmo01x_group",
		"_s_inv_shotgun_sign_dressing",
		"_s_inv_slug_shotgunAmmo01x_group",
		"_s_inv_varmint_rifleammo01x_group",
		"_s_inv_xpres_pstAmmo01x_group",
		"_s_inv_xpres_revAmmo01x_group",
		"_s_inv_xpres_rifleAmmo01x_group"
	})

	--Trelawny's Caravan near Rhodes interior set
	ActivateInteriorEntitySets(69122, "Trelawny caravan", {
		"rho_slum_player_trelawny01_stage_01"
	})

	--Fixes interior and roof for ranch up in the grizzlies, near Window Rock. (-397.52, 1718.94, 216.1)
	ActivateInteriorEntitySets(2, "Chez Porter", {
		"che_cabin_int_roof_intact",
		"che_maincabin_occupied"
	})

	--Fixes interior for ranch near Oil Field (786.64, 851.76, 118.6})
	ActivateInteriorEntitySets(28418, "Carmody Dell", {
		"_car_house_int_before_ransack",
		"_car_house_int_day"
	})

        isLoaded = true
    end
end)

--Fix Rhodes Bank Hole (fixes textures outside of bank)
RequestImap(828093818)
RequestImap(518127510)
RemoveImap(758684739)m
RemoveImap(-661825463)

--Fix St. Denis Bank Floor (removes geometry in alley)
RemoveImap(-1026473536)

--Fix St. Denis Vauderville Flickering Posters (large theater)
RemoveImap(-660075384)
RequestImap(-775951892)
RemoveImap(808576710)
RemoveImap(137316925)
RemoveImap(1431947993)