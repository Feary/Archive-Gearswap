-- RUN Gear_sets
-- Created: 7/13/2014
-- Last Modified: 7/19/2014
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
				-- Futhark Bandeau +1
				head="Futhark Bandeau", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				-- Erilaz +1
				body="Meghanada Cuirie +1", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
				-- Aug.Cape.RUN.TP Erilaz legs feet +1
				back="Moonbeam Cape", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.idle.MDT = {ammo="Staunch Tathlum",
				head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				-- Futhark Coat +1 Erilaz Gauntlets +1 Lunette Ring +1 Shadow Ring
				body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
				-- Lieutenant's Sash
				back="Engulfer Cape +1", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}
	
	sets.idle.MDT.Shell = {ammo="Staunch Tathlum",
				head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
				-- Aug.Cape.RUN.TP
				back="Engulfer Cape +1", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}
	-- Tenacity
	sets.idle.MDT.Status = set_combine(sets.idle.MDT, {ammo="Staunch Tathlum",
				--head="Flawless Ribbon" 
				lear="Hearty Earring",
				-- Erilaz Gauntlets +1
				hands="Erilaz Gauntlets",
				-- Runeist Trousers +3
				legs="Runeist Trousers"})

	sets.misc.Town = set_combine(sets.idle.PDT, {
				legs="Carmine Cuisses +1"})
					
	sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Etiolation Earring",
				back="Shadow Mantle", legs="Carmine Cuisses +1"})

	sets.idle.Evasion = {ammo="Staunch tathlum",
				head="Meghanada Visor +1", neck="Torero Torque", lear="Musical Earring", rear="Novia Earring",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
				back="Fravashi Mantle", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.idle.Fishing = set_combine(sets.idle.Standard,{range="Lu Shang's Fishing Rod", ammo="Sinking Minnow",
				head="Tlahtlamah Glasses", neck="Fisherman's Torque",
				body="Fisherman's Tunica", hands="Kachina Gloves", lring="Pelican Ring", rring="Pelican Ring",
				waist="Fisherman's Belt", legs="Fisherman's Hose", feet="Fisherman's Boots"})
	sets.idle.Wood = set_combine(sets.idle.Standard,{
				neck="Carpenter's Torque",
				body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="Craftmaster's Ring",
				waist="Carpenter's Belt"})		
				
	sets.Enmity = {--ammo="Sapience Orb",
				-- Halitus Helm Unmoving Collar +1 Cryptic Earring Trux Earring
				head="", neck="Atzintli Necklace", lear="Friomisi Earring",
				-- Emet Harness +1 Kurys Gloves lring="Eihwaz Ring", Provocare Ring 
				lring="Vengeful Ring", rring="Apeile Ring",
				-- Enmity Evasionist or Aug.Cape.RUN.Enmity 
				back="Fravashi Mantle", waist="Goading Belt", legs="Erilaz Leg Guards", feet="Hermes' Sandals"}
					
	-- JA
	sets.precast.JA["Elemental Sforzo"] = {body="Futhark Coat"}
	sets.precast.JA["Odyllic Subterfuge"] = {}

	sets.precast.JA["Lunge"] = {--ammo="Seeth. Bomblet +1",
				-- 
				head="Carmine Mask +1", neck="Eddy Necklace", lear="Friomisi Earring", rear="Crematio Earring",
				-- Carmine Mail +1 Fenrir Ring +1 Fenrir Ring +1
				body="Samnuha Coat", hands="Leyline Gloves", lring="Shiva Ring +1", rring="Shiva Ring +1",
				-- Argocham. Mantle Eschan Stone Shneddick Tights Herc
				back="Toro Cape", waist="Salire Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}
					
	sets.precast.JA["Valiance"] = {body="Runiest Coat"}
	sets.precast.JA["Vallation"] = {body="Runiest Coat"}
	sets.precast.JA["Gambit"] = {hands="Runiest Mitons"}
	sets.precast.JA["Pflug"] = {feet="Runiest Boots"}
	sets.precast.JA["Battuta"] = {head="Futhark Bandeau"}
	sets.precast.JA["Sleight of Sword"] = {hands="Futhark Mitons"}
	sets.precast.JA["Inspiration"] = {legs="Futhark Trousers"}
	sets.precast.JA["Rayke"] = {feet="Futhark Boots"}
	sets.precast.JA["Vivacious Pulse"] = {
				-- Incanter's Torque rear="Divine Earring", 
				head="Erilaz Galea", neck="Colossus's Torque", lear="Beatific Earring",
				lring="Stikini Ring", rring="Stikini Ring",
				-- Runeist Trousers +3
				back="Altruistic Cape", waist="Bishop's Sash", legs="Runeist Trousers"}
	
-- Precast Sets
	sets.precast.Fastcast = set_combine(sets.idle.PDT, {--ammo="Sapience Orb",
				-- neck="Voltsurge Torque",
				head="Carmine Mask +1", lear="Loquac. Earring", rear="Enchtr. Earring +1",
				-- Kishar Ring
				body="Taeon Tabard", hands="Leyline Gloves", rring="Prolix Ring",
				legs="Aya. Cosciales +1", feet="Carmine Greaves +1"})
	sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {})
	sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{waist="Siegel Sash"})
		
	sets.misc.Waltz = set_combine(sets.idle.PDT,{
				lear="Roundel Earring",				
				rring="Asklepian Ring",
				--feet="Rawhide Boots"
				legs="Dashing Subligar"})
	sets.misc.Steps = {ammo="Hasty Pinion +1",
				head="Carmine Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Adhemar Jacket Adhemar Wristbands 
				body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Aug.Cape.RUN.TP Kentarch Belt +1
				back="Ground. Mantle +1", waist="Dynamic Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"}
	sets.misc.flourish = {ammo="Hasty Pinion +1",
				head="Aya. Zucchetto +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchtr. Earring +1",
				body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring="Stikini Ring", rring="Stikini Ring",
				legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}

	-- Magic 
	sets.midcast.Enhancing = {
				-- Incanter's Torque
				head="Carmine Mask +1", neck="Colossus's Torque", lear="Andoaa Earring", rear="Augment. Earring",
				--body="Manasa Chasuble"
				hands="Runeist Mitons", lring="Stikini Ring", rring="Stikini Ring", 
				back="Merciful Cape", waist="Olympus Sash", legs="Carmine Cuisses +1"}
	sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing,{
				head="Futhark Bandeau"})
	sets.midcast.Regen = {head="Runiest Bandeau"}

	-- INT
	sets.midcast.Spikes = set_combine(sets.idle.PDT,{
				lring="Shiva Ring +1", rring="Shiva Ring +1"})

	-- Divine
	sets.midcast.Flash = set_combine(sets.Enmity, sets.precast.Fastcast, {})

	-- TP set
	sets.TP = { ammo="Ginsen",
				-- Lissome Necklace Anu Torque
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Adhemar Jacket  Adhemar Gloves 
				body="Ayanmo Corazza +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				-- Aug.Cape.RUN.TP
				back="Ground. Mantle +1", waist="Windbuffet Belt +1", legs="Samnuha Tights", feet="Carmine Greaves +1"}
	-- Acc Set
	sets.TP.Acc = {ammo="Hasty Pinion +1",
				-- Telos Earring 
				head="Carmine Mask +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Adhemar Jacket Adhemar Wristbands 
				body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Aug.Cape.RUN.TP Kentarch Belt +1
				back="Ground. Mantle +1", waist="Dynamic Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"}
	
	-- Alliance Buffed
	sets.TP.Buffed = {ammo="Ginsen",
				-- Lissome Necklace Anu Torque
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Adhemar Jacket  Adhemar Gloves 
				body="Ayanmo Corazza +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
				-- Aug.Cape.RUN.TP
				back="Ground. Mantle +1", waist="Windbuffet Belt +1", legs="Samnuha Tights", feet="Carmine Greaves +1"}	
	-- Tank			
	sets.TP.Hybrid = {ammo="Staunch Tathlum",
				head="Futhark Bandeau", neck="Loricate Torque", lear="Ethereal Earring", rear="Etiolation Earring",
				body="Ayanmo Corazza +2", hands="Erilaz Gauntlets", lring="Patricius Ring", rring="Defending Ring",
				back="Moonbeam Cape", waist="Flume Belt", legs="Erilaz Leg Guard", feet="Erilaz Greaves"}

	-- Weaponskills
	sets.precast.WS = {ammo="Ginsen",
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				--  Aug.Cape.RUN.WS
				back="Atheling Mantle", waist="Wanion Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"}
	sets.precast.WS.Acc = {ammo="Ginsen",
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				--  Aug.Cape.RUN.WS
				back="Atheling Mantle", waist="Wanion Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"}

	-- Great Sword
	-- Resolution
	sets.precast.WS["Resolution"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				-- Sherida Earring
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Adhemar Jacket Niqmaddu Ring
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Epona Ring",
				--  Aug.Cape.RUN.WS Herculean Trousers Adhemar Gamashes
				back="Buquwik Cape", waist="Fotia Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"})
	sets.precast.WS.Acc["Resolution"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ifrit Ring +1",
				-- Aug.Cape.RUN.WS
				back="Buquwik Cape", waist="Fotia Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"})				
	
	-- Dimidiation
	sets.precast.WS["Dimidiation"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				-- Sherida Earring
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Adhemar Jacket Niqmaddu Ring Ilabrat Ring
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Ramuh Ring +1", rring="Ramuh Ring +1",
				-- Aug.Cape.RUN.WS Lustra. Leggings +1
				back="Kayapa Cape", waist="Fotia Belt", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"})
	
	sets.precast.WS.Acc["Dimidiation"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				-- Lustratio Cap Telos Earring
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
				-- Adhemar Jacket 
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Ramuh Ring +1", rring="Ramuh Ring +1",
				-- Aug.Cape.RUN.WS Lustra. Leggings +1
				back="Kayapa Cape", waist="Fotia Belt", legs="Lustr. Subligar +1", feet="Meg. Jam. +2"})

	-- Torcleaver
	sets.precast.WS["Torcleaver"] = set_combine(sets.precast.WS, {ammo="Vanir Battery",
				head="Adhemar Bonnet", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ifrit Ring +1",
				-- Aug.Cape.RUN.WS
				back="Atheling Mantle", waist="Wanion Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"})
	
	-- Sword
	-- Requiescat
	sets.precast.WS["Requiescat"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Levia. Ring +1", rring="Levia. Ring +1",
				-- Aug.Cape.RUN.WS
				back="Atheling Mantle", waist="Fotia Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"})
	-- Savage Blade
	sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Aug.Cape.RUN.WS
				back="Buquwik Cape", waist="Fotia Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"})
	-- Sanguine Blade
	sets.precast.WS["Sanguine Blade"] = set_combine(sets.precast.WS, {
				head="Adhemar Bonnet", neck="Eddy Necklace", lear="Friomisi Earring", rear="Crematio Earring",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Archon Ring", rring="Shiva Ring +1",
				-- Aug.Cape.RUN.WS
				back="Toro Cape", waist="Fotia Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"})

	-- Great Axe
	sets.precast.WS["Fell Cleave"] = set_combine(sets.precast.WS, {ammo="Ginsen",
				head="Adhemar Bonnet", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
				body="Meghanada Cuirie +1", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Aug.Cape.RUN.WS
				back="Buquwik Cape", waist="Fotia Belt", legs="Meghanada Chausses +1", feet="Meg. Jam. +2"})
end