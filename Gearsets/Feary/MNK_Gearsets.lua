-- MNK Gear_sets
-- Created: 1/25/2014
-- Last Modified: 02/03/2015
-- To Do List
--
--
--
--

if player.name == 'Feary' then
	-- includes	
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')

	-- Auto Sets
	-- Standard/idle
	sets.idle.PDT = { 
					head="Hizamaru Somen +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring=Aug.Darkring1, rring="Defending Ring",
					back="Moonbeam Cape", waist="Black Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	sets.idle.MDT = { 
					head="Hizamaru Somen +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring=Aug.Darkring1, rring="Defending Ring",
					back="Engulfer Cape +1", waist="Black Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	sets.idle.Regen = set_combine(sets.idle.PDT, {body="Hes. Cyclas"})
	sets.idle.Evasion = {
					head="Hizamaru Somen +1", neck="Torero Torque", lear="Musical earring", rear="Novia Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring=Aug.Darkring1, rring="Defending Ring",
					back="Fravashi Mantle", waist="Scouter's Rope",  legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	sets.misc.Town = set_combine(sets.idle.PDT, {
					head="Hizamaru Somen +1",
					feet="Hermes' Sandals"})
					
	sets.idle.Standard = set_combine(sets.idle.PDT, {
					lear="Merman's Earring", rear="Etiolation Earring",
					feet="Hermes' Sandals"})
					
	-- Precast
	sets.precast.Fastcast = set_combine(sets.idle.PDT, {
					head="Haruspex Hat +1", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
					body="Hizamaru Haramaki +1", hands="Taeon Gloves", lring="", rring="Prolix Ring",
					back="", waist="Black Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})
	sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

	sets.misc.Waltz = {}
	
	-- ACC
	sets.misc.Steps = {ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ramuh Ring +1", rring="Epona's Ring",
					back="Kayapa Cape", waist="Anguinus Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}
	sets.misc.flourish = {}

	-- JA
	sets.precast.JA["Formless Strikes"] = {body="Hes. Cyclas"}
	-- VIT
	sets.precast.JA["Chakra"] = set_combine(sets.idle.PDT, { ammo="Tantra Tahtlum",
					head="Hizamaru Somen +1",
					body="Anchorite's Cyclas", hands="Hes. Gloves", 
					legs="Hizamaru Hizayoroi +1"})
	-- MND
	sets.precast.JA["Chi Blast"] = set_combine(sets.idle.PDT, {
					head="Hizamaru Somen +1", neck="Phalaina Locket",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Stikini Ring", rring="Stikini Ring",
					back="", waist="Salire Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})
	sets.precast.JA["Impetus"] = {body="Bhikku Cyclas"}
	sets.precast.JA["Hundred Fists"] = {legs="Hes. Hose"}
	sets.precast.JA["Focus"] = {head="Anchorite's Crown"}
	sets.precast.JA["Dodge"] = {feet="Anch. Gaiters"}
	sets.precast.JA["Boost"] = {hands="Anchorite's Gloves"}
	sets.precast.JA["Counterstance"] = {feet="Hes. Gaiters"}
	sets.precast.JA["Mantra"] = {feet="Hes. Gaiters"}
				
	-- TP 
	sets.TP = { ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}
	-- Accuracy TP
	sets.TP.MidAcc = { ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	-- High Accuracy TP
	sets.TP.HighAcc = { ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Rajas Ring", rring="Epona's Ring",
					back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	-- Hybrid PDT/TP
	sets.TP.Hybrid = set_combine(sets.TP, sets.idle.PDT)
					
	-- Hundred Fists
	sets.TP.HF = set_combine(sets.TP,{body="Bhikku Cyclas"})
	sets.TP.HF.Acc = set_combine(sets.TP.MidAcc,{body="Bhikku Cyclas"})

	-- Impetus Sets
	sets.TP.Impetus = set_combine(sets.TP, {body="Bhikku Cyclas"})
	sets.TP.MidAcc.Impetus = set_combine(sets.TP.MidAcc, {body="Bhikku Cyclas"})
	sets.TP.HighAcc.Impetus =  set_combine(sets.TP.HighAcc, {body="Bhikku Cyclas"})

	-- Weaponskills
	sets.precast.WS = {ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
					back="Atheling Mantle", waist="Fotia Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	sets.precast.WS.Acc = {ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ramuh Ring +1", rring="Ramuh Ring +1",
					back="Atheling Mantle", waist="Fotia Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	-- Victory Smite
	sets.precast.WS['Victory Smite'] = { ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ifrit Ring +1", rring="Epona's Ring",
					back="Atheling Mantle", waist="Prosilio Belt +1", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	sets.precast.WS.Acc['Victory Smite'] = { ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ramuh Ring +1", rring="Epona's Ring",
					back="Kayapa Cape", waist="Fotia Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"}

	sets.precast.WS['Final Heaven'] = set_combine(sets.precast.WS)
	sets.precast.WS.Acc['Final Heaven'] = set_combine(sets.precast.WS.Acc)

	-- Shijun Spiral - Brutal/Trux 2 Ramuh
	sets.precast.WS['Shijin Spiral'] = set_combine(sets.precast.WS, {ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Justiciar's Torque", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ramuh Ring +1", rring="Epona's Ring",
					back="Kayapa Cape", waist="Wanion Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})

	sets.precast.WS.Acc['Shijin Spiral'] = set_combine(sets.precast.WS['Shijin Spiral'], {
					head="Hizamaru Somen +1", neck="Justiciar's Torque", lear="Bladeborn Earring", rear="Steelflash Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ramuh Ring +1", rring="Epona's Ring",
					back="Kayapa Cape", waist="Wanion Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})

	-- Ascetic's Fury
	sets.precast.WS["Ascetic's Fury"] = set_combine(sets.precast.WS, {ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ifrit Ring +1", rring="Epona's Ring",
					back="Atheling Mantle", waist="Fotia Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})

	sets.precast.WS.Acc["Ascetic's Fury"] = set_combine(sets.precast.WS.Acc, {
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ramuh Ring +1", rring="Epona's Ring",
					back="Kayapa Cape", waist="Fotia Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})

	-- Asuran Fists
	sets.precast.WS["Asuran Fists"] = set_combine(sets.precast.WS, {ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
					back="Atheling Mantle", waist="Fotia Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})

	sets.precast.WS.Acc["Asuran Fists"] = set_combine(sets.precast.WS.Acc, {ammo="Ginsen",
					head="Hizamaru Somen +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
					body="Hizamaru Haramaki +1", hands="Hizamaru Kote +1", lring="Ramuh Ring +1", rring="Ramuh Ring +1",
					back="Atheling Mantle", waist="Fotia Belt", legs="Hizamaru Hizayoroi +1", feet="Hizamaru Sune-ate +1"})
end
				
	
