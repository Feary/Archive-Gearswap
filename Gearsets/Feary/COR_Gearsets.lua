-- Feary's COR Gear_sets
-- Created: 03/10/2014
-- Last Modified: 7/25/2016
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
			head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
			back="Moonbeam Cape", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.idle.MDT = { 
			head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
			back="Engulfer Cape +1", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
			
	sets.idle.Standard = set_combine(sets.idle.PDT, {
			legs="Carmine Cuisses +1"})
					
	sets.misc.Town = set_combine(sets.idle.PDT, {
			head="Lanun Tricorne",
			body="Lak. Frac", hands="Lanun Gants",
			legs="Carmine Cuisses +1"})
	
	-- Precast ..
	sets.precast.Fastcast = set_combine(sets.idle.PDT, {
			-- neck="Voltsurge Torque",
			head="Carmine Mask +1",  lear="Loquac. Earring", rear="Enchntr. Earring +1", 
			-- Kisher Ring
			body="Taeon Tabard", hands="Leyline Gloves", rring="Prolix Ring",
			--back="Camulus's Mantle", legs="Taeon Tights", 
			waist="Twilight Belt", feet="Carmine Greaves +1"})

	sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})
							
	sets.misc.Waltz = {
			rring="Asklepian Ring",
			legs="Dashing Subligar"}
	sets.misc.Steps = {}
	sets.misc.flourish = {}

	-- JA
	sets.precast.JA["Wild Card"] = {feet="Lanun Bottes"}
	sets.precast.JA["Cutting Cards"] = {}

	sets.precast.JA["Fold"] = {hands="Lanun Gants"}
	sets.precast.JA["Random Deal"] = {body="Lanun Frac"}
	sets.precast.JA["Snake Eye"] = {legs="Lanun Culottes"}
	sets.precast.JA["Triple Shot"] = {
			body="Chasseur's Frac",
			back=Aug.Cape.COR.TP}
	

	-- Corsair Rolls
	sets.precast.JA["Phantom Roll"] = set_combine(sets.idle.PDT,{
			head="Lanun Tricorne", 
			hands="Chasseur's Gants", lring="Barataria Ring", rring="Luzaf's Ring",
			back="Camulus's Mantle", legs="Desultor Tassets"})
	sets.precast.JA["Double-Up"] = set_combine(sets.precast.JA["Phantom Roll"])
	
	sets.precast.JA["Caster's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {legs="Chasseur's Culottes"})
	sets.precast.JA["Courser's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {feet="Chasseur's Bottes"})
	sets.precast.JA["Blitzer's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {head="Chass. Tricorne"})
	sets.precast.JA["Tactician's Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {body="Chasseur's Frac"})
	sets.precast.JA["Allies' Roll"] = set_combine(sets.precast.JA["Phantom Roll"], {hands="Chasseur's Gants"})

	-- Quick Draw 
	sets.precast.QD = {}
	
	-- Elemental Shots
	sets.precast.QD.MAB = {
			-- Baetyl Pendant
			head="Blood Mask", neck="Stoicheion Medal", lear="Friomisi Earring", rear="Crematio Earring",
			-- Fenrir Ring +1 Fenrir Ring +1
			body="Samnuha Coat", hands="Leyline Gloves", lring="Shiva Ring +1", rring="Shiva Ring +1",
			--  Aug.Cape.COR.MAB      Belt             Adhe. Gamashes +1 
			back=Aug.Cape.COR.TP, waist="Salire Belt", legs="Mummu Kecks +1", feet="Adhemar Gamashes"}
		
	--Light/Dark Shot
	sets.precast.QD.ACC = {
			-- Sanctity Necklace 
			head="Meghanada Visor +1", neck="Iqabi Necklace", lear="Enchntr. Earring +1", rear="Gwati Earring",
			-- Mirke Wadecors  Arvina Ringlet +1
			body="Lanun Frac", hands="Chasseur's Gants", lring="Stikini Ring", rring="Stikini Ring",
			-- Eschan Stone 
			back=Aug.Cape.COR.TP, waist="Kwahu Kachina Belt", legs="Mummu Kecks +1", feet="Chasseur's Bottes"}
				
	-- RA Sets
	sets.precast.Snapshot = {ammo=TPBullet[player.name],
			-- Taeon Chapeau
			head="Chasseur's Tricorne", 
			--body="Skopos Jerkin", 
			hands="Carmine Fin. Gauntlets +1",
			--  Chas. Culottes +1 Taeon Boots 
			back=Aug.Cape.COR.Snapshot, waist="Impulse Belt", legs="Nahtirah Trousers", feet="Meg. Jam. +2"}
	
	-- Eminent Gun
	sets.RA = {ammo=TPBullet[player.name],
			head="Meghanada Visor +1", neck="Gaudryi Necklace", lear="Neritic Earring", rear="Enervating Earring",
			body="Meghanada Cuirie +2", hands="Mummu Wrists +2", lring="Hajduk Ring", rring="Hajduk Ring",
			-- 
			back=Aug.Cape.COR.TP, waist="Kwahu Kachina Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
					
	sets.RA.Acc = {ammo=TPBullet[player.name],
			head="Meghanada Visor +1", neck="Iqabi Necklace", lear="Clearview Earring", rear="Enervating Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Hajduk Ring", rring="Hajduk Ring",
			back=Aug.Cape.COR.TP, waist="Kwahu Kachina Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
			
	-- Armageddon 
	sets.RA.Armageddon = {ammo=TPBullet[player.name],
			head="Meghanada Visor +1", neck="Ocachi Gorget", lear="Neritic Earring", rear="Enervating Earring",
			body="Meghanada Cuirie +2", hands="Mummu Wrists +2", lring="Hajduk Ring", rring="Hajduk Ring",
			back=Aug.Cape.COR.TP, waist="Kwahu Kachina Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
			
	sets.RA.Armageddon.Acc = { ammo=TPBullet[player.name],
			head="Meghanada Visor +1", neck="Iqabi Necklace", lear="Clearview Earring", rear="Enervating Earring",
			body="Meghanada Cuirie +2", hands="Mummu Wrists +2", lring="Hajduk Ring", rring="Hajduk Ring",
			back=Aug.Cape.COR.TP, waist="Kwahu Kachina Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
			
	--Barrage
	sets.precast.JA["Barrage"] =  set_combine(sets.RA.Acc, {ammo=TPBullet[player.name]})

	-- Melee TP 
	sets.TP = { 
			-- Adhe. Bonnet +1 Defiant Collar 
			head="Carmine Mask +1", neck="Iqabi Necklace", lear="Dudgeon Earring", rear="Heartseeker Earring",
			-- Adhemar Jacket +1 Adhemar Wrist. +1 lring="Petrov Ring"
			body="Meghanada Cuirie +2", hands="Mummu Wrists +2", lring="Rajas Ring", rring="Epona's Ring",
			-- Aug.Cape.COR.Melee Adhe. Gamashes +1
			back="Ground. Mantle +1", waist="Windbuffet Belt +1", legs="Samnuha Tights", feet="Meg. Jam. +2"}

	-- Melee Accuracy TP
	sets.TP.Acc = {	
			-- Adhe. Bonnet +1 Defiant Collar Telos Earring Zennaroi Earring
			head="Carmine Mask +1", neck="Iqabi Necklace", lear="Dudgeon Earring", rear="Heartseeker Earring",
			-- Adhemar Jacket +1 Adhemar Wrist. +1 lring="Petrov Ring" Cacoethic Ring +1
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Ramuh Ring +1",
			-- Aug.Cape.COR.Melee Adhe. Gamashes +1
			back="Ground. Mantle +1", waist="Anguinus Belt", legs="Carmine Cuisses +1", feet="Meg. Jam. +2"}

	-- Weaponskills
	-- Melee WS
	sets.precast.WS = {ammo=WSBullet[player.name],
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
			-- Aug.Cape.COR.Melee.WS
			back="Ground. Mantle +1", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
	
	sets.precast.WS.Acc = {ammo=WSBullet[player.name],
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
			-- Aug.Cape.COR.Melee.WS
			back="Ground. Mantle +1", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
	
	-- Sword
	sets.precast.WS["Savage Blade"] = {
			head="Meghanada Visor +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			-- Aug.Cape.COR.Melee.WS
			back="Buquwik Cape", waist="Wanion Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}

	sets.precast.WS["Requiescat"] = {
			head="Meghanada Visor +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Stikini Ring", rring="Stikini Ring",
			-- Aug.Cape.COR.Melee.WS
			back="Vespid Mantle", waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
					
	-- Dagger
	sets.precast.WS["Exenterator"] = {
			head="Meghanada Visor +1", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
			-- Aug.Cape.COR.Melee.WS
			back="Buquwik Cape", waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
	
	-- RA WS
	sets.precast.RAWS = {ammo=WSBullet[player.name],
			--  or Ishvara Earring"
			head="Meghanada Visor +1", neck="Fotia Gorget", lear="Enervating Earring", rear="Moonshade Earring",
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Garuda Ring +1", rring="Garuda Ring +1",
			-- 
			back=Aug.Cape.COR.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"}
	
	-- Physical
	sets.precast.RAWS['Last Stand'] = set_combine(sets.precast.RAWS,{
			-- Ishvara Earring
			head="Meghanada Visor +1", neck="Fotia Gorget", lear="Enervating Earring", rear="Moonshade Earring",
			-- Laksa. Frac +3 
			body="Meghanada Cuirie +2", hands="Meg. Gloves +2", lring="Garuda Ring +1", rring="Garuda Ring +1",
			-- 
			back=Aug.Cape.COR.WS, waist="Fotia Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +2"})
	
	-- Magical
	sets.precast.RAWS['Wildfire'] = set_combine(sets.precast.RAWS,{ammo=MBullet[player.name],
			-- Taeon Chapeau Baetyl Pendant
			head="Chass. Tricorne", neck="Stoicheion Medal", lear="Crematio Earring", rear="Friomisi Earring",
			-- Laksa. Frac +3/Carmine Mail +1 Arvina Ringlet +1
			body="Lanun Frac", hands="Meg. Gloves +2", lring="Garuda Ring +1", rring="Garuda Ring +1",
			--  Eschan Stone Adhe. Gamashes +1
			back=Aug.Cape.COR.WS, waist="Salire Belt", legs="Lak. Trews", feet="Adhe. Gamashes"})

	sets.precast.RAWS['Leaden Salute'] = set_combine(sets.precast.RAWS,{ammo=MBullet[player.name],
			--  Baetyl Pendant Pixie Earring +1
			head="Lanun Tricorne", neck="Stoicheion Medal", lear="Friomisi Earring", rear="Moonshade Earring",
			-- Carmine Mail +1  Carmine Fin. Gauntlets +1 Arvina Ringlet +1
			body="Samnuha Coat", hands="Meg. Gloves +2", lring="Shiva Ring +1", rring="Archon Ring",
			-- Eschan Stone Adhe. Gamashes +1
			back=Aug.Cape.COR.WS, waist="Salire Belt", legs="Lak. Trews", feet="Adhe. Gamashes"})

end