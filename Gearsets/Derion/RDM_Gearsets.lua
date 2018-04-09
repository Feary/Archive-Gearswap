-- Derion's RDM Gearsets
-- Created on: 3/19/2014
-- Last Updated:
-- To Do List
--
--
--
--

if player.Name == 'Derion' then
	-- includes
	include('include/mappings.lua')
	include('include/equipment.lua')
	
	-- Auto Sets
	-- Standard/idle
	sets.idle.PDT = {ammo="Vanir Battery",
			-- Mafic Club Genbu's Shield
			main={name="Earth Staff", priority=2}, sub={name="Zuuxowu Grip", priority=1},
			-- head="Aya. Zucchetto +1",
			head="Jhakri Coronal", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1"
			body="Jhakri Robe", hands="Jhakri Cuffs",  lring=Aug.Darkring1.Derion, rring="Defending Ring",
			-- legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			back="Cheviot Cape", waist="Flume Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
	sets.idle.MDT = {ammo="Vanir Battery",
			main={name="Earth Staff", priority=2}, sub={name="Zuuxowu Grip", priority=1},
			-- head="Aya. Zucchetto +1",
			head="Jhakri Coronal", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", rring="Defending Ring",
			body="Jhakri Robe", hands="Jhakri Cuffs", lring=Aug.Darkring1.Derion, 
			-- legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			back="Engulfer Cape", waist="Flume Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
	sets.Resting = set_combine(sets.idle.PDT, {})
	
	sets.idle.Standard = set_combine(sets.idle.PDT,{
			--main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, rear="Moonshade Earring",
			head="Amalric Coif", lear="Merman's Earring", rear="Merman's Earring", 
			body="Jhakri Robe", 
			})
			
	sets.misc.Town = set_combine(sets.idle.PDT, {
			legs="Crimson Cuisses"})
	-- JA
	sets.precast.JA["Chainspell"] = {body="Vitivation Tabard"}
	sets.precast.JA["Stymie"] = {}
	
	sets.precast.JA["Composure"] = {head="Estq. Chappel +2", body="Estq. Sayon +2", hands="Estq. Ganthrt. +2", legs="Estqr. Fuseau +2", feet="Estq. Houseaux +2"}
	sets.precast.JA["Saboteur"] = {hands="Estq. Ganthrt. +2"}
	sets.precast.JA["Convert"] = {}
	sets.precast.JA["Spontaneity"] = {}
	
	-- Precast
	-- Magic
	sets.precast.Fastcast = {--ammo="Impatiens",
			-- neck="Voltsurge Torque"
			hhead="Amalric Coif", lear="Loquac. Earring", rear="Estq. Earring",
			-- body="Vitivation Tabard", rring="Prolix Ring",
			hands="Gendewitha Gages", 
			--waist="Witful Belt", legs="Aya. Cosciales +1",
			back="Swith Cape", legs="Orvail Pants +1", feet="Amalric Nails"}
	sets.precast.Cure = set_combine(sets.precast.Fastcast, {
			head="Gende. Caubeen +1", 
			--body="Heka's Kalasiris", back="Pahtli Cape"
			})
	sets.precast.Enhancing = set_combine(sets.precast.Fastcast, {
			waist="Siegal Sash"})
	sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
			--head="Umuthi Hat"
			})
	sets.precast.Enfeebling = set_combine(sets.precast.Fastcast, {
			--head="Lethargy Chappel"
			})
	-- Midcast
	sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {
			--ammo="Impatiens", 
			--waist="Witful Belt"
			})
	sets.midcast.ConserveMP = {ammo="Clarus Stone",
			head="Jhakri Coronal",
			waist="Austerity Belt",}
	
	-- Enfeebling
	-- Skill need 625
	-- Frazzle/Distract 
	sets.midcast.Enfeebling = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			--neck="Eddy Necklace",
			head="Jhakri Coronal", lear="Lifestorm Earring", rear="Psystorm Earring",
			body="Jhakri Robe", hands="Jhakri Cuffs", lring="Perception ring", rring="Sangoma ring",
			back="Ogapepo Cape", waist="Salire Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
	-- Macc
	sets.midcast.Macc = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			-- neck="Eddy Necklace",
			head="Jhakri Coronal", lear="Lifestorm Earring", rear="Psystorm Earring",
			body="Jhakri Robe", hands="Jhakri Cuffs", lring="Perception ring", rring="Sangoma ring",
			back="Ogapepo Cape", waist="Salire Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
	-- Potency
	sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{head="Vitivation Chapeau"})
	sets.midcast.Paralyze = set_combine(sets.midcast.Macc, {feet="Vitivation Boots"})
	sets.midcast.Blind = set_combine(sets.midcast.Macc, {legs="Vitivation Tights"})
	sets.midcast.Bio = set_combine(sets.midcast.Macc, {legs="Vitivation Tights"})
	sets.midcast.Slow = set_combine(sets.midcast.Macc, {head="Vitivation Chapeau"})
	
	-- Elemental
	-- High Resist
	sets.midcast.Elemental = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			--neck="Eddy Necklace",
			head="Jhakri Coronal", lear="Hecate's Earring", rear="Moldavite Earring",
			body="Jhakri Robe", hands="Amalric Gages", lring="Shiva Ring", rring="Shiva Ring",
			--back="Toro Cape", 
			waist="Acuity Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
	-- Damage	
	sets.midcast.Nuke = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			--neck="Eddy Necklace",
			head="Jhakri Coronal", lear="Hecate's Earring", rear="Moldavite Earring",
			body="Jhakri Robe", hands="Amalric Gages", lring="Shiva Ring", rring="Shiva Ring",
			--back="Toro Cape", 
			waist="Acuity Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"}
	
	--Healing Magic
	sets.midcast.Cure = {main={name="Tamaxchi", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			head="Gende. Caubeen +1", neck="Colossus's Torque", lear="Novia Earring", rear="Roundel Earring",
			-- body="Heka's Kalasiris",  Telchine Gloves
			lring="Ephedra Ring", rring="Sirona's Ring",
			-- legs="Atrophy Tights",
			back="Tempered Cape +1", waist="Cascade Belt", feet="Rubeus Boots"}
	
	sets.midcast.Curaga = {main={name="Tamaxchi", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			head="Gende. Caubeen +1", neck="Colossus's Torque", lear="Novia Earring", rear="Roundel Earring",
			-- body="Heka's Kalasiris",  Telchine Gloves
			lring="Ephedra Ring", rring="Sirona's Ring",
			-- legs="Atrophy Tights",
			back="Tempered Cape +1", waist="Cascade Belt", feet="Rubeus Boots"}

	-- Enhancing 
	-- Goal 500+
	sets.midcast.Enhancing = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			--head="Vitivation Chapeau", neck="Colossus's Torque", rear="Andoaa Earring",
			--body="Vitivation Tabard", hands="Vitivation Gloves",
			--back="Estoqueur's Cape", waist="Cascade Belt", legs="Atrophy Tights", feet="Estq. Houseaux +2"
			}
	-- Duration
	sets.midcast.Enhancing.Self = set_combine(sets.midcast.Enhancing,{
			-- head="Telchine Cap", neck="Incantor's Torque" lear="Augment. Earring", rear="Andoaa Earring",
			neck="Colossus's Torque", 
			-- body="Telchine Chas.", hands="Atrophy Gloves", lring="Stikini Ring", rring="Stikini Ring",			
			-- legs="Telchine Braconi",
			-- back="Sucellos's Cape", waist="Bishop's Sash", legs="Carmine Cuisses +1", feet="Leth. Houseaux"
			})
	sets.midcast.Enhancing.Party = set_combine(sets.midcast.Enhancing, {main={name="Earth Staff", priority=2}, sub={name="Fulcio Grip", priority=1},
			--head="Vitivation Chapeau", neck="Colossus's Torque", lear="Augment. Earring", rear="Andoaa Earring",
			--body="Vitivation Tabard", hands="Vitivation Gloves", lring="Stikini Ring", rring="Stikini Ring",
			--back="Sucellos's Cape", waist="Bishop's Sash", legs="Lethargy Fuseau", feet="Leth. Houseaux"
			})	
	sets.midcast.Enhancing.Refresh = set_combine(sets.midcast.Enhancing.Self, {
			--head="Almaric Coif",
			--body="Atrophy Tabard",
			--back="Grapevine Cape", waist="Gishdubar Sash",  feet="Inspirited Boots"
			--legs="Lethargy Fuseau",
			})	
	sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing, {
			-- head="Taeon Chapeau",
			-- body="Taeon Tabard", hands="Taeon Gloves",
			-- legs="Taeon Tights", feet="Taeon Boots",
			hands="Vitivation Gloves"})
	
	sets.midcast.Hastespell = {--ammo="Impatiens", 
			waist="Witful Belt"}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast.Enhancing.Self, {waist="Siegel Sash"})
	
	sets.midcast.Aquaveil = set_combine(sets.midcast.Enhancing.Self,{
			--waist="Empahatikos Rope", legs="Shedir Seraweels"
			})
	sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
	sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)
	sets.midcast.Regen = {main="Bolelabunga"}
	
	-- Dark Magic
	sets.midcast.Dark = set_combine(sets.midcast.Macc, {neck="Aesir Torque"})
	sets.midcast.Aspir = set_combine(sets.midcast.Dark)
	sets.midcast.Stun = set_combine(sets.midcast.Macc)
	
	-- Melee Sets
	sets.TP = set_combine(sets.idle.PDT, {ammo="Ginsen",
			-- Combatant's Torque
			-- head="Carmine Mask +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="SteelFlash Earring",
			-- Atrophy Gloves +3
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", lring="Ramuh Ring +1", rring="Ramuh Ring +1",
			--back="Ground. Mantle +1", waist="Dynamic Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"
			head="Jhakri Coronal", neck="Peacock Charm", ear="Bladeborn Earring", rear="SteelFlash Earring",
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", rring="Defending Ring",
			body="Jhakri Robe", hands="Jhakri Cuffs", lring="Rajas Ring", rring="Ramuh Ring",
			-- legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			back="Grounded Mantle", waist="Anguinus Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})
	
	sets.TP.Acc = set_combine(sets.TP, {ammo="Ginsen",
			-- Combatant's Torque
			--head="Carmine Mask +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="SteelFlash Earring",
			-- Atrophy Gloves +3
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", lring="Rajas Ring", rring="Ramuh Ring +1",
			-- Aug.Cape.RDM.TP
			--back="Ground. Mantle +1", waist="Dynamic Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"
			head="Jhakri Coronal", neck="Peacock Charm", ear="Bladeborn Earring", rear="SteelFlash Earring",
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", rring="Defending Ring",
			body="Jhakri Robe", hands="Jhakri Cuffs", lring="Cacoethic Ring", rring="Ramuh Ring",
			-- legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			back="Grounded Mantle", waist="Anguinus Belt", legs="Jhakri Slops", feet="Jhakri Pigaches +1"})
	
	-- Weaponskills
	sets.precast.WS = set_combine(sets.TP, {
			--head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",			
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", lring="Ifrit Ring +1", ,
			-- Aug.Cape.RDM.WS
			--back="Ground. Mantle +1", waist="Flume Belt", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"
			rring="Ifrit Ring +1"})
	
	-- Sword 
	-- Melee Sets
	-- Sword 
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
			--head="Carmine Mask +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Moonshade Earring",
			-- body="Jhakri Robe +1", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			-- back="Ground. Mantle +1", waist="Prosilio Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"
			})
	
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
			-- 	head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			--	body="Jhakri Robe +1", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring +1",
			-- 	back="Ground. Mantle +1", waist="Fotia Belt", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"
			})
	
	sets.precast.WS['Requeiscat'] = set_combine(sets.precast.WS, {
			--head="Carmine Mask +1", neck="Fotia Gorget", lear="Merman's Earring", rear="Moonshade Earring",
			--body="Jhakri Robe +1", hands="Jhakri Cuffs +1", lring=Aug.Darkring1, rring="Defending Ring",
			-- Aug.Cape.RDM.WS	back="Ground. Mantle +1", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Carmine Greaves +1"
			})
	
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast.WS, {
			--head="Carmine Mask +1", neck="Fotia Gorget", lear="Merman's Earring", rear="Moonshade Earring",
			--body="Jhakri Robe +1", hands="Jhakri Cuffs +1", lring=Aug.Darkring1, rring="Defending Ring",
			-- Aug.Cape.RDM.WS
			--back="Ground. Mantle +1", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Carmine Greaves +1"
			})
	
	-- Dagger 
	sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {
			--head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			--back="Ground. Mantle +1", waist="Flume Belt", legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			})
	sets.precast.WS['Mercy Stroke'] = set_combine(sets.precast.WS, {
			--head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			--back="Shadow Mantle", waist="Flume Belt", legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			})
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {
			--head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			--body="Ayanmo Corazza +1", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			--back="Shadow Mantle", waist="Flume Belt", legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			})
	
	
	-- Misc
	sets.misc.Waltz = {}
	sets.misc.Steps = set_combine(sets.TP.Acc, {})
	sets.misc.flourish = set_combine(sets.midcast.Macc, {})
end