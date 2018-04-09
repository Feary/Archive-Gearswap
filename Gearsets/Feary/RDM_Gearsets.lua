-- RDM Gearsets
-- Created on: 3/19/2014
-- Last Updated:
-- To Do List
--
--
--
--

if player.Name == 'Feary' then
	-- includes
	include('include/mappings.lua')
	include('include/equipment.lua')
	
	
	-- Auto Sets
	-- Standard/idle
	sets.idle.PDT = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Ethereal Earring", rear="Etiolation Earring",
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Shadow Mantle", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}
	
	sets.idle.MDT = {ammo="Staunch Tathlum",
			head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Ethereal Earring", rear="Etiolation Earring",
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Engulfer Cape +1", waist="Fucho-no-Obi", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}		
	
	sets.Resting = set_combine(sets.idle.PDT, {})
	
	sets.idle.Standard = set_combine(sets.idle.PDT,{
			head="Vitivation Chapeau", lear="Merman's Earring", rear="Etiolation Earring",
			body="Jhakri Robe +2",
			waist="Fucho-no-Obi", legs="Carmine Cuisses +1"})
	
	sets.misc.Town = set_combine(sets.idle.PDT, {
			head="Vitivation Chapeau",
			body="Jhakri Robe +2",
			legs="Carmine Cuisses +1"})

	-- JA
	sets.precast.JA["Chainspell"] = {body="Vitivation Tabard"}
	sets.precast.JA["Stymie"] = {}
	
	sets.precast.JA["Composure"] = {
		head="Lethargy Chappel", 
		body="Lethargy Sayon", hands="Leth. Gantherots", 
		legs="Leth. Fuseau", feet="Leth. Houseaux"}
	sets.precast.JA["Saboteur"] = {hands="Leth. Gantherots"}
	sets.precast.JA["Convert"] = {}
	sets.precast.JA["Spontaneity"] = {}
	
	-- Precast
	-- Magic
	-- caps 80 | 89 
	sets.precast.Fastcast = {ammo="Staunch Tathlum",
			-- head="Atrophy Chapeau +3, neck="Voltsurge Torque",
			head="Carmine Mask +1", lear="Loquac. Earring", rear="Enchntr. Earring +1",
			-- Vitivation Tabard +1
			body="Vitivation Tabard", hands="Leyline Gloves", lring="Prolix Ring",
			-- Aug.Cape.RDM.FC
			back="Swith Cape +1", waist="Witful Belt", legs="Aya. Cosciales +2", feet="Carmine Greaves +1"}
	sets.precast.Cure = set_combine(sets.precast.Fastcast, {
			body="Heka's Kalasiris",
			back="Pahtli Cape"})
	sets.precast.Enhancing = set_combine(sets.precast.Fastcast, {
			waist="Siegel Sash"})
	sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
			head="Umuthi Hat"})
	sets.precast.Enfeebling = set_combine(sets.precast.Fastcast, {
			head="Lethargy Chappel"})
			
	-- Midcast
	sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {--ammo="Impatiens", 
			waist="Witful Belt"})
	sets.midcast.ConserveMP = {ammo="Clarus Stone",
			-- rear="Gifted Earring",
			-- body="Hedera Cotehardie", hands="Serpentes Cuffs",
			waist="Austerity Belt", feet="Carmine Greaves +1"}
	
	-- Enfeebling 
	-- Skill need 625
	-- Frazzle/Distract 
	sets.midcast.Enfeebling = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			-- Incantor's Torque Digni. Earrings
			head="Carmine Mask +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
			body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
			-- Aug.Cape.RDM.Macc
			back="Ogapepo Cape", waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
	-- MACC
	sets.midcast.Macc = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum",
			-- Incantor's Torque Digni. Earrings
			head="Carmine Mask +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
			body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
			-- Aug.Cape.RDM.Macc Luminary Sash
			back="Ogapepo Cape", waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
	
	-- Potency
	sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{head="Vitivation Chapeau"})
	sets.midcast.Paralyze = set_combine(sets.midcast.Macc, {feet="Vitivation Boots"})
	sets.midcast.Blind = set_combine(sets.midcast.Macc, {legs="Vitivation Tights"})
	sets.midcast.Slow = set_combine(sets.midcast.Macc, {head="Vitivation Chapeau"})
	sets.midcast.Bind = set_combine(sets.midcast.INT, sets.midcast.Macc)
	
	-- Elemental	
	-- Skill Gear For Elemental Dots And High Resisted Nukes
	sets.midcast.Elemental = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, 
			-- Sanctity Necklace
			head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Crematio Earring", rear="Friomisi Earring",
			body="Jhakri Robe +2", hands="Amalric Gages", lring="Shiva Ring +1", rring="Shiva Ring +1",
			-- Aug.Cape.RDM.Macc Yamabuki-no-obi
			back="Toro Cape", waist="Wanion Belt", legs="Amalric Slops", feet="Amalric Nails"}
	-- Pure Damage
	sets.midcast.Nuke = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, 
			-- Sanctity Necklace
			head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Crematio Earring", rear="Friomisi Earring",
			body="Jhakri Robe +2", hands="Amalric Gages", lring="Shiva Ring +1", rring="Shiva Ring +1",
			-- Aug.Cape.RDM.Macc
			back="Toro Cape", waist="Wanion Belt", legs="Amalric Slops", feet="Amalric Nails"}
	sets.midcast.Nuke.MB = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, 
			head="Jhakri Coronal +1", neck="Mizu. Kubikazari-", lear="Crematio Earring", rear="Friomisi Earring",
			body="Jhakri Robe +2", hands="Amalric Gages", lring="Locus Ring", rring="Mujin Ring",
			-- Aug.Cape.RDM.Macc
			back="Toro Cape", waist="Wanion Belt", legs="Amalric Slops", feet="Amalric Nails"}
			
	--Healing Magic
	sets.midcast.Cure = {main={name="Tamaxchi", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Esper Stone +1",
			-- head="Vanya Hood", neck="Nodens Gorget", lear="Mendi. Earring"
			head="Atrophy Chapeau", neck="Colossus's Torque", lear="Novia Earring", rear="Roundel Earring",
			-- Kaykaus Bliaut Kaykaus Cuffs Haoma's Ring Sirona's Ring
			body="Heka's Kalasiris", hands="Telchine Gloves", lring="Stikini Ring", rring="Stikini Ring",
			-- Atrophy Tights +3 Vanya Clogs
			back="Tempered Cape +1", waist="Bishop's Sash", legs="Carmine Cuisses +1", feet="Rubeus Boots"}
	
	sets.midcast.Curaga = {main={name="Tamaxchi", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Esper Stone +1",
			head="Atrophy Chapeau", neck="Colossus's Torque", lear="Novia Earring", rear="Enchntr. Earring +1",
			body="Heka's Kalasiris", hands="Telchine Gloves", lring="Stikini Ring", rring="Stikini Ring",
			back="Tempered Cape +1", waist="Bishop's Sash", legs="Carmine Cuisses +1", feet="Rubeus Boots"}
		
	-- Enhancing  
	-- Goal 500+
	sets.midcast.Enhancing = {
			head="Umuthi Hat", neck="Colossus's Torque", lear="Augment. Earring", rear="Andoaa Earring",
			body="Vitivation Tabard", hands="Vitivation Gloves", lring="Stikini Ring", rring="Stikini Ring",
			back="Sucellos's Cape", waist="Bishop's Sash", legs="Carmine Cuisses +1", feet="Leth. Houseaux"}
	-- Duration
	sets.midcast.Enhancing.Self = set_combine(sets.midcast.Enhancing,{
			--head="Telchine Cap", neck="Incantor's Torque"
			neck="Colossus's Torque", lear="Augment. Earring", rear="Andoaa Earring",
			--body="Telchine Chas.", hands="Atrophy Gloves",
			lring="Stikini Ring", rring="Stikini Ring",
			--  legs="Telchine Braconi",
			back="Sucellos's Cape", waist="Bishop's Sash", legs="Carmine Cuisses +1", feet="Leth. Houseaux"})
	sets.midcast.Enhancing.Party = set_combine(sets.midcast.Enhancing, {main={name="Earth Staff", priority=2}, sub={name="Fulcio Grip", priority=1},
			head="Vitivation Chapeau", neck="Colossus's Torque", lear="Augment. Earring", rear="Andoaa Earring",
			body="Vitivation Tabard", hands="Vitivation Gloves", lring="Stikini Ring", rring="Stikini Ring",
			back="Sucellos's Cape", waist="Bishop's Sash", legs="Lethargy Fuseau", feet="Leth. Houseaux"})	
	sets.midcast.Enhancing.Refresh = set_combine(sets.midcast.Enhancing.Self, {
			--head="Almaric Coif",
			--body="Atrophy Tabard",
			--back="Grapevine Cape", waist="Gishdubar Sash",  feet="Inspirited Boots"
			legs="Lethargy Fuseau",})
			
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
	
	sets.midcast.INT = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1},
	-- Spikes: Goal 250 Int
			head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
			body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
			back="Toro Cape", waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
	
	-- Dark Magic
	sets.midcast.Bio = set_combine(sets.midcast.Macc, {legs="Vitivation Tights"})
	sets.midcast.Dark = set_combine(sets.midcast.Macc, {neck="Aesir Torque"})
	sets.midcast.Aspir = set_combine(sets.midcast.Dark)
	sets.midcast.Stun = set_combine(sets.midcast.Macc)
	
	-- Melee Sets
	sets.TP = set_combine(sets.idle.PDT, {ammo="Ginsen",
			-- Combatant's Torque
			head="Carmine Mask +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="SteelFlash Earring",
			-- Atrophy Gloves +3
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring="Ramuh Ring +1", rring="Ramuh Ring +1",
			back="Ground. Mantle +1", waist="Dynamic Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
	
	sets.TP.Acc = set_combine(sets.TP, {ammo="Ginsen",
			-- Combatant's Torque
			head="Carmine Mask +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="SteelFlash Earring",
			-- Atrophy Gloves +3
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring="Rajas Ring", rring="Ramuh Ring +1",
			-- Aug.Cape.RDM.TP
			back="Ground. Mantle +1", waist="Dynamic Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
	
	-- Weaponskills
	sets.precast.WS = set_combine(sets.TP, {
			head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",			
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			-- Aug.Cape.RDM.WS
			back="Ground. Mantle +1", waist="Flume Belt", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
	
	-- Sword 
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
			-- Despair Helm Caro Necklace 
			head="Carmine Mask +1", neck="Asperity Necklace", lear="Brutal Earring", rear="Moonshade Earring",
			-- Despair Mail Atrophy Gloves +3
			body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
			-- Despair Trousers Despair Greaves
			back="Ground. Mantle +1", waist="Prosilio Belt +1", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
	
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
			-- Taeon Chapeau Sherida Earring
			head="Carmine Mask +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
			-- Taeon Tabard Taeon Gloves Begruding Ring Ilabrat Ring
			body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring +1",
			-- Aug.Cape.RDM.WS Taeon Tights Theroid Greaves
			back="Ground. Mantle +1", waist="Fotia Belt", legs="Carmine Cuisses +1", feet="Carmine Greaves +1"})
	
	sets.precast.WS['Requeiscat'] = set_combine(sets.precast.WS, {
			head="Carmine Mask +1", neck="Fotia Gorget", lear="Merman's Earring", rear="Moonshade Earring",
			body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring=Aug.Darkring1, rring="Defending Ring",
			-- Aug.Cape.RDM.WS
			back="Ground. Mantle +1", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Carmine Greaves +1"})
	
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast.WS, {
			head="Carmine Mask +1", neck="Fotia Gorget", lear="Merman's Earring", rear="Moonshade Earring",
			body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring=Aug.Darkring1, rring="Defending Ring",
			-- Aug.Cape.RDM.WS
			back="Ground. Mantle +1", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Carmine Greaves +1"})
	
	-- Dagger 
	sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {
			head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Ground. Mantle +1", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"})
	sets.precast.WS['Mercy Stroke'] = set_combine(sets.precast.WS, {
			head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Shadow Mantle", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"})
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {
			head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
			body="Ayanmo Corazza +2", hands="Aya. Manopolas +1", lring=Aug.Darkring1, rring="Defending Ring",
			back="Shadow Mantle", waist="Flume Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"})
	
	-- Misc
	sets.misc.Waltz = {}
	sets.misc.Steps = set_combine(sets.TP.Acc, {})
	sets.misc.flourish = set_combine(sets.midcast.Macc, {})
end