-- WAR Gear_sets
-- Created: 6/1/2014
-- Last Modified: 6/14/2014
-- To Do
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
			if player.sub_job == 'NIN' then
				set_macro_page(12,1)
			elseif player.sub_job == 'SAM' then
				set_macro_page(12,2)
			elseif player.sub_job == 'DNC' then
				set_macro_page(12,3)
			elseif player.sub_job == 'MNK' then 
				set_macro_page(12,4)
			elseif player.sub_job == 'DRK' then 
				set_macro_page(12,5)
			end
		else
			set_macro_page(12,1)
		end
		
-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Yaoyotl Helm", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Mekira Meikogai", hands="Cizin Mufflers", lring=Aug.Darkring1, rring="Defending Ring",
                back="Repulse Mantle", waist="Flume Belt", legs="Cizin Breeches +1", feet="Cizin Greaves"}

sets.idle.MDT = { ammo="Vanir Battery",
				head="Yaoyotl Helm", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Mekira Meikogai", hands="Cizin Mufflers", lring=Aug.Darkring1, rring="Defending Ring",
                back="Engulfer Cape", waist="Nierenschutz", legs="Cizin Breeches +1", feet="Cizin Greaves"}

sets.misc.Town = set_combine(sets.idle.PDT, {feet="Hermes' Sandals"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Merman's Earring", feet="Hermes' Sandals"})

sets.Enmity = {}

-- TP set
sets.TP = { ammo="Ravager's Orb",
			head="Otomi Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Xaddi Mail", hands="Cizin Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
            back="Atheling Mantle", waist="Cetl Belt", legs="Cizin Breeches +1", feet="Mikinaak Greaves"}

-- GreatAxe TP 
sets.TP.GA = { ammo="Ravager's Orb",
			head="Otomi Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Xaddi Mail", hands="Cizin Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
            back="Atheling Mantle", waist="Cetl Belt", legs="Cizin Breeches +1", feet="Mikinaak Greaves"}

-- Ionis Haste +2% Save TP 25+
sets.TP.GA.Ionis = set_combine(sets.TP.GA, { ammo="Ravager's Orb",
			head="Otomi Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Xaddi Mail", hands="Cizin Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
            back="Atheling Mantle", waist="Cetl Belt", legs="Cizin Breeches +1", feet="Mikinaak Greaves"})

-- Great Axe Accuracy TP
sets.TP.GA.Acc = {	ammo="Ginsen",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Xaddi Mail", hands="Cizin Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
				back="Atheling Mantle", waist="Cetl Belt", legs="Cizin Breeches +1", feet="Mikinaak Greaves"}

sets.TP.GA.Acc.Ionis = set_combine(sets.TP.GA.Acc,{ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Xaddi Mail", hands="Cizin Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
				back="Atheling Mantle", waist="Cetl Belt", legs="Cizin Breeches +1", feet="Mikinaak Greaves"})
-- GreatSword
sets.TP.GS = {ammo="Ravager's Orb",
			head="Otomi Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Xaddi Mail", hands="Cizin Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
            back="Atheling Mantle", waist="Cetl Belt", legs="Cizin Breeches +1", feet="Mikinaak Greaves"}


sets.TP.GS.Acc = set_combine(sets.TP.GS,{ammo="Ravager's Orb",
			head="Otomi Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Xaddi Mail", hands="Cizin Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
            back="Atheling Mantle", waist="Cetl Belt", legs="Cizin Breeches +1", feet="Mikinaak Greaves"})

-- JA
sets.precast.JA["Mighty Strikes"] = {hands="Warrior's Mufflers +2"}
sets.precast.JA["Brazen Rush"] = {}

sets.precast.JA["Provoke"] = set_combine(sets.Enmity,{})
sets.precast.JA["Berserk"] = {body="Pummeler's Lorica", feet="Warrior's Calligae +2"}
sets.precast.JA["Defender"] = {}
sets.precast.JA["Warcry"] = {head="Warrior's Mask"}
sets.precast.JA["Aggressor"] = {head="Pummeler's Mask", body="Warrior's Lorica +2"}
sets.precast.JA["Tomahawk"] = {ammo="Thr. Tomahawk", feet="Warrior's Calligae +2"}
sets.precast.JA["Restraint"] = {hands="Ravager's Mufflers +2"}
sets.precast.JA["Warrior's Charge"] = {legs="Warrior Cuisses +2"}
sets.precast.JA["Savagery"] = {head="Warrior's Mask +2"}
sets.precast.JA["Aggressive Aim"] = {body="Warrior's Lorica +2"}

-- Weaponskills
sets.precast.WS = {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"}
sets.precast.WS.MS = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"})
-- Great Axe
sets.precast.WS["Ukko's Fury"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"})
				
sets.precast.WS["Upheaval"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"})
				
sets.precast.WS.MS["Upheaval"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"})
				
sets.precast.WS["Fell Cleave"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"})
sets.precast.WS.MS["Fell Cleave"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"})

-- GreatSword
sets.precast.WS["Resolution"] = set_combine(sets.precast.WS, {ammo="Ravager's Orb",
				head="Yaoyotl Helm", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Miki. Breastplate", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Miki. Cuisses", feet="Mikinaak Greaves"})
				
-- Misc Sets
sets.misc.Fastcast = set_combine(sets.idle.PDT, {
				head="Cizin Helm", lear="Loquac. Earring", 
				rring="Prolix Ring"})

sets.misc.Utsusemi = set_combine(sets.misc.Fastcast, {neck="Magoraga Beads"})

sets.misc.Waltz = set_combine(sets.idle.PDT,{})
sets.misc.Steps = set_combine(sets.TP.ACC)
sets.misc.flourish = {}


elseif player.name == 'Derion' then

elseif player.name == 'Aniyah' then

elseif player.name == 'Firetoplay' then

end