-- DRK Gear_sets
-- Created: 7/13/2014
-- Last Modified: 7/13/2014
-- To Do List
-- adjust magic sets.
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
	sets.idle.PDT = {ammo="Staunch Tathlum",
			head="Sulevia's Mask +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Tartarus Platemail", hands="Sulevia's Gauntlets +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Moonbeam Cape", waist="Flume Belt", legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +2"}

	sets.idle.MDT = {ammo="Staunch Tathlum",
			head="Sulevia's Mask +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Tartarus Platemail", hands="Sulevia's Gauntlets +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Engulfer Cape +1", waist="Nierenschutz", legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +2"}

	sets.idle.Standard = set_combine(sets.idle.PDT, {
			legs="Carmine Cuisses +1"})

	sets.misc.Town = set_combine(sets.idle.PDT, {
			legs="Carmine Cuisses +1  "})

	sets.Enmity = {
			-- Loess Barbuta +1 Unmoving Collar +1 lear="Trux Earring", rear="Pluto's Pearl",
			neck="Moonbeam Necklace",
			-- Yorium Gauntlets Apeile Ring +1
			body="Jumalik Mail", lring="Vengeful Ring", rring="Apeile Ring",
			-- Obyssean Cuisses Eschite Greaves path A
			waist="Goading Belt", }

	-- Scythe TP set
	sets.TP = { ammo="Hasty Pinion +1",
				-- Cessance Earring
				head="Carmine Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="", hands="Sulevia Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Carmine Greaves +1"}
	sets.TP.Acc = set_combine(sets.TP, {ammo="Hasty Pinion +1",
				-- Cessance Earring
				head="Carmine Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="", hands="Sulevia Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Carmine Greaves +1"})

	-- GreatSword
	sets.TP.GS = {ammo="Hasty Pinion +1",
				-- Cessance Earring
				head="Carmine Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="", hands="Sulevia Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Carmine Greaves +1"}


	sets.TP.GS.Acc = set_combine(sets.TP.GS, {ammo="Hasty Pinion +1",
				-- Cessance Earring
				head="Carmine Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="", hands="Sulevia Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Carmine Greaves +1"})

	-- JA
	sets.precast.JA["Blood Weapon"] = {body="Abyss Cuirass +2"}
	sets.precast.JA["Soul Enslavement"] = {}

	sets.precast.JA["Souleater"] = {head="Chaos Burgeonet"}
	sets.precast.JA["Last Resort"] = {back="Ankou's Mantle", feet="Abyss Sollerets +2"}
	sets.precast.JA["Arcane Circle"] = {feet="Chaos Sollerets"}
	sets.precast.JA["Arcane Crest"] = {}
	sets.precast.JA["Dark Seal"] = {head="Abyss Burgeonet +2"}
	sets.precast.JA["Weapon Bash"] = {hands="Chaos Gauntlets"}
	sets.precast.JA["Diabolic Eye"] = {hands="Abyss Gauntlets +2"}
	sets.precast.JA["Nether Void"] = {legs="Bale Flanchard +2"}

	sets.precast.JA["Provoke"] = {}
	sets.precast.JA["Berserk"] = {}
	sets.precast.JA["Defender"] = {}
	sets.precast.JA["Warcry"] = {}
	sets.precast.JA["Aggressor"] = {}

	-- Magic
	sets.precast.Fastcast = set_combine(sets.idle.PDT, {
					head="Cizin Helm +1", lear="Loquac. Earring",
					rring="Prolix Ring"})
	sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {})

	sets.midcast.DarkMagic = {
					head="Ignominy Burgeonet", neck="Aesir Torque", lear="Dark Earring",
					body="Demon's Harness", hands="Avesta Bangles", lring="Archon Ring", rring="Diabolos's Ring",
					back="Merciful Cape", waist="", legs="Bale Flanchard +2", feet="Igno. Sollerets"}
	sets.midcast.Aspir = set_combine(sets.midcast.DarkMagic,{
				head="Appetence Crown"})
	sets.midcast.Absorb = set_combine(sets.midcast.DarkMagic, {})
	sets.midcast.Dread = {body="Bale Cuirass +2"}

	sets.midcast.Macc = {}
	sets.midcast.INT = set_combine(sets.midcast.Macc,{})

	sets.midcast.Elemental = set_combine(sets.midcast.Macc,{})
	sets.midcast.MAB = set_combine(sets.midcast.Elemental,{})

	-- Weaponskills
	sets.precast.WS = {ammo="Hasty Pinion +1",
				-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"}
	-- Scythe
	sets.precast.WS["Insurgency"] = set_combine(sets.precast.WS, {ammo="Hasty Pinion +1",
				-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})

	sets.precast.WS["Guillotine"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
					-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})
				
	sets.precast.WS["Entropy"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
					-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})
	sets.precast.WS["Catastrophe"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
				-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})

	sets.precast.WS["Cross Reaper"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
					-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})

	-- GreatSword
	sets.precast.WS["Resolution"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
					-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})

	sets.precast.WS["Torcleaver"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})
	sets.precast.WS["Scourge"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
					-- Cessance Earring
				head="Sulevia's Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Emicho Body Petrov Ring
				body="Yoruim Cuirass", hands="Sulevia's Gauntlets +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Ankou Mantle Carmine Cuisses +1 
				back="Atheling Mantle", waist="Goading Belt", legs="Sulevi. Cuisses +1", feet="Sulevia's Leggings +1"})


	-- Misc Sets

	sets.misc.Waltz = set_combine(sets.idle.PDT,{})
	sets.misc.Steps = set_combine(sets.TP.ACC)
	sets.misc.flourish = {}

end