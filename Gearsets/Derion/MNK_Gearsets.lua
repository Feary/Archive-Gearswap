-- Derion's MNK Gear_sets
-- Created: 1/25/2014
-- Last Modified: 6/14/2014
-- To Do List
--
--
--
--

if player.name == 'Derion' then
		-- includes			
			include('include/mappings.lua')
			include('include/equipment.lua')
			-- include('../include/autoexec.lua')
			
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = { 
					head="Hizamaru Somen", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
					body="Hizamaru Haramaki", hands="Hizamaru Kote", lring=Aug.Darkring1.Derion, rring="Defending Ring",
					back="Repulse Mantle", waist="Black Belt", legs="Hizamaru Hizayoroi", feet="Hizamaru Sune-Ate"}

		sets.idle.MDT = { 
					head="Hizamaru Somen", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
					body="Hizamaru Haramaki", hands="Hizamaru Kote", lring=Aug.Darkring1.Derion, rring="Defending Ring",
					back="Engulfer Mantle", waist="Black Belt", legs="Hizamaru Hizayoroi", feet="Hizamaru Sune-Ate"}

		
		sets.misc.Town = set_combine(sets.idle.PDT, {
					feet="Hermes' Sandals"})
						
		sets.idle.Standard = set_combine(sets.idle.PDT, {
					feet="Hermes' Sandals"})

		sets.idle.Regen = set_combine(sets.idle.PDT, {body="Hizamaru Haramaki"})
	
		sets.idle.Evasion = {}
		
		-- Precast
		sets.precast.Fastcast = set_combine(sets.idle.PDT, {
						--head="Athos's Chapeau", neck="Voltsurge Torque", rear="Enchantr Earring +1",
						head="Haruspex Hat", lear="Loquac. Earring", 
						waist="Black Belt"})
		sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

		sets.misc.Waltz = set_combine(set.idle.PDT, {head="Mummu Bonnet"})
		sets.misc.Steps = set_combine(set.idle.PDT, {head="Hizamaru Somen", neck="Peacock Amulet", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki", hands="Hizamaru Kote", lring="Cacoethic Ring", rring="Ramuh Ring",
					back="Ground Mantle", waist="Anguinus Belt", legs="Hizamaru Hizayoroi", feet="Hizamaru Sune-Ate"})
		sets.misc.flourish = {}
		
		-- JA
		sets.precast.JA["Formless Strikes"] = {body="Melee Cyclas"}
		
		-- MND
		sets.precast.JA["Chakra"] = set_combine(sets.idle.PDT, {ammo="Tantra Tathlum",
					lring="Levia. Ring", rring="Levia. Ring"})
		
		-- VIT
		sets.precast.JA["Chi Blast"] = set_combine(sets.idle.PDT, {})
		sets.precast.JA["Impetus"] = {body="Tantra Cyclas +2"}
		sets.precast.JA["Hundred Fists"] = {legs="Melee Hose"}
		sets.precast.JA["Focus"] = {
					--head="Temple Crown"
					}
		sets.precast.JA["Dodge"] = {
					--feet="Temple Gaiters"
					}
		sets.precast.JA["Boost"] = {
					--hands="Temple Gloves"
					}
		sets.precast.JA["Counterstance"] = {
					--feet="Melee Gaiters"
					}
		sets.precast.JA["Mantra"] = {
					--feet="Melee Gaiters"
					}

		-- TP 
		sets.TP = {ammo="Tantra Tathlum",
					head="Hizamaru Somen", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki", hands="Hizamaru Kote", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Windbuffet Belt", legs="Hizamaru Hizayoroi", feet="Hizamaru Sune-Ate"}
		
		-- Accuracy TP
		sets.TP.MidAcc = { 
					head="Hizamaru Somen", neck="Asperity Necklace",lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki", hands="Hizamaru Kote", lring="Rajas Ring", rring="Epona's Ring",
					back="Ground Mantle", waist="Windbuffet Belt", legs="Hizamaru Hizayoroi", feet="Hizamaru Sune-Ate"}

		-- High Accuracy TP
		sets.TP.HighAcc = {ammo="Tantra Tathlum",
					head="Hizamaru Somen", neck="Asperity Necklace",lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki", hands="Hizamaru Kote", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Windbuffet Belt", legs="Hizamaru Hizayoroi", feet="Hizamaru Sune-Ate"}

		-- Hybrid -DT/TP
		sets.TP.Hybrid = set_combine(sets.TP, sets.idle.PDT)
						
		-- Hundred Fists
		sets.TP.HF = set_combine(sets.TP,{body="Tantra Cyclas +2"})

		-- Impetus Sets
		sets.TP.Impetus = set_combine(sets.TP, {body="Tantra Cyclas +2"})
		sets.TP.MidAcc.Impetus = set_combine(sets.TP.MidAcc, {body="Tantra Cyclas +2"})
		sets.TP.HighAcc.Impetus =  set_combine(sets.TP.HighAcc, {body="Tantra Cyclas +2"})

		
		-- Weaponskills
		sets.precast.WS = {ammo="Tantra Tathlum",
					head="Hizamaru Somen", neck="Asperity Necklace",lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki", hands="Hizamaru Kote", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Windbuffet Belt", legs="Hizamaru Hizayoroi", feet="Hizamaru Sune-Ate"}
		
		sets.precast.WS.MidAcc = {}
		sets.precast.WS.HighAcc = {}
		
		sets.precast.WS.Impetus = {}
		
		-- Victory Smite
		sets.precast.WS['Victory Smite'] = {ammo="Tantra Tathlum",
					
					head="Espial Cap",  lear="Brutal Earring", rear="Ghillie Earring +1",
					body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"}

	
		sets.precast.WS.Impetus['Victory Smite'] = {ammo="Tantra Tathlum",
					head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
					body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"}

		-- Final Heaven
		sets.precast.WS['Final Heaven'] = set_combine(sets.precast.WS)
		
		-- Shijin Spiral
		sets.precast.WS['Shijin Spiral'] = set_combine(sets.precast.WS, {ammo="Tantra Tathlum",
					head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
					body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"})

		sets.precast.WS.MidAcc['Shijin Spiral'] = set_combine(sets.precast.WS['Shijin Spiral'], {ammo="Tantra Tathlum",
					head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
					body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"})
		sets.precast.WS.HighAcc['Shijin Spiral'] = set_combine(sets.precast.WS['Shijin Spiral'], {ammo="Tantra Tathlum",
					head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
					body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"})
	
		-- Ascetic's Fury
		sets.precast.WS["Ascetic's Fury"] = set_combine(sets.precast.WS, {ammo="Tantra Tathlum",
					head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
					body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Light Belt", legs="Espial Hose", feet="Espial Socks"})
	
		-- Asuran Fists
		sets.precast.WS["Asuran Fists"] = set_combine(sets.precast.WS, {neck="Shadow Gorget", waist="Anguinus Belt"})
end