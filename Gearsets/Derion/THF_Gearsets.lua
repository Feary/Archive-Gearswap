-- Derion's THF Gear_sets
-- Created: 4/5/2014
-- Last Modified: 7/14/2016
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
	sets.idle.PDT = {--ammo="Staunch Tahtlum",
				head="Meghanada Visor +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Meghanada Ring", rring="Defending Ring",
				-- Flume Belt
				back="Repulse Mantle", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	sets.idle.MDT = {--ammo="Staunch Tahtlum",
				head="Meghanada Visor +1", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				--  lring="Shadow Ring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Meghanada Ring", rring="Defending Ring",
				back="Engulfer Cape", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	sets.misc.Town = set_combine(sets.idle.PDT, {
				head="Shaded Spectacles", neck="Goldsmith's Torque", lear="Merman's Earring", rear="Merman's Earring", 
				body="Goldsmith's Smock", lring="Craftkeeper's Ring", rring="Craftmaster's Ring", 
				waist="Goldsmith's Belt", feet="Fajin Boots"})
					
	sets.idle.Standard = set_combine(sets.idle.PDT, {
				feet="Fajin Boots"})

	sets.lockstyle = set_combine(sets.misc.Town,sets.idle.Standard,{})

	sets.idle.Gold = set_combine(sets.idle.Standard, {sub="Toreutic Ecu",
				head="Shaded Spectacles", neck="Goldsmith's Torque",
				body="Goldsmith's Smock", lring="Craftkeeper's Ring", rring="Craftmaster's Ring",
				waist="Goldsmith's Belt", feet="Fajin Boots"})
			
	-- Full Evasion
	sets.idle.Evasion = set_combine(sets.idle.PDT,{
				-- lear="Musical Earring",
				head="Meghanada Visor +1", neck="Torero Torque",  rear="Novia Earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				--back="Boxer's Mantle", 
				waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})
	-- Treasure Hunter
	sets.TH = {
				hands="Plun. Armlets",
				--waist="Chaac Belt"
				feet="Skulk. Poulaines"}

	-- Precast	
	sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				-- neck=Voltsurge Torque rear="Enchntr. Earring +1
				head="Haruspex Hat", lear="Loquac. Earring", 
				-- body="Taeon Tabard", hands="Leyline Gloves",lring="Prolix Ring",
				-- legs="Enif Cosciales"
				waist="Twilight Belt",})

	sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

	sets.misc.Waltz = {
				--rring="Asklepian Ring",
				--legs="Dashing Subligar"
				}
	
	sets.misc.Steps = {}
	sets.misc.flourish = {}
	
	-- Midcast
	sets.midcast.Fastcast = set_combine(sets.idle.PDT, sets.precast.Fastcast,{})

	-- TP Sets 
	sets.TP = { ranged="Raider's Bmrng.",
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				-- Aug.Cape.THF.STP
				back="Atheling Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	-- Accuracy TP Set
	sets.TP.Acc = {	ranged="Raider's Bmrng.",
				head="Meghanada Visor +1", neck="Peacock Charm", lear="Brutal Earring", rear="Suppanomimi",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				--Aug.Cape.THF.STP
				back="Atheling Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	-- Alliance Buffed
	sets.TP.Buffed = {ranged="Raider's Bmrng.",
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
				--  Aug.Cape.THF.STP
				back="Atheling Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	-- Hybrid DT/Acc
	sets.TP.Hybrid = set_combine(sets.idle.PDT,{ranged="Raider's Bmrng.",
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",	
				--Aug.Cape.THF.STP
				back="Atheling Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})

	-- RA Sets
	sets.precast.Snapshot = {
				head="Tema. Headband", lear="Terminus Earring",
				rring="Prouesse Ring",
				legs="Temachtiani Pants", feet="Temachtiani Boots"}

	sets.RA = set_combine(sets.TP.Acc, {
				head="Tema. Headband", lear="Terminus Earring",
				rring="Prouesse Ring",
				legs="Temachtiani Pants", feet="Temachtiani Boots"})
					
	-- JA
	sets.precast.JA["Perfect Dodge"] = {hands="Plunderer's Armlets"}
	sets.precast.JA["Larceny"] = {}

	sets.precast.JA["Steal"] = {
				--head="Plun. Bonnet", 
				--hands="Pillager's Armlets", 
				--legs="Pillager's Culottes", 
				feet="Pillager's Poulaines"
				}
	sets.precast.JA["Mug"] = {--head="Plun. Bonnet"
				}
	sets.precast.JA["Feint"] = {--legs="Plun. Culottes"
								}
	sets.precast.JA["Flee"] = { 
				feet="Pillager's Poulaines"
								}
	sets.precast.JA["Hide"] = {--body="Pillager's Vest"
								}
	sets.precast.JA["Ambush"] = {--body="Plunderer's Vest"
								}
	sets.precast.JA["Assassin's Charge"] = {--feet="Plunderer's Poulaines"
								}
	sets.precast.JA["Accomplice"] = {head="Raider's Bonnet +2"}
	sets.precast.JA["Collaborator"] = {head="Raider's Bonnet +2"}
	sets.precast.JA["Conspirator"] = {body="Raider's Vest +2"}
	sets.precast.JA["Bully"] = {}
	sets.precast.JA["Despoil"] = {legs="Raider's Culottes +2", feet="Skulk. Poulaines"}

	-- Solo Sneak Attack 
	sets.precast.JA["Sneak Attack"] = {
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
				-- Aug.Cape.THF.WS
				back="Grounded Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	-- Solo Trick Attack
	sets.precast.JA["Trick Attack"] = {
				head="Meghanada Visor +1", neck="Houyi's Gorget", lear="Dudgeon Earring", rear="Bladeborn earring",
				body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Garuda Ring",
				-- Aug.Cape.THF.WS
				back="Vespid Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	-- Weaponskills
	sets.precast.WS = {
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Ifrit Ring", rring="Ifrit Ring",
			-- Aug.Cape.THF.WS
			back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	sets.precast.WS.SA = {
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
			-- Aug.Cape.THF.WS
			back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	sets.precast.WS.TA = {
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Epona's Ring",
			-- Aug.Cape.THF.WS
			back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	
	sets.precast.WS.Acc = {
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Ifrit Ring", rring="Ifrit Ring",
			-- Aug.Cape.THF.WS
			back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	sets.precast.WS.Acc.SA = {
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Ifrit Ring", rring="Ifrit Ring",
			-- Aug.Cape.THF.WS
			back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	sets.precast.WS.Acc.TA = {
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Ifrit Ring", rring="Ifrit Ring",
			-- Aug.Cape.THF.WS
			back="Atheling Mantle", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	
	-- Mercy Stroke
	sets.precast.WS["Mercy Stroke"] = {}

	sets.precast.WS.SA["Mercy Stroke"] = {}

	sets.precast.WS.TA["Mercy Stroke"] = {}
	
	-- Rudra's Storm
	-- Solo
	sets.precast.WS["Rudra's Storm"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", neck="Fotia Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	sets.precast.WS.SA["Rudra's Storm"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle",waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	sets.precast.WS.TA["Rudra's Storm"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
			
	-- Acc 	
	sets.precast.WS.Acc["Rudra's Storm"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	sets.precast.WS.Acc.SA["Rudra's Storm"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	sets.precast.WS.Acc.TA["Rudra's Storm"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	-- Exenterator
	sets.precast.WS["Exenterator"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	sets.precast.WS.Acc["Exenterator"] = {
			--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	-- Evisceration
	sets.precast.WS["Evisceration"] = {
			--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Mummu Bonnet", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Mummu Jacket +1", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle", waist="Prosilio Belt", legs="Mummu Kecks", feet="Mummu Gamashes"}

	sets.precast.WS.Acc["Evisceration"] = {
			--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

	-- Dancing Edge
	sets.precast.WS["Dancing Edge"] = {--ammo="Ginsen",
			--neck="Shadow Gorget",
			head="Meghanada Visor +1", lear="Steelflash Earring", rear="Bladeborn Earring",
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Rajas Ring", rring="Ramuh Ring",
			-- Aug.Cape.THF.WS 
			back="Vespid Mantle", waist="Prosilio Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}
	
	-- Aeolian Edge
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS,{
			-- neck="Fotia Gorget", lear="Crematio Earring",
			head="Meghanada Visor +1",  lear="Hecate's Earring", rear="Moldavite Earring",
			--
			body="Meg. Cuirie +2", hands="Meg. Gloves +1", lring="Shiva Ring", rring="Shiva Ring",
			--  back=Aug.Cape.THF.WS 
			back="Toro Cape", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})
end