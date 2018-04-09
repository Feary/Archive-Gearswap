-- MNK Gear_sets
-- Created: 1/25/2014
-- Last Modified: 6/14/2014
-- To Do List
--
--
--
--

if player.name == 'Feary' then
-- includes
	include('include/utility.lua')
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
	
-- sets Macros off = 0  on = 1
		automacroset = 0
		if automacroset == 1 then
			if player.sub_job == 'war' then
				set_macro_page(6,1)
			elseif player.sub_job == 'nin' then
				set_macro_page(6,2)
			elseif player.sub_job == 'dnc' then
				set_macro_page(6,3)
			elseif player.sub_job == 'drg' then 
				set_macro_page(6,4)
			elseif player.sub_job == 'whm' then 
				set_macro_page(6,5)
			elseif player.sub_job == 'run' then 
				set_macro_page(6,6)
			end
		else
			set_macro_page(6,1)
		end

-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Otronif Mask", neck="Twilight Torque",
                body="Otronif Harness", hands="Otronif Gloves +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Repulse Mantle", waist="Black Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"}

sets.idle.MDT = { 
				head="Felistris Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Manibozho Jerkin", hands="Otronif Gloves +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Engulfer Cape", waist="Black Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"}

sets.idle.Regen = set_combine(sets.idle.PDT, {body="Hes. Cyclas"})
sets.idle.Evasion = {
				head="Felistris Mask", neck="Torero Torque", lear="Musical earring", rear="Novia Earring",
                body="Manibozho Jerkin", hands="Otronif Gloves +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Boxer's Mantle", waist="Scouter's Rope",  legs="Otronif Brais +1", feet="Manibozho Boots"}

sets.misc.Town = set_combine(sets.idle.PDT, {
				head="Felistris Mask",
				feet="Hermes' Sandals"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Merman's Earring", feet="Hermes' Sandals"})
-- TP 
sets.TP = { ammo="Ginsen",
				head="Felistris Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Thaumas Coat", hands="Otronif Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Windbuffet Belt", legs="Otronif brais +1", feet="Manibozho Boots"}
-- Accuracy TP
sets.TP.MidAcc = { ammo="Honed Tathlum",
				head="Uk'uxkaj Cap", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Thaumas Coat", hands="Otronif Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Hurch'lan Sash",  legs="Manibozho Brais", feet="Manibozho Boots"}
-- High Accuracy TP
sets.TP.HighAcc = { ammo="Honed Tathlum",
				head="Whirlpool Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Thaumas Coat", hands="Otronif Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Hurch'lan Sash",  legs="Manibozho Brais", feet="Manibozho Boots"}

-- Hybrid PDT/TP
sets.TP.Hybrid = set_combine(sets.TP, sets.idle.PDT)
				
-- Hundred Fists
sets.TP.HF = set_combine(sets.TP,{body="Tantra Cyclas +2"})

-- Impetus Sets
sets.TP.Impetus = set_combine(sets.TP, {})
sets.TP.MidAcc.Impetus = set_combine(sets.TP.MidAcc, {})
sets.TP.HighAcc.Impetus =  set_combine(sets.TP.HighAcc, {})

-- JA
sets.precast.JA["Formless Strikes"] = {body="Hes. Cyclas"}
sets.precast.JA["Chakra"] = set_combine(sets.idle.PDT, { ammo="Tantra Tahtlum",
				head="Whirlpool Mask",
				body="Anchorite's Cyclas", hands="Hes. Gloves", 
				legs="Nahtirah Trousers"})
sets.precast.JA["Chi Blast"] = set_combine(sets.idle.PDT, {
				head="Uk'uxkaj Cap", neck="Morgana's Choker",
                body="Manibozho Jerkin", hands="Otronif Gloves +1", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="", waist="", legs="Nahtirah Trousers"})
sets.precast.JA["Impetus"] = {body="Tantra Cyclas +2"}
sets.precast.JA["Hundred Fists"] = {legs="Hes. Hose"}
sets.precast.JA["Focus"] = {head="Anchorite's Crown"}
sets.precast.JA["Dodge"] = {feet="Anch. Gaiters"}
sets.precast.JA["Boost"] = {hands="Anchorite's Gloves"}
sets.precast.JA["Counterstance"] = {feet="Hes. Gaiters"}
sets.precast.JA["Mantra"] = {feet="Hes. Gaiters"}

-- Weaponskills
sets.precast.WS = {ammo="Honed Tathlum",
				head="Uk'uxkaj Cap", neck="Justiciar's Torque", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Anguinus Belt",  legs="Manibozho Brais", feet="Manibozho Boots"}
sets.precast.WS['Victory Smite'] = { ammo="Honed Tathlum",
				head="Uk'uxkaj Cap", neck="Light Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt",  legs="Manibozho Brais", feet="Manibozho Boots"}

sets.precast.WS.Impetus = {}
sets.precast.WS.Impetus['Victory Smite'] = { ammo="Honed Tathlum",
				head="Uk'uxkaj Cap", neck="Light Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Tantra Cyclas +2", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Manibozho Brais", feet="Manibozho Boots"}

sets.precast.WS['Final Heaven'] = set_combine(sets.precast.WS)

sets.precast.WS['Shijin Spiral'] = set_combine(sets.precast.WS, {ammo="Potestas Bomblet",
				head="Uk'uxkaj Cap", neck="Justiciar's Torque", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Otronif Gloves +1", lring="Thundersoul Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt",  legs="Manibozho Brais", feet="Manibozho Boots"})

sets.precast.WS.MidAcc = {}
sets.precast.WS.HighAcc = {}
sets.precast.WS.MidAcc['Shijin Spiral'] = set_combine(sets.precast.WS['Shijin Spiral'], {
				head="Uk'uxkaj Cap", neck="Justiciar's Torque", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Otronif Gloves +1", lring="Thundersoul Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Anguinus Belt", legs="Manibozho Brais", feet="Manibozho Boots"})
sets.precast.WS.HighAcc['Shijin Spiral'] = set_combine(sets.precast.WS['Shijin Spiral'], {ammo="Potestas Bomblet",
				head="Whirlpool Mask", neck="Light Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Otronif Gloves +1", lring="Mars's Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Anguinus Belt",  legs="Manibozho Brais", feet="Manibozho Boots"})

sets.precast.WS["Ascetic's Fury"] = set_combine(sets.precast.WS, {
				head="Uk'uxkaj Cap", neck="Light Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Manibozho Jerkin", hands="Manibozho Gloves", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt",  legs="Manibozho Brais", feet="Manibozho Boots"})
sets.precast.WS["Asuran Fists"] = set_combine(sets.precast.WS, {neck="Shadow Gorget", waist="Anguinus Belt"})

-- Misc Sets
sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				head="Athos's Chapeau", neck="Magoraga Beads", lear="Loquac. Earring", rear="Novia Earring",
                body="Manibozho Jerkin", hands="Otronif Gloves +1", lring="", rring="Prolix Ring",
                back="Repulse Mantle", waist="Black Belt", legs="", feet=""})
sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

sets.misc.Waltz = {}
sets.misc.Steps = set_combine(sets.TP.MidAcc,{})
sets.misc.flourish = {}


elseif player.name == 'Derion' then

elseif player.name == 'Aniyah' then

elseif player.name == 'Firetoplay' then

end