-- Derion's COR Gear Sets
-- Created: 3/10/2014
-- Last Modified:7/21/2016
-- To Do List
--
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
				head="Meghanada Visor +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Meghanada Ring", rring="Defending Ring",
				-- waist="Flume Belt",
				back="Repulse Mantle", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
		sets.idle.MDT = { 
				head="Meghanada Visor +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Meghanada Ring", rring="Defending Ring",
				-- waist="Flume Belt"
				back="Engulfer Cape", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
				
		sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Merman's Earring", 
				feet="Hermes' Sandals"})		
		sets.misc.Town = set_combine(sets.idle.PDT, {
				head="Shaded Spectacles", neck="Goldsmith's Torque",
				body="Goldsmith's Smock",
				waist="Goldsmith's Belt", feet="Hermes' Sandals"})
						
		-- Precast
		sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				-- head="Carmine Mask", neck="Voltsurge Torque", rear="Enchntr. Earring +1",
				head="Haruspex Hat", lear="Loquac. Earring",  
				-- body="Taeon Tabard", hands="Leyline Gloves", rring="Prolix Ring",				
				--back="Camulus's Mantle", legs="Taeon Tights", feet="Carmine Greaves"
				waist="Twilight Belt"})
		sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

		sets.misc.Waltz = {}
		sets.misc.Steps = {}
		sets.misc.flourish = {}
		
		-- JA
		sets.precast.JA["Wild Card"] = {feet="Lanun Bottes"}
		sets.precast.JA["Cutting Cards"] = {}

		sets.precast.JA["Fold"] = {hands="Lanun Gants"}
		sets.precast.JA["Random Deal"] = {body="Lanun Frac"}
		sets.precast.JA["Snake Eye"] = {legs="Lanun Culottes"}
		sets.precast.JA["Triple Shot"] = {body="Chasseur's Frac"}
		
		-- Corsair Rolls
		sets.precast.JA["Phantom Roll"] = set_combine(sets.idle.PDT,{
				head="Lanun Tricorne", 
				hands="Chasseur's Gants", lring="Barataria Ring", rring="Luzaf's Ring",
				--  legs="Desultor Tassets"
				back="Camulus's Mantle"})
		sets.precast.JA["Double-Up"] = set_combine(sets.precast.JA["Phantom Roll"])
		
		sets.precast.JA["Caster's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {legs="Chasseur's Culottes"})
		sets.precast.JA["Courser's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {feet="Chasseur's Bottes"})
		sets.precast.JA["Blitzer's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {head="Chasseur's Tricorne"})
		sets.precast.JA["Tactician's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {body="Chasseur's Frac"})
		sets.precast.JA["Allies' Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {hands="Chasseur's Gants"})
		
		-- Quick Draw 
		sets.precast.QD = {}
		--Light/Dark Shot
		sets.precast.QD.ACC = {
				--  neck="Stoicheion Medal",
				head="Meghanada Visor +1", lear="Lifestorm Earring", rear="Psystorm Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Perception Ring", rring="Perception Ring",
				-- waist="Aquiline Belt",
				back="Navarch's Mantle",  legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
		-- Elemental Shots
		sets.precast.QD.MAB = {
				--  neck="Stoicheion Medal",
				head="Meghanada Visor +1", lear="Hecate's Earring", rear="Moldavite earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Garuda Ring", rring="Garuda Ring",
				-- waist="Aquiline Belt",
				back="Toro Cape", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

		-- Melee TP 
		sets.TP = { 
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				-- Aug.Cape.COR.TP.Derion
				back="Bleating Mantle", waist="Anguinus Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

		-- Melee Accuracy TP
		sets.TP.Acc = {	
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Heartseeker Earring", rear="Dudgeon Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Cacoethic Ring", rring="Ramuh Ring",
				back="Grounded Mantle", waist="Anguinus Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

		-- RA Sets
		sets.precast.Snapshot = {ammo=TPBullet[player.name],
				head="Chass. Tricorne", 
				-- body="Skopos Jerkin",  
				body="Ebon Jerkin", hands="Lanun Gants",
				-- Camulus's Mantle waist="Impulse Belt",
				back="Navarch's Mantle", legs="Chasseur's Culottes", feet="Meg. Jam. +1"}
		
		-- Eminent Gun
		sets.RA = { ammo=TPBullet[player.name],
				--  lear="Clearview Earring", rear="Volley Earring",
				head="Meghanada Visor +1", neck="Peacock Amulet",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Meghanada Ring", rring="Cacoethic Ring",
				-- waist="Buccaneer's Belt",
				back=Aug.Cape.COR.TP, legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
						
		sets.RA.Acc = { ammo=TPBullet[player.name],
				--  lear="Clearview Earring", rear="Volley Earring",
				head="Meghanada Visor +1", neck="Peacock Amulet",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Meghanada Ring", rring="Cacoethic Ring",
				-- waist="Buccaneer's Belt",
				back=Aug.Cape.COR.TP, legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
				
		-- Armageddon 
		sets.RA.Armageddon = {ammo=TPBullet[player.name],
				--  lear="Clearview Earring", rear="Volley Earring",
				head="Meghanada Visor +1", neck="Peacock Amulet",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Cacoethic Ring",
				-- waist="Buccaneer's Belt",
				back=Aug.Cape.COR.TP, legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
				
		sets.RA.Armageddon.Acc = { ammo=TPBullet[player.name],
				--  lear="Clearview Earring", rear="Volley Earring",
				head="Meghanada Visor +1", neck="Peacock Amulet",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Cacoethic Ring",
				-- waist="Buccaneer's Belt",
				back=Aug.Cape.COR.TP, legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

		-- Barrage 
		sets.precast.JA["Barrage"] =  set_combine(sets.RA.Acc, {ammo=TPBullet[player.name]})
		
		-- Weaponskills
		-- Melee WS
		sets.precast.WS = {
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
		
		-- Sword
		sets.precast.WS["Savage Blade"] = {
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
		
		sets.precast.WS["Requiescat"] = {
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				back="Atheling Mantle", waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
		
		-- Dagger
		sets.precast.WS["Exenterator"] = {
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				back="Atheling Mantle", waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

		-- RA WS
		sets.precast.RAWS = {ammo=WSBullet[player.name],
				--  lear="Bladeborn Earring", rear="Steelflash Earring",
				head="Meghanada Visor +1", neck="Peacock Amulet",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Garuda Ring", rring="Cacoethic Ring",
				-- Kwahu Kachina Belt 
				back=Aug.Cape.COR.WS, waist="Goading Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
		
		-- Physical
		sets.precast.RAWS['Last Stand'] = set_combine(sets.precast.RAWS,{
				-- lear="Clearview Earring", rear="Volley Earring",
				head="Meghanada Visor +1", neck="Fotia Gorget", 
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Garuda Ring", rring="Cacoethic Ring",
				-- Kwahu Kachina Belt 
				back=Aug.Cape.COR.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})
		
		-- Magical
		sets.precast.RAWS['Wildfire'] = set_combine(sets.precast.RAWS,{ammo=MBullet[player.name],
				--  neck="Stoicheion Medal",
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Hecate's Earring", rear="Moldavite Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Garuda Ring", rring="Cacoethic Ring",
				-- waist="Aquiline Belt",
				back=Aug.Cape.COR.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})
		
		sets.precast.RAWS['Leaden Salute'] = set_combine(sets.precast.RAWS, {ammo=MBullet[player.name],
				--  Baetyl Pendant Pixie Earring +1
				head="Lanun Tricorne", neck="Stoicheion Medal", lear="Friomisi Earring", rear="Moonshade Earring",
				-- Carmine Mail +1  Carmine Fin. Gauntlets +1 Arvina Ringlet +1
				body="Samnuha Coat", hands="Meg. Gloves +1", lring="Shiva Ring +1", rring="Archon Ring",
				-- Eschan Stone Adhe. Gamashes +1
				back=Aug.Cape.COR.WS, waist="Salire Belt", legs="Lak. Trews", feet="Adhe. Gamashes"})

end