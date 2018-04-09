-- NIN Gear_sets
-- Created: 7/13/2014
-- Last Modified: 7/13/2014
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
				head="Felistris Mask", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Otro. Harness +1", hands="Otronif Gloves +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Flume Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"}

sets.idle.MDT = { 
				head="Felistris Mask", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Otro. Harness +1", hands="Otronif Gloves +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Flume Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"}

sets.misc.Town = set_combine(sets.idle.PDT, { 
				head="Felistris Mask",
				feet="Danzo Sune-Ate"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Etiolation Earring", feet="Danzo Sune-Ate"})
-- Full Evasion
sets.idle.Evasion = set_combine(sets.idle.PDT,{
			head="Felistris Mask", neck="Torero Torque", lear="Musical Earring", rear="Novia Earring",
             body="Mochi. Chainmail", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Fravashi Mantle", waist="Twilight Belt", legs="Taeon Tights",feet="Taeon Boots"})

sets.Enmity = {
		neck="Moonbeam Necklace",
		back="Fravashi Mantle", waist="Goading Belt", feet="Mochi. Kyahan"}

-- Precast	
sets.precast.Fastcast = set_combine(sets.idle.PDT, {
			head="Taeon Chapeau", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
			body="Taeon Tabard", hands="Thaumas Gloves", lring="Prolix Ring", rring="Defending Ring",
			legs="Taeon Tights", feet="Mochi. Kyahan"})

sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {ammo="Impatiens",
			head="Haruspex Hat +1", neck="Magoraga Beads", lear="Loquac. Earring", rear="Enchntr. Earring +1",
			body="Taeon Tabard", hands="Thaumas Gloves", lring="Veneficium ring", rring="Prolix Ring",
			legs="Taeon Tights", feet="Hattori Kyahan"})

sets.precast.Recast = set_combine(sets.idle.PDT,{
			head="Haruspex Hat +1", rear="Loquac. Earring",
			hands="Thaumas Gloves", rring="Prolix Ring",
			})
-- Midcast
sets.midcast.Wheel = {
			head="Mochi. Hatsuburi", neck="Stoicheion Medal", lear="Crematio Earring", rear="Friomisi Earring",
			body="Mochi. Chainmail", hands="Hachiya Tekko", lring="Shiva Ring +1", rring="Shiva Ring +1",
			back="Toro Cape", waist="Wanion Belt", legs="Hachiya Hakama", feet="Hachiya Kyahan"}
sets.midcast.Skill = {
			head="Hachiya Hatsuburi", lear="Ninjutsu Earring",
			feet="Mochizuki Kyahan"}
sets.midcast.Enfeeb = set_combine(sets.midcast.Skill,{
			head="Hachiya Hatsuburi", neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
			body="Taeon Tabard", hands="Taeon Gloves", lring="Sangoma Ring", rring="Perception Ring",
			back="Yokaze Mantle", waist="Ovate Rope", legs="Taeon Tights", feet="Taeon Boots"})
sets.midcast.Utsusemi = set_combine(sets.precast.Utsusemi,{ammo="Impatiens",
			head="Felistris Mask", neck="Willpower Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
			body="Taeon Tabard", hands="Thaumas Gloves", lring="Prolix ring", rring="Defending Ring",
			back="Mujin Mantle", waist="Druid's Rope", legs="Taeon Tights", feet="Hattori Kyahan"})
sets.midcast.Utsusemi.San = set_combine(sets.precast.Utsusemi,{ammo="Impatiens",
			head="Felistris Mask", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
			body="Taeon Tabard", hands="Thaumas Gloves", lring="Prolix ring", rring="Defending Ring",
			back="Mujin Mantle", waist="Twilight Belt", legs="Taeon Tights", feet="Hattori Kyahan"})
			
-- TP Sets 
sets.TP = { ammo="Ginsen",
			head="Hattori Zukin", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
            body="Mochi. Chainmail", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Iga Dochugappa", waist="Patentia Sash", legs="Mochizuki Hakama", feet="Taeon Boots"}

-- Accuracy TP Set
sets.TP.Acc = {ammo="Ginsen",
			head="Felistris Mask", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Mochi. Chainmail", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Iga Dochugappa", waist="Anguinus Belt", legs="Taeon Tights", feet="Taeon Boots"}

-- Alliance Buffed - Max Haste
sets.TP.Buffed = {ammo="Ginsen",
			head="Felistris Mask", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
            body="Mochi. Chainmail", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Iga Dochugappa", waist="Windbuffet Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

-- Hybrid Evasion
sets.TP.Hybrid = set_combine(sets.idle.PDT,{
			head="Felistris Mask", neck="Torero Toque", lear="Brutal Earring", rear="Novia Earring",
            body="Mochi. Chainmail", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Fravashi Mantle", waist="Anguinus Belt", legs="Taeon Tights", feet="Taeon Boots"})

-- RA Sets
sets.precast.Snapshot = {legs="Nahtirah Trousers"}

sets.RA = {}
				
-- JA
sets.precast.JA["Mijin Gakure"] = {legs="Mochizuki Hakama"}
sets.precast.JA["Mikage"] = {}

sets.precast.JA["Sange"] = {body="Mochi. Chainmail"}
sets.precast.JA["Yonin"] = {legs="Iga Hakama +2"}
sets.precast.JA["Innin"] = {head="Hattori Zukin"}
sets.precast.JA["Futae"] = {hands="Hattori Tekko"}

-- Weaponskills
sets.precast.WS = { ammo="Ginsen",
			head="Felistris Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Yokaze Mantle", waist="Wanion Belt", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc = {}

-- Katana
-- Blade: Jin
sets.precast.WS["Blade: Jin"] = { ammo="Ginsen",
			head="Felistris Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Yokaze Mantle", waist="Anguinus Belt", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc["Blade: Jin"] = { ammo="Ginsen",
			head="Felistris Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Yokaze Mantle", waist="Anguinus Belt", legs="Taeon Tights", feet="Taeon Boots"}

-- Blade: Shun
sets.precast.WS["Blade: Shun"] = { ammo="Ginsen",
			head="Felistris Mask", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Rajas Ring", rring="Ramuh Ring +1",
            back="Atheling Mantle", waist="Fotia Belt", legs="Taeon Tights", feet="Taeon Boots"}
			
sets.precast.WS.Acc["Blade: Shun"] = { ammo="Ginsen",
			head="Felistris Mask", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Rajas Ring", rring="Ramuh Ring +1",
            back="Yokaze Mantle", waist="Fotia Belt", legs="Taeon Tights", feet="Taeon Boots"}

-- Blade: Hi
sets.precast.WS["Blade: Hi"] = {ammo="Ginsen",
			head="Felistris Mask", neck="Rancor Collar", lear="Brutal Earring", rear="Moonshade Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Garuda Ring +1", rring="Epona's Ring",
            back="Yokaze Mantle", waist="Windbuffet Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc["Blade: Hi"] = {ammo="Ginsen",
			head="Felistris Mask", neck="Rancor Collar", lear="Brutal Earring", rear="Moonshade Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Garuda Ring +1", rring="Garuda Ring +1",
            back="Yokaze Mantle", waist="Fotia Belt", legs="Taeon Tights", feet="Taeon Boots"}	

-- Blade: Metsu	
sets.precast.WS["Blade: Metsu"] = {ammo="Ginsen",
			head="Felistris Mask", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Ramuh Ring +1", rring="Epona's Ring",
            back="Yokaze Mantle", waist="Fotia Belt", legs="Taeon Tights", feet="Taeon Boots"}
			
sets.precast.WS.Acc["Blade: Metsu"] = {ammo="Ginsen",
			head="Felistris Mask", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Hattori Ningi", hands="Taeon Gloves", lring="Ramuh Ring +1", rring="Epona's Ring",
            back="Yokaze Mantle", waist="Fotia Belt", legs="Taeon Tights", feet="Taeon Boots"}

sets.misc.Waltz = {}
sets.misc.Steps = set_combine(sets.TP.Acc)
sets.misc.flourish = {}

end