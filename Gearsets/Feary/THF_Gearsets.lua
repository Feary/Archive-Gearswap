-- Feary's THF Gear_sets
-- Created: 4/5/2014
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
	sets.idle.PDT = {ammo="Staunch Tathlum",
				head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
				back="Moonbeam Cape", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.idle.MDT = {ammo="Staunch Tathlum", 
				head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
				back="Engulfer Cape +1", waist="Flume Belt", legs="Mummu Kecks +1", feet="Meg. Jam. +2"}
	
	sets.idle.MDT.Shell = {ammo="Staunch Tathlum",
				head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
				back="Engulfer Cape +1", waist="Flume Belt", legs="Mummu Kecks +1", feet="Meg. Jam. +2"}

	sets.misc.Town = set_combine(sets.idle.PDT, {
				main={name="Mandau",priority=2}, sub={name="Taming Sari",priority=1},
				feet="Fajin Boots"})
					
	sets.idle.Standard = set_combine(sets.idle.PDT, {
				main={name="Mandau",priority=2}, sub={name="Taming Sari",priority=1},
				lear="Merman's Earring", rear="Etiolation Earring", 
				feet="Fajin Boots"})
				
	sets.lockstyle = set_combine(sets.misc.Town,{
				feet="Fajin Boots"})

	sets.idle.Fishing = set_combine(sets.idle.Standard,{range="Lu Sh. F. Rod +1", ammo="Sinking Minnow",
				head="Tlahtlamah Glasses", neck="Fisher's Torque",
				body="Fisherman's Tunica", hands="Kachina Gloves", lring="Noddy Ring", rring="Puffin Ring",
				waist="Fisherman's Belt", legs="Fisherman's Hose", feet="Waders"})

	sets.idle.Wood = set_combine(sets.idle.Standard,{main={name="Mandau",priority=2}, sub={name="Joiner's Aspis",priority=1},
				neck="Carpenter's Torque",
				body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="Craftmaster's Ring",
				waist="Carpenter's Belt"})		
						
	-- Full Evasion
	sets.idle.Evasion = set_combine(sets.idle.PDT,{
				head="Meghanada Visor +1", neck="Torero Torque", lear="Musical Earring", rear="Novia Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				back="Fravashi Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})
	
	-- TH Base 8 Caps 12 JP +2  = 14  Current = 3 + 3 + 2
	sets.TH = {
				hands="Plun. Armlets +1",
				waist="Chaac Belt", feet="Skulk. Poulaines"}
	-- JA
	sets.precast.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
	sets.precast.JA['Larceny'] = {}

	sets.precast.JA['Steal'] = {head="Plun. Bonnet", hands="Pillager's Armlets", legs="Pillager's Culottes", feet="Pillager's Poulaines"}
	sets.precast.JA['Mug'] = {head="Plun. Bonnet"}
	sets.precast.JA['Feint'] = {legs="Plun. Culottes"}
	sets.precast.JA['Flee'] = {feet="Pillager's Poulaines"}
	sets.precast.JA['Hide'] = {body="Pillager's Vest +1"}
	sets.precast.JA['Ambush'] = {body="Plunderer's Vest"}
	sets.precast.JA['Assassin\'s Charge'] = {feet="Plunderer's Poulaines"}
	sets.precast.JA['Accomplice'] = {head="Skulker's Bonnet"}
	sets.precast.JA['Collaborator'] = {head="Skulker's Bonnet"}
	sets.precast.JA['Conspirator'] = {body="Raider's Vest +2"}
	sets.precast.JA['Bully'] = {}
	sets.precast.JA['Despoil'] = {legs="Raider's Culottes +2", feet="Skulker's Poulaines"}
	
	-- Precast	
	sets.precast.Fastcast = set_combine(sets.idle.PDT, {ammo="Staunch Tathlum",
				-- neck="Voltsurge Torque",
				head="Haruspex Hat +1", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				-- Kishar Ring
				body="Taeon Tabard", hands="Leyline Gloves", lring="Prolix Ring",
				-- legs="Enif Cosciales"
				waist="Twilight Belt"})
	sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

	sets.misc.Waltz = {
				head="Mummu Bonnet +1",
				rring="Asklepian Ring",
				legs="Dashing Subligar"}

	-- Steps = Full Acc
	sets.misc.Steps = {
				head="Mummu Bonnet +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Patricius Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.STP, waist="Dynamic Belt +1", legs="Meg. Chausses +1", feet="Mummu Gamash. +1"}
	-- Magic Acc
	sets.misc.flourish = {}

	-- Midcast
	sets.midcast.Fastcast = set_combine(sets.idle.PDT,{ammo="Staunch Tathlum",
				head="Haruspex Hat +1", neck="Voltsurge Torque",lear="Loquac. Earring", rear="Enchntr. Earring +1",
				-- Kishar Ring
				body="Taeon Tabard", hands="Leyline Gloves", lring="Prolix Ring", 
				back="Fravashi Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Mummu Gamash. +1"})
				
	-- TP Sets -- Yamarang
	sets.TP = { ammo="Ginsen",
				-- Adhemar Bonnet +1 Sherida Earring Telos Earring 
				head="Adhemar Bonnet", neck="Erudit. Necklace", lear="Brutal Earring", rear="Suppanomimi",
				-- Adhemar Jacket +1 Adhemar Wristbands +1 Petrov Ring
				body="Meghanada Cuirie +2", hands="Mummu Wrists +1", lring="Rajas Ring", rring="Epona's Ring",
				-- Herculean Boots
				back=Aug.Cape.THF.STP, waist="Windbuffet Belt +1", legs="Samnuha Tights", feet="Mummu Gamash. +1"}

	-- Accuracy TP Set - Goal 1200 - 100(Sublime Sushi) = 1100 Acc Currently @ 1048 + 36 = 1084  Need 16(weapon)
	sets.TP.Acc = {ammo="Ginsen",
				-- Skulker's Bonnet +1 Combatant's Torque  Telos Earring Sherida Earring
				head="Mummu Bonnet +1", neck="Iqabi Necklace", lear="Brutal Earring", rear="Suppanomimi",
				-- Pillager Vest +3 Adhemar Wristbands +1 Regal Ring 
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				-- Reiki Yotai Pillager Culottes +3 Herculean Boots 
				back=Aug.Cape.THF.STP, waist="Windbuffet Belt +1", legs="Meg. Chausses +1", feet="Mummu Gamash. +1"}

	-- Alliance Buffed
	-- 11 DW needed 
	sets.TP.Buffed = { ammo="Ginsen",
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				back=Aug.Cape.THF.STP, waist="Patentia Sash", legs="Samnuha Tights", feet="Mummu Gamash. +1"}

	-- Hybrid DT/Acc
	sets.TP.Hybrid = set_combine(sets.idle.PDT,{
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Suppanomimi",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				back=Aug.Cape.THF.STP, waist="Patentia Sash", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})

	-- RA Sets
	sets.precast.Snapshot = {
				hands="Iuitl Wristbands +1", 
				legs="Adhemar Kecks", feet="Meg. Jam. +2"}

	sets.RA = {}
					
	-- Solo Sneak Attack 
	sets.precast.JA["Sneak Attack"] = {
				-- Combatant's Torque
				head="Adhemar Bonnet", neck="Love Torque", lear="Brutal Earring", rear="Pixie Earring",
				-- Regal Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Ramuh Ring +1", rring="Epona's Ring",
				-- Pillager Culottes +3
				back=Aug.Cape.THF.WS, waist="Windbuffet Belt +1", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
				
	-- Solo Trick Attack
	sets.precast.JA["Trick Attack"] = {
				-- Combatant's Torque
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Brutal Earring", rear="Vulcan's Pearl",
				-- Pillager Armlets +3 Regal Ring
				body="Meghanada Cuirie +2", hands="Pillager's Armlets", lring="Garuda Ring +1", rring="Garuda Ring +1",
				-- Pillager Culottes +3
				back=Aug.Cape.THF.WS, waist="Windbuffet Belt +1", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	-- Weaponskills
	sets.precast.WS = { 
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Brutal Earring", rear="Moonshade Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
	
	sets.precast.WS.SA = set_combine(sets.precast.WS,{
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})

	sets.precast.WS.TA = set_combine(sets.precast.WS,{
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})
	
	sets.precast.WS.Acc = {
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.precast.WS.Acc.SA = set_combine(sets.precast.WS.Acc,{
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})

	sets.precast.WS.Acc.TA = set_combine(sets.precast.WS.Acc,{
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})

	-- Mercy Stroke
	sets.precast.WS["Mercy Stroke"] = {
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				back=Aug.Cape.THF.WS, waist="Prosilio Belt +1", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.precast.WS.SA["Mercy Stroke"] = {
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				back=Aug.Cape.THF.WS, waist="Prosilio Belt +1", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.precast.WS.TA["Mercy Stroke"] = {
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				back=Aug.Cape.THF.WS, waist="Prosilio Belt +1", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	-- Rudra's Storm
	-- Solo
	sets.precast.WS["Rudra's Storm"] = {ammo="Ginsen",
				-- Adhemar Bonnet +1 Caro Necklace Sherida Earring 
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Adhemar Jacket +1 Regal Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1", 
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}
	sets.precast.WS.SA["Rudra's Storm"] = {ammo="Yetshila",
				--Pillager's Bonnet +3 Caro Necklace Sherida Earring
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Meghanada Cuirie +2 +1 Ilabrat Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Artful Belt +1  Lustra. Leggings +1
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}
	sets.precast.WS.TA["Rudra's Storm"] = {ammo="Yetshila",
				-- Pillager's Bonnet +3 Caro Necklace Sherida Earring 
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Ilabrat Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Artful Belt +1  Lustra. Leggings +1
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}

	sets.precast.WS.Acc["Rudra's Storm"] = {ammo="Ginsen",
				-- Adhemar Bonnet +1 Caro Necklace Sherida Earring 
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Adhemar Jacket +1 Regal Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}
	sets.precast.WS.Acc.SA["Rudra's Storm"] = {ammo="Yetshila",
				--Pillager's Bonnet +3 Caro Necklace Sherida Earring
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Ilabrat Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Artful Belt +1  Lustra. Leggings +1
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}
	sets.precast.WS.Acc.TA["Rudra's Storm"] = {ammo="Yetshila",
				--Pillager's Bonnet +3 Caro Necklace Sherida Earring 
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Ilabrat Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Artful Belt +1  Lustra. Leggings +1
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}

	-- Exenterator
	sets.precast.WS["Exenterator"] = {ammo="Ginsen",
				-- Adhemar Bonnet +1 Sherida Earring Telos Earring
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Ilabrat Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Garuda Ring +1", rring="Garuda Ring +1",
				back=Aug.Cape.THF.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.precast.WS.Acc["Exenterator"] = {ammo="Ginsen",
				-- Adhemar Bonnet +1 Sherida Earring Telos Earring
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
					-- Ilabrat Ring
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Garuda Ring +1",
				back=Aug.Cape.THF.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	-- Evisceration
	sets.precast.WS["Evisceration"] = {ammo="Yetshila",
				-- Adhemar Bonnet +1
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
				-- 
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				-- Artful Belt +1 Lustra. Leggings +1
				back=Aug.Cape.THF.Crit, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}

	sets.precast.WS.Acc["Evisceration"] = {
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				back=Aug.Cape.THF.Crit, waist="Grunfield Rope", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"}

	-- Dancing Edge
	sets.precast.WS["Dancing Edge"] = {
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				back=Aug.Cape.THF.WS, waist="Grunfield Rope", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	-- Aeolian Edge
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS,{
				-- Baetyl Pendant/Sanctity Necklace
				head="Meghanada Visor +1", neck="Fotia Gorget", lear="Crematio Earring", rear="Friomisi Earring",
				body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Shiva Ring +1", rring="Shiva Ring +1",
				-- Eschan Stone Adhemar Boots
				back=Aug.Cape.THF.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})
end