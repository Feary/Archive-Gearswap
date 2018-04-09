-- Derion's WAR Gear_sets
-- Created: 6/1/2014
-- Last Modified: 6/14/2014
-- To Do
--

if player.name == 'Derion' then
-- includes
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
		
-- Auto Sets
-- Standard/idle
		sets.idle.PDT = {
				head="Sulevia's Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				-- rring="Defending Ring",
				body="Souveran Cuirass", hands="Sulevia's Gauntlets", lring=Aug.Darkring1, rring="Defending Ring",
				back="Repulse Mantle", waist="Nierenschutz", legs="Souveran Diechlings", feet="Souveran Schuhs"}
		
		sets.idle.MDT = {  
				head="Sulevia's Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				-- rring="Defending Ring",
				body="Souveran Cuirass", hands="Sulevia's Gauntlets", lring=Aug.Darkring1, rring="Defending Ring",
				back="Engulfer Cape", waist="Nierenschutz", legs="Souveran Diechlings", feet="Souveran Schuhs"}

		sets.misc.Town = set_combine(sets.idle.PDT, {feet="Hermes' Sandals"})
						
		sets.idle.Standard = set_combine(sets.idle.PDT, {
						lear="Merman's Earring", rear="Merman's Earring", 
						feet="Hermes' Sandals"})

		sets.Enmity = {}
		
		-- Precast		
		sets.precast.Fastcast = set_combine(sets.idle.PDT, {
						head="Cizin Helm", lear="Loquac. Earring", 
						--rring="Prolix Ring"
						})

		sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

		sets.misc.Waltz = set_combine(sets.idle.PDT,{})
		sets.misc.Steps = set_combine(sets.idle.PDT, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Ramuh Ring", rring="Cacoethic Ring",
					back="Grounded Mantle", waist="Anguinus Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
		sets.misc.flourish = {}
		
		-- JA
		sets.precast.JA["Mighty Strikes"] = {
				--hands="Warrior's Mufflers +2"
				}
		sets.precast.JA["Brazen Rush"] = {}

		sets.precast.JA["Provoke"] = set_combine(sets.Enmity,{})
		sets.precast.JA["Berserk"] = {
				--body="Fighter's Lorica", 
				--feet="Warrior's Calligae +2"
				}
		sets.precast.JA["Defender"] = {}
		sets.precast.JA["Warcry"] = {
				--head="Warrior's Mask"
				}
		sets.precast.JA["Aggressor"] = {
				--head="Pummeler's Mask", 
				--body="Warrior's Lorica +2"
				}
		sets.precast.JA["Tomahawk"] = {ammo="Thr. Tomahawk", 
				--feet="Warrior's Calligae +2"
				}
		sets.precast.JA["Restraint"] = {
				--hands="Ravager's Mufflers +2"
				}
		sets.precast.JA["Warrior's Charge"] = {
				--legs="Warrior Cuisses +2"
				}
		sets.precast.JA["Savagery"] = {
				--head="Warrior's Mask +2"
				}
		sets.precast.JA["Aggressive Aim"] = {
				--body="Warrior's Lorica +2"
				}
		
		-- TP set
		sets.TP = { ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Cacoethic Ring",
					back="Atheling Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"}

		-- GreatAxe TP 
		sets.TP.GA = { ammo="Ravager's Orb",
					ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Cacoethic Ring",
					back="Atheling Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"}

		-- Ionis Haste +2% Save TP 25+
		sets.TP.GA.Ionis = set_combine(sets.TP.GA, { ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Cacoethic Ring",
					back="Atheling Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})

		-- Great Axe Accuracy TP
		sets.TP.GA.Acc = {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Cacoethic Ring",
					back="Grounded Mantle", waist="Anguinus Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"}

		sets.TP.GA.Acc.Ionis = set_combine(sets.TP.GA.Acc,{ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Cacoethic Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
		-- GreatSword
		sets.TP.GS = {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Cacoethic Ring",
					back="Atheling Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"}

		sets.TP.GS.Acc = set_combine(sets.TP.GS,{ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Cacoethic Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})

		-- Weaponskills
		sets.precast.WS = {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"}
		sets.precast.WS.MS = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
		-- Great Axe
		sets.precast.WS["Ukko's Fury"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
						
		sets.precast.WS["Upheaval"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
						
		sets.precast.WS.MS["Upheaval"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
						
		sets.precast.WS["Fell Cleave"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
		sets.precast.WS.MS["Fell Cleave"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})

		-- GreatSword
		sets.precast.WS["Resolution"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
					head="Sulevia's Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Sulevia's Platemail", hands="Sulevia's Gauntlets", lring="Rajas Ring", rring="Ifrit Ring",
					back="Grounded Mantle", waist="Windbuffet Belt", legs="Sulevia's Cuisses", feet="Sulevia's Leggings"})
end