-- Feary's DRG Gear_sets
-- Created: 3/15/2014
-- Last Modified: 5/1/2015
-- To Do List:
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
			head="Sulevia's Mask +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Tartarus Platemail", hands="Sulev. Gauntlets +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Shadow Mantle", waist="Flume Belt", legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +2"}

	sets.idle.MDT = { 
			head="Sulevia's Mask +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Tartarus Platemail", hands="Sulev. Gauntlets +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Engulfer Cape +1", waist="Nierenschutz", legs="Sulevi. Cuisses +1", feet="Sulev. Leggings +2"}

	sets.misc.Town = set_combine(sets.idle.PDT, {
			legs="Carmine Cuisses +1"})
		
	sets.idle.Standard = set_combine(sets.idle.PDT, {
			lear="Merman's Earring", rear="Etiolation Earring", 
			legs="Carmine Cuisses +1"})

	sets.misc.Town = set_combine(sets.idle.PDT, {
			 legs="Carmine Cuisses +1"})		
	sets.lockstyle = set_combine{sets.misc.Town}
	sets.idle.Fishing = set_combine(sets.idle.Standard,{range="Lu Sh. F. Rod +1", ammo="Sinking Minnow",
			head="Tlahtlamah Glasses", neck="Fisherman's Torque",
			body="Fisherman's Smock", hands="Kachina Gloves", lring="Noddy Ring", rring="Puffin Ring",
			waist="Fisherman's Belt", legs="Fisherman's Hose", feet="Waders"})
	sets.idle.Wood = set_combine(sets.idle.Standard,{
			neck="Carpenter's Torque",
			body="Carpenter's Smock", hands="Carpenter's Gloves", lring="Orvail Ring", rring="Craftmaster's Ring",
			waist="Carpenter's Belt"})		


	-- Precast
	sets.precast.Fastcast = set_combine(sets.idle.PDT, {
		-- neck="Voltsurge Torque", 
		head="Carmine Mask +1", lear="Loquac. Earring", rear="Enchntr. Earring +1",
		-- Kishar Ring
		body="Taeon Tabard", hands="Leyline Gloves", rring="Prolix Ring",
		-- Brigantia's Mantle 
		waist="Tempus Fugit", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})

	sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

	sets.misc.Waltz = {
			rear="Roundel Earring",
			rring="Asklepian Ring",
			legs="Dashing Subligar"}
	sets.misc.Steps = {}
	sets.misc.flourish = {}

	-- JA
	sets.precast.JA["Spirit Surge"] = {body="Pteroslaver Mail"}
	sets.precast.JA["Fly High"] = {}

	sets.precast.JA["Call Wyvern"] = {body="Pteroslaver Mail"}
	sets.precast.JA["Angon"] = {ammo="Angon", 
			 --lear="Dragoon's Earring",
			 hands="Ptero. Fin. Gaunt."}
	sets.precast.JA["Deep Breathing"] = {head="Ptero. Armet"}
	sets.precast.JA["Strafe"] = {legs="Pteroslaver Brais"}
	sets.precast.JA["Empathy"] = {feet="Ptero. Greaves"}
	sets.precast.JA["Ancient Circle"] = {legs="Vishap Brais"}
	sets.precast.JA["Spirit Link"] = {head="Vishap Armet"}

	-- Jumps
	-- DA/TA ACC
	sets.precast.JA["Jump"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Sulev. Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Windbuffet Belt +1", legs="Sulevi. Cuisses +1", feet="Flamma Gambieras +1"}
	
	sets.precast.JA["Jump"].Acc = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Sulev. Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Windbuffet Belt +1", legs="Sulevi. Cuisses +1", feet="Flamma Gambieras +1"}

	-- High Jump
	sets.precast.JA["High Jump"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Sulev. Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Windbuffet Belt +1", legs="Sulevi. Cuisses +1", feet="Flamma Gambieras +1"}
	
	sets.precast.JA["High Jump"].Acc = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Sulev. Gauntlets +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Windbuffet Belt +1", legs="Sulevi. Cuisses +1", feet="Flamma Gambieras +1"}

	sets.precast.JA["Super Jump"] = {}
	-- STP
	sets.precast.JA["Spirit Jump"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Windbuffet Belt +1", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	sets.precast.JA["Soul Jump"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Windbuffet Belt +1", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	-- Melee TP 
	sets.TP = { ammo="Ginsen",
			-- Telos Earring
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Tempus Fugit", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}
		
	-- Ionis Haste +2% Save TP 25+
	sets.TP.Ionis = { ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Tempus Fugit", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}
		
	-- Melee Accuracy TP
	sets.TP.Acc = {	ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Tempus Fugit", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}
	-- Ionis Haste +2% Save TP 25+
	sets.TP.Acc.Ionis = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Tempus Fugit", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}
	
	-- Alliance Buffs - Rolls + Songs
	sets.TP.Buffed = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Ganesha's Mala", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			back=Aug.Cape.DRG.TP, waist="Tempus Fugit", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	-- Pet
	-- Acro Breath +8 Pet Macc +25
	sets.precast.HealingBreath = {
			head="Vishap Armet", 
			body=Aug.Skirmish.Acro.Body.Breathe, hands=Aug.Skirmish.Acro.Hands.Breathe, lring="Meridian Ring", rring="K'ayres Ring",
			-- waist="Glassblower's Belt",
			back=Aug.Cape.DRG.TP, legs=Aug.Skirmish.Acro.Legs.Breathe, feet=Aug.Skirmish.Acro.Feet.Breathe}
	sets.midcast.HealingBreath = {
			-- neck="Lancer's Torque",  lear="Lancer's Earring",
			head="Ptero. Armet", 
			body=Aug.Skirmish.Acro.Body.Breathe, hands=Aug.Skirmish.Acro.Hands.Breathe,
			--waist="Glassblower's Belt",
			back=Aug.Cape.DRG.TP, legs="Vishap Brais", feet="Ptero. Greaves"}
	sets.midcast.Breath = {	
			-- neck="Lancer's Torque", lear="Dragoon's Earring", 
			head="Ptero. Armet", 
			--body=Aug.Skirmish.Acro.Body.Breathe, hands=Aug.Skirmish.Acro.Hands.Breathe,
			-- waist="Glassblower's Belt", legs=Aug.Skirmish.Acro.Legs.Breathe, feet=Aug.Skirmish.Acro.Feet.Breathe
			back=Aug.Cape.DRG.TP}
	sets.precast.JA["Steady Wing"] = {
			-- neck="Lancer's Torque", lear="Lancer's Earring",
			head="Ptero. Armet", 
			back="Updraft Mantle", legs="Pteroslaver Brais", feet="Ptero. Greaves"}

	-- Weaponskills
	sets.precast.WS = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			-- Aug.Cape.DRG.WS
			back=Aug.Cape.DRG.TP, waist="Wanion Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	sets.precast.WS.Acc = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Iqabi Necklace", lear="Brutal Earring", rear="Tripudio Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Rajas Ring", rring="K'ayres Ring",
			-- Aug.Cape.DRG.WS
			back=Aug.Cape.DRG.TP, waist="Wanion Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	-- Stardiver
	sets.precast.WS["Stardiver"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			back=Aug.Cape.DRG.TP, waist="Fotia Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	sets.precast.WS.Acc["Stardiver"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			back=Aug.Cape.DRG.TP, waist="Fotia Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	-- Drakesbane
	sets.precast.WS["Drakesbane"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			back=Aug.Cape.DRG.TP, waist="Fotia Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	sets.precast.WS.Acc["Drakesbane"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			back=Aug.Cape.DRG.TP, waist="Fotia Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	-- Camlann's Torment
	sets.precast.WS["Camlann's Torment"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			back=Aug.Cape.DRG.TP, waist="Fotia Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}

	sets.precast.WS.Acc["Camlann's Torment"] = {ammo="Ginsen",
			head="Flam. Zuchetto +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			body="Flamma Korazin +1", hands="Flamma Manopolas +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			back=Aug.Cape.DRG.TP, waist="Fotia Belt", legs="Flamma Dirs +1", feet="Flamma Gambieras +1"}
end