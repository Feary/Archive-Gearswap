-- Aniyah's WHM Gearsets
-- Date Created: 1/29/2014
-- Last Updated: 6/13/2016
-- To Do List:
--
--
--
--

if player.name == 'Aniyah' then
		-- includes
		include('include/utility.lua')
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
			
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main={name="Earth Staff", priority=2}, sub={name="Pax Grip", priority=1},
				-- head="Aya. Zucchetto +1",
				head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				-- body="Ayanmo Corazza +1",  hands="Aya. Gambieras +1" Defending Ring
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Vocane Ring", rring="Defending Ring",
				-- legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
			   back="Umbra Cape", waist="Austerity Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
		sets.idle.MDT = {main={name="Earth Staff", priority=2}, sub={name="Pax Grip", priority=1},
				--
				head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                --
				body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Vocane Ring", rring="Shadow Ring",
                --
				back="Felicitas Cape", waist="Austerity Belt",  legs="Inyanga Shalwar", feet="Inyanga Crackows"}			
		sets.Resting = set_combine(sets.idle.PDT, {})
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				-- lring="Inyanga Ring",
				hands="Inyanga Dastanas", 
				feet="Inyanga Crackows"
                })

		sets.misc.Town = set_combine(sets.idle.PDT, {
				body="Inyanga Jubbah",
				--feet="Herald's Gaiters"
				})
				
		-- Precast
		-- JA
		sets.precast.JA['Benediction'] = {body="Cleric's Briault"}
		sets.precast.JA['Asylum'] = {}
		
		sets.precast.JA['Divine Caress'] = {
				hands="Orison Mitts +2", 
				--back="Mending Cape"
				}
		sets.precast.JA['Devotion'] = {head="Cleric's Cap"}
		sets.precast.JA['Martyr'] = {hands="Cleric's Mitts"}
		
		-- Magic
		sets.precast.Fastcast = {ammo="Incantor Stone",
				head="Haruspex Hat", neck="Orison Locket", lear="Loquac. Earring",
				-- lring="Prolix Ring",
                body="Inyanga Jubbah", hands="Gendewitha Gages", 
                back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Chelona Boots"}
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{
				--waist="Siegel Sash"
				})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
				--head="Umuthi Hat", 
				--waist="Siegel Sash"
				})
		sets.precast.Healing = set_combine(sets.precast.Fastcast,{legs="Ebers Pantaloons"})
		
		-- Caps - 80%/26 Current: 
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
				lear="Nourish. Earring",
                body="Heka's Kalasiris",
				-- back="Pahtli Cape", feet="Cure Clogs"
                 legs="Ebers Pantaloons",})
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {
                --body="Hedera Cotehardie",  
				--feet="Umbani Boots"
				})
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				--lear="Magnetic Earring", rear="Gifted Earring",
				-- body="Hedera Cotehardie", 
				-- legs="Nares Trews", feet="Umbani Boots"
                waist="Austerity Belt", }

		--Healing Magic
		-- Cures
		sets.midcast.Cure = {main={name="Arka IV", priority=2}, sub={name="Pax Grip",priority=1},
				-- lear="Novia Earring",
				head="Ebers Cap", neck="Colossus's Torque", lear="Nourish. Earring", rear="Orison Earring",
				-- rring="Levia. Ring",
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring",
                back="Tempered Cape", waist="Cascade Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"}
		sets.midcast.Cure.Weather = {main={name="Iridal Staff", priority=2}, sub={name="Pax Grip",priority=1},
				-- lear="Novia Earring",
				head="Ebers Cap", neck="Colossus's Torque", lear="Nourish. Earring", rear="Orison Earring",
				-- rring="Levia. Ring",
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring",
                -- Light Obi Theophany Duckbills
				back="Twilight Cape", waist="Cascade Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"}

		sets.midcast.Curaga = {main={name="Arka IV", priority=2}, sub={name="Pax Grip",priority=1},
				-- lear="Novia Earring",
				head="Ebers Cap", neck="Colossus's Torque", lear="Nourish. Earring", rear="Orison Earring",
				-- lring="Stikini Ring", rring="Stikini Ring",
                body="Heka's Kalasiris", hands="Theophany Mitts", lring="Sirona's Ring", 
                back="Tempered Cape", waist="Cascade Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"}
		sets.midcast.Curaga.Weather = {main={name="Iridal Staff", priority=2}, sub={name="Pax Grip",priority=1},
				--lear="Novia Earring",
				head="Ebers Cap", neck="Colossus's Torque", lear="Nourish. Earring", rear="Orison Earring",
				-- lring="Stikini Ring", rring="Stikini Ring",
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring", 
                back="Twilight Cape", waist="Light Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"}

		sets.midcast.Cura = {}

		-- Enmity Capped
		sets.midcast.FullCure = set_combine(sets.midcast.Cure)

		-- Status Ailments aka lyna
		sets.midcast.Lyna = set_combine(sets.midcast.Recast, {
				--main={name="Grioavolr", priority=2}, sub={name="Clemency Grip", priority=1}, ammo="Hasty Pinion +1",
				head="Ebers Cap",
				--body="Hedera Cotehardie", 
				hands="Orison Mitts +2",
				waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galoshes"})
		-- Divine Caress
		sets.midcast.Lyna.DC = set_combine(sets.midcast.Recast, {
				--main={name="Grioavolr", priority=2}, sub={name="Clemency Grip", priority=1}, ammo="Hasty Pinion +1",
				head="Ebers Cap",
				--body="Hedera Cotehardie", 
				hands="Orison Mitts +2",
				--back="Mending Cape", 
				waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galoshes"})
				
		sets.midcast.Lyna.Yagrush = set_combine(sets.midcast.Recast, {
				--main={name="Yagrush", priority=2}, sub={name="Thuellaic Ecu +1", priority=1},
				--head="Nahtirah Hat",
				head="Haruspex Hat",
				-- Shango Robe
				--body="Hedera Cotehardie", 
				hands="Orison Mitts +2",
				-- Kaykaus Tights 
				waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galoshes"})
		-- Divine Caress
		sets.midcast.Lyna.Yagrush.DC = set_combine(sets.midcast.Recast, {
				--main={name="Yagrush", priority=2}, sub={name="Thuellaic Ecu +1", priority=1},
				--head="Nahtirah Hat",
				-- body="", Shango Robe lring="Veneficium Ring",
				hands="Orison Mitts +2", 
				-- back="Mending Cape", Kaykaus Tights 
				waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galoshes"})
						
		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {
				--neck="Debilis Medallion",
				neck="Colossus's Torque",
                --hands="Fanatic Gloves", rring="Haoma's Ring", rring="Haoma's Ring",
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring",
				-- back="Alaunus's Cape", legs="Theophany Pantaloons",
				feet="Gende. Galoshes"})
				
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enhancing
		-- Enhancing
		sets.midcast.Enhancing = {--main={name="Gada", priority=2},
				-- head="Umuthi Hat",Befouled Crown lear="Andoaa Earring", rear="Augment. Earring",
				 neck="Colossus's Torque", 
				-- body="Anhur Robe", lring="Stikini Ring", rring="Stikini Ring",
				hands="Inyanga Dastanas", 
				-- back="Merciful Cape", waist="Olympus Sash",+1 legs="Piety Pantaloons", Theo. Duckbills +3
				 waist="Cascade Belt", legs="Clr. Pantaln. +2", feet="Ebers Duckbills"}
		
		sets.midcast.Enhancing.Duration = set_combine(sets.midcast.Enhancing,{
				--main={name="Gada", priority=2}, sub={name="Ammurapi Shield", priority=1},
				--head="Telchine Cap",
				--body-"Telchine Chas.", hands="Telchine Gloves",
				--Theo. Duckbills +3
				--legs="Telchine Braconi", feet="Theo. Duckbills" 
				})
		
		sets.midcast.Shellra = set_combine(sets.precast.Enhancing,{
				--lring="Sheltered Ring",
				legs="Clr. Pantaln. +2"})
		sets.midcast.Protectra = set_combine(sets.precast.Enhancing,{
				--lring="Sheltered Ring",
				--feet="Piety Duckbills"
				})
		sets.midcast.Auspice = set_combine(sets.precast.Enhancing,{feet="Ebers Duckbills"})
	
		sets.midcast.Regen = set_combine(sets.midcast.ConserveMP,{
				head="Inyanga Tiara",
                body="Cleric's Briault", hands="Orison Mitts +2",
                legs="Healer's Pantaln."})
		sets.midcast.BarElement = {main={name="Beneficus", priority=2}, sub={name="Genbu's Shield", priority=1},
				--lear="Andoaa Earring",
				head="Ebers Cap", neck="Colossus's Torque",  
                body="Ebers Bliaud", hands="Orison Mitts +2",
                --back="Merciful Cape", 
				waist="Cascade Belt", legs="Ebers Pantaloons", feet="Ebers Duckbills"}
		sets.midcast.BarStatus = {main={name="Beneficus", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- head="", lear="Andoaa Earring", 
				neck="Colossus's Torque", 
				--body="Anhur Robe", lring="Stikini Ring", rring="Stikini Ring",
				hands="Inyanga Dastanas",
				--back="Merciful Cape", 
				waist="Cascade Belt", legs="Clr. Pantaln. +2", feet="Ebers Duckbills"}
		sets.midcast.Boost = {main={name="Beneficus", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- head="", lear="Andoaa Earring", rear="Augment. Earring",
				neck="Colossus's Torque", 
                --body="Anhur Robe", lring="Stikini Ring", rring="Stikini Ring",
				hands="Inyanga Dastanas",  
                --back="Merciful Cape", 
				waist="Cascade Belt", legs="Clr. Pantaln. +2", feet="Ebers Duckbills"}
		
		sets.midcast.Phalanx = set_combine(sets.midcast.Boost)
		sets.midcast.Hastespell = set_combine(sets.midcast.Enhancing.Duration,{--ammo="Impatiens", 
				--lring="Lebeche Ring", rring="Veneficium Ring",
				back="Ogapepo Cape", waist="Witful Belt"})
		sets.midcast.Stoneskin = {
				--waist="Siegel Sash"
				}
		sets.midcast.Aquaveil = {
				--Vadose Rod
				--Chironic Hat
				--waist="Empahatikos Rope", legs="Shedir Seraweels"
				}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		
		-- Enfeebling
		-- MND/Macc
		sets.midcast.Enfeebling = {
				-- Grioavolr Enki Strap Hyrdocera
				main={name="Lehbrailg +1",priority=2}, sub={name="Niobid Strap", priority=1},
				-- Chironic Hat neck="Voltsurge Torque", Digni. Earring lear="Gwati Earring", rear="Enchntr. Earring +1",
				head="Inyanga Tiara", 
                -- Theo. Briault +3 lring="Stikini Ring", rring="Stikini Ring",
				body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Perception Ring", rring="Balrahn's Ring",
                -- Aug.Cape.WHM.Macc  waist="Ovate Rope", Luminary Sash Chironic Hose Theo. Duckbills +3
				back="Ogapepo Cape", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
		-- INT/Macc
		sets.midcast.Macc = {
				-- Grioavolr Enki Strap Pemphredo Tathlum
				main={name="Lehbrailg +1",priority=2}, sub={name="Niobid Strap", priority=1},
				-- Chironic Hat neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
				head="Inyanga Tiara", 
                -- Theo. Briault +3 lring="Stikini Ring", rring="Stikini Ring",
				body="Inyanga Jubbah", hands="Inyanga Dastanas", 
                -- Aug.Cape.WHM.Macc waist="Ovate Rope", Luminary Sash Chironic Hose Theo. Duckbills +3
				back="Ogapepo Cape", legs="Inyanga Shalwar", feet="Inyanga Crackows"}

		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		
		--Divine Magic
		sets.midcast.Repose = set_combine(sets.midcast.Recast,{--ammo="Hyrdocera",
				--head="Nahtirah Hat", neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
				head="Haruspex Hat",
				-- Fanatic Gloves lring="Stikini Ring", rring="Stikini Ring",
				body="Inyanga Jubbah", hands="Inyanga Dastanas", 
				-- Aug.Cape.WHM.Macc Luminary Sash Kaykaus Tights 
				back="Swith Cape", waist="Witful Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows"})
		sets.midcast.Flash = set_combine(sets.midcast.Macc)
		sets.midcast.Banish = {
				-- Grioavolr Enki Strap Pemphredo Tathlum
				main={name="",priority=2}, sub={name="Genbu's Shield", priority=1},
				-- Chironic Hat neck="Eddy Necklace",
				head="Inyanga Tiara",  lear="Friomisi Earring", rear="hecate's Earring",
				-- Chironic Doublet Chironic Gloves Fenrir Ring +1 Fenrir Ring +1 
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Shiva Ring", rring="Shiva Ring",
				-- waist="Ovate Rope", Chironic Hose Chironic Slippers 
                back="Toro Cape", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
		sets.midcast.Holy = set_combine(sets.midcast.Banish)

		-- Dark Magic
		sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {
				-- head="Appetence Crown", neck="Aesir Torque", Incanter's Torque				
				--  lring="Stikini Ring", rring="Stikini Ring",
				hands="Inyanga Dastanas",
				--back="Merciful Cape"
				})
		sets.midcast.Drain = set_combine(sets.midcast.Macc, {
				-- head="Appetence Crown", neck="Aesir Torque",
				--waist="Fucho-no-Obi"
				})
		sets.midcast.Aspir = set_combine(sets.midcast.Macc, {
				-- head="Appetence Crown", neck="Aesir Torque",
				--waist="Fucho-no-Obi"
				})
		
		-- Elemental Magic
		sets.midcast.Nuke = set_combine(sets.midcast.Banish)
		sets.midcast.DOT = set_combine(sets.midcast.Macc,{})

		-- Melee Sets
		sets.TP = {}
		
		sets.TP.Acc = {}
		
		-- Weaponskills
		sets.precast.WS = set_combine(sets.TP, {})
		sets.precast.WS.Acc = {}
		
		-- Club
		-- Hexa Strike
		sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS.Acc["Hexa Strike"] = set_combine(sets.precast.WS.Acc,{})

end