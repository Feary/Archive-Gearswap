-- WHM Gearsets
-- Date Created: 1/29/2014
-- Last Updated: 04/15/2017
-- To Do List:
--

if player.name == 'Feary' then
		-- includes
		
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
		
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Staunch Tathlum", 
				-- Befouled Crown
				head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Ethereal Earring", rear="Etiolation Earring",
                -- Shamash Robe Chironic Gloves DT
				body="Ayanmo Corazza +2", hands="Aya. Gambieras +1", lring=Aug.Darkring1, rring="Defending Ring",
				-- Assid. Pants +1 Chironic Slippers DT
                back="Moonbeam Cape", waist="Fucho-no-Obi", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}
		sets.idle.MDT = {
				head="Inyanga Tiara +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Inyanga Jubbah +2", hands="Inyan. Dastanas +2", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Fucho-no-Obi",  legs="Inyanga Shalwar +2", feet="Inyan. Crackows +1"}			
		sets.Resting = set_combine(sets.idle.PDT, {})
		
		sets.idle.Standard = set_combine(sets.idle.PDT,{ammo="Homiliary",
				head="Inyanga Tiara +1", lear="Ethereal Earring", rear="Etiolation Earring",
				body="Inyanga Jubbah +2", hands="Inyanga Dastanas +1", hands="Inyan. Dastanas +2", lring="Inyanga Ring",
                waist="Fucho-no-Obi", legs="Assiduity Pants +1", feet="Herald's Gaiters"})
		sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Herald's Gaiters"})
				
		-- JA
		sets.precast.JA['Benediction'] = {body="Piety Briault"}
		sets.precast.JA['Asylum'] = {}
		
		sets.precast.JA['Divine Caress'] = {
				hands="Ebers Mitts", 
				back=Aug.Cape.WHM}
		sets.precast.JA['Devotion'] = {head="Piety Cap"}
		sets.precast.JA['Martyr'] = {hands="Piety Mitts"}
		
		sets.precast.JA['Divine Veil'] = {head="Ebers Cap"}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {
				--main={name="Grioavolr",priority=2}}, sub={name="Clerisy Strap",priority=1}, ammo="Impatiens",
				-- neck="Voltsurge Torque",
				head="Nahtirah Hat", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				--  Kishar Ring
                body="Inyanga Jubbah +2", hands="Fanatic Gloves", lring="Prolix Ring", rring="Lebeche Ring",
                -- Aug.Cape.WHM.FC Kaykaus Tights Regal Pumps +1
				back="Swith Cape +1", waist="Witful Belt", legs="Lengo Pants", feet="Chelona Boots +1"}
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{
				waist="Siegel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
				head="Umuthi Hat", waist="Siegel Sash"})
		sets.precast.Healing = set_combine(sets.precast.Fastcast,{legs="Ebers Pantaloons"})
		-- Caps - 80%/26 Current: 81%/13 Haste
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
				-- {main={name="Queller Rod",priority=2}},
				main={name="Tamaxchi", priority=2}, sub={name="Sors Shield",priority=1}, ammo="Impatiens",
				--rear="Nourish. Earring",
				head="Piety Cap", lear="Nourish. Earring +1",
				-- rring="Lebeche Ring",
                body="Heka's Kalasiris", hands="Fanatic Gloves", lring="Prolix Ring", 
                -- Ebers Pant. +1
				back="Pahtli Cape", waist="Witful Belt", legs="Ebers Pantaloons", feet="Cure Clogs"})
	
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {
				--main={name="Grioavolr",priority=2}}, sub={name="Clerisy Strap", priority=1},
				ammo="Hasty Pinion +1",
				-- neck="Voltsurge Torque"
				head="Nahtirah Hat", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				--  Kishar Ring
				body="Inyanga Jubbah +2", hands="Fanatic Gloves", lring="Prolix Ring",
				-- Aug.Cape.WHM.FC  Kaykaus Tights Chironic Slippers DT
                back="Moonbeam Cape", waist="Witful Belt", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"})
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				--ammo="Pemphredo Tathlum",
				lear="Gwati Earring", rear="Gifted Earring",
				--body="Vedic Coat", 
				hands="Fanatic Gloves",
                waist="Austerity Belt", feet="Kaykaus Boots"}

		--Healing Magic
		-- Cures
		sets.midcast.Cure = {
				-- Queller Rod D
				main={name="Tamaxchi", priority=2}, sub={name="Sors Shield", priority=1}, ammo="Esper Stone +1",
				-- Kaykaus Mitra B Incanter's Torque  
				head="Gendewitha Caubeen +1", neck="Colossus's Torque", lear="Glorious Earring", rear="Nourish. Earring +1",
                -- Ebers Bliaud +1 Theophany Mitts +3 Lebeche Ring
				body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring", rring="Stikini Ring",
				-- Ebers Pantaloons +1 
                back=Aug.Cape.WHM.Cure, waist="Bishop's Sash", legs="Ebers Pantaloons", feet="Kaykaus Boots"}
		
		sets.midcast.Cure.Weather = {
				main={name="Chatoyant Staff", priority=2}, sub={name="Archaq Grip", priority=1}, ammo="Esper Stone +1",
				-- Kaykaus Mitra B Incanter's Torque 
				head="Gendewitha Caubeen +1", neck="Colossus's Torque",lear="Glorious Earring", rear="Nourish. Earring +1",
                -- Ebers Bliaud +1 Theophany Mitts +3 Lebeche Ring
				body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring", rring="Stikini Ring",
				--Ebers Pantaloons +1 
                back="Twilight Cape", waist="Hachirin-no-Obi", legs="Ebers Pantaloons", feet="Kaykaus Boots"}

		sets.midcast.Curaga = {main={name="Tamaxchi", priority=2}, sub={name="", priority=2}, ammo="Esper Stone +1",
				-- 
				head="Gendewitha Caubeen +1", neck="Colossus's Torque", lear="Glorious Earring", rear="Nourish. Earring +1",
                -- Theo. Bliault +3 Theophany Mitts +3 Lebeche Ring
				body="Heka's Kalasiris", hands="Telchine Gloves", lring="Stikini Ring", rring="Stikini Ring",
                -- Ebers Pantaloons +1 
				back=Aug.Cape.WHM.Cure, waist="Bishop's Sash", legs="Ebers Pantaloons", feet="Kaykaus Boots"}
		
		sets.midcast.Curaga.Weather = {
				main={name="Chatoyant Staff", priority=2}, sub={name="Archaq Grip", priority=1}, ammo="Esper Stone +1",
				-- Nuna Gorget +1 
				head="Gendewitha Caubeen +1", neck="Colossus's Torque", lear="Glorious Earring", rear="Nourish. Earring +1",
				-- Theo. Briault +3 Kaykaus Cuffs A
                body="Heka's Kalasiris", hands="Telchine Gloves", lring="Stikini Ring", rring="Stikini Ring",
				-- Ebers Pantaloons +1 
                back="Twilight Cape", waist="Hachirin-no-Obi",  legs="Ebers Pantaloons", feet="Kaykaus Boots"}
			
		sets.midcast.Cura = set_combine(sets.midcast.Curaga)
		
		-- Enmity Capped
		sets.midcast.FullCure = set_combine(sets.midcast.Cure)

		-- Status Ailments aka lyna
		sets.midcast.Lyna = set_combine(sets.midcast.Recast, {
				main={name="Grioavolr", priority=2}, sub={name="Clemency Grip", priority=1}, ammo="Hasty Pinion +1",
				head="Ebers Cap",
				body="Hedera Cotehardie", hands="Ebers Mitts",
				waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galosh +1"})
		-- Divine Caress
		sets.midcast.Lyna.DC = set_combine(sets.midcast.Recast, {
				main={name="Grioavolr", priority=2}, sub={name="Clemency Grip", priority=1}, ammo="Hasty Pinion +1",
				head="Ebers Cap",
				body="Hedera Cotehardie", hands="Ebers Mitts",
				back="Mending Cape", waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galosh +1"})
				
		sets.midcast.Lyna.Yagrush = set_combine(sets.midcast.Recast, {
				main={name="Yagrush", priority=2}, sub={name="Thuellaic Ecu +1", priority=1},
				head="Nahtirah Hat",
				-- Shango Robe
				body="Hedera Cotehardie", hands="Ebers Mitts",
				-- Kaykaus Tights 
				waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galosh +1"})
		-- Divine Caress
		sets.midcast.Lyna.Yagrush.DC = set_combine(sets.midcast.Recast, {
				main={name="Yagrush", priority=2}, sub={name="Thuellaic Ecu +1", priority=1},
				head="Nahtirah Hat",
				-- Shango Robe
				body="Hedera Cotehardie", hands="Ebers Mitts", lring="Veneficium Ring",
				-- Kaykaus Tights 
				back="Mending Cape", waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galosh +1"})
						
		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {
				-- main={name="Gada", priority=2}, sub={name="Sors Shield", priority=1},
				-- Vanya Hood Healing skill neck="Debilis Medallion", rear="Healing Earring",
				neck="Colossus's Torque", lear="Beatific Earring", 
                -- Ebers Bliaud +1 lring="Haoma's Ring", rring="Haoma's Ring",
				body="Ebers Bliaud", hands="Fanatic Gloves", lring="Sirona's Ring",
				-- Theo. Pantaloons +3
                back="Alaunus's Cape", waist="Bishop's Sash", legs="Theo. Pantaloons", feet="Gende. Galosh. +1"})
		
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)
		
		-- Enhancing
		sets.midcast.Enhancing = {--main={name="Gada", priority=2},
				-- Befouled Crown
				head="Umuthi Hat", neck="Colossus's Torque", lear="Andoaa Earring", rear="Augment. Earring",
				body="Anhur Robe", hands="Inyanga Dastanas +1", lring="Stikini Ring", rring="Stikini Ring",
				-- Piety Pantaloons +1 Theo. Duckbills +3
				back="Merciful Cape", waist="Olympus Sash", legs="Piety Pantaloons", feet="Ebers Duckbills"}
		
		sets.midcast.Enhancing.Duration = set_combine(sets.midcast.Enhancing,{
				--main={name="Gada", priority=2}, sub={name="Ammurapi Shield", priority=1},
				--head="Telchine Cap",
				--body-"Telchine Chas.", hands="Telchine Gloves",
				--Theo. Duckbills +3
				--legs="Telchine Braconi", feet="Theo. Duckbills" 
				})
		
		sets.midcast.Shellra = set_combine(sets.precast.Enhancing,{
				--lring="Sheltered Ring",
				legs="Piety Pantaloons"})
		sets.midcast.Protectra = set_combine(sets.precast.Enhancing,{
				--lring="Sheltered Ring",
				feet="Piety Duckbills"})
		sets.midcast.Auspice = set_combine(sets.precast.Enhancing,{feet="Ebers Duckbills"})
		
		sets.midcast.Regen = set_combine(sets.midcast.Enhancing.Duration,{
				-- Ammurapi Shield
				main={name="Bolelabunga",priority=2}, sub={name="Sors Shield",priority=1},
				head="Inyanga Tiara +1",
                body="Piety Briault", hands="Ebers Mitts",
                legs="Theo. Pantaloons"})
		
		-- 438 Cap
		sets.midcast.BarElement = {main={name="Beneficus",priority=2}, sub={name="Sors Shield",priority=1},
				-- Incanter's Torque
				head="Ebers Cap", neck="Colossus's Torque", lear="Andoaa Earring", rear="Augment. Earring",
                body="Ebers Bliaud", hands="Ebers Mitts", lring="Stikini Ring", rring="Stikini Ring",
                back="Merciful Cape", waist="Olympus Sash", legs="Ebers Pantaloons", feet="Ebers Duckbills"}
		
		-- Caps 500 /sch need 80 need 106 blm/rdm
		sets.midcast.BarStatus = {
				-- Gada
				main={name="Beneficus",priority=2}, sub={name="Sors Shield",priority=1},
				-- Telchine Cap Duration Incanter's Torque 
				head="Umuthi Hat", neck="Colossus's Torque", lear="Andoaa Earring", rear="Augment. Earring",
                -- Telchine Chas. Telchine Gloves 
				lring="Stikini Ring", rring="Stikini Ring",
				-- Telchine Braconi  Piety Pantaloons +1 Theo. Duckbills +3
                back="Merciful Cape", waist="Olympus Sash", legs="Piety Pantaloons", feet="Ebers Duckbills"}
		
		-- Caps 500 to Cap - Need 106
		sets.midcast.Boost = sets.midcast.Enhancing.Duration
		
		sets.midcast.Phalanx = set_combine(sets.midcast.Boost)
		sets.midcast.Hastespell = set_combine(sets.midcast.Enhancing.Duration,{ammo="Impatiens", 
				lring="Lebeche Ring", rring="Veneficium Ring",
				back="Ogapepo Cape", waist="Witful Belt"})
		sets.midcast.Stoneskin = {
				waist="Siegel Sash"}
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
				main={name="Bolelabunga",priority=2}, sub={name="Genbu's Shield", priority=1},
				-- Chironic Hat Erra Pendant Digni. Earring
				head="Inyanga Tiara +1", neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
                -- Theo. Briault +3
				body="Inyanga Jubbah +2", hands="Inyanga Dastanas +1", lring="Stikini Ring", rring="Stikini Ring",
                --  Luminary Sash Chironic Hose Theo. Duckbills +3
				back=Aug.Cape.WHM.Macc, waist="Ovate Rope", legs="Inyanga Shalwar +2", feet="Inyanga Crackows +1"}
		-- INT/Macc
		sets.midcast.Macc = {
				-- Grioavolr Enki Strap Pemphredo Tathlum
				main={name="Bolelabunga",priority=2}, sub={name="Genbu's Shield", priority=1},
				-- Chironic Hat Erra Pendant Digni. Earring
				head="Inyanga Tiara +1", neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
                -- Theo. Briault +3
				body="Inyanga Jubbah +2", hands="Inyanga Dastanas +1", lring="Stikini Ring", rring="Stikini Ring",
                -- Luminary Sash Chironic Hose Theo. Duckbills +3
				back=Aug.Cape.WHM.Macc, waist="Ovate Rope", legs="Inyanga Shalwar +2", feet="Inyanga Crackows +1"}

		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		
		-- Divine Magic
		sets.midcast.Repose = set_combine(sets.midcast.Recast,{--ammo="Hyrdocera",
				head="Nahtirah Hat", neck="Voltsurge Torque", lear="Gwati Earring", rear="Enchntr. Earring +1",
				body="Inyanga Jubbah +2", hands="Fanatic Gloves", lring="Stikini Ring", rring="Stikini Ring",
				-- Luminary Sash Kaykaus Tights 
				back= Aug.Cape.WHM.Macc, waist="Witful Belt", legs="Lengo Pants", feet="Inyan. Crackows +1"})
		sets.midcast.Flash = set_combine(sets.midcast.Macc)
		sets.midcast.Banish = {
				-- Grioavolr Enki Strap Pemphredo Tathlum
				main={name="Bolelabunga",priority=2}, sub={name="Genbu's Shield", priority=1},
				-- Chironic Hat
				head="Inyanga Tiara +1", neck="Eddy Necklace", lear="Friomisi Earring", rear="Crematio Earring",
				-- Chironic Doublet Chironic Gloves Fenrir Ring +1 Fenrir Ring +1 
                body="Inyanga Jubbah +2", hands="Inyanga Dastanas +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
				-- Chironic Hose Chironic Slippers 
                back="Toro Cape", waist="Ovate Rope", legs="Inyanga Shalwar +2", feet="Inyanga Crackows +1"}
		sets.midcast.Holy = set_combine(sets.midcast.Banish)

		-- Dark Magic
		sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {
				-- Incanter's Torque
				head="Appetence Crown", neck="Aesir Torque",
				hands="Inyanga Dastanas +1", lring="Stikini Ring", rring="Stikini Ring",
				back="Merciful Cape"})
		sets.midcast.Drain = set_combine(sets.midcast.Macc, {
				head="Appetence Crown", neck="Aesir Torque",
				waist="Fucho-no-Obi"})
		sets.midcast.Aspir = set_combine(sets.midcast.Macc, {
				head="Appetence Crown", neck="Aesir Torque",
				waist="Fucho-no-Obi"})
		
		-- Elemental Magic
		sets.midcast.Nuke = set_combine(sets.midcast.Macc)
		sets.midcast.DOT = set_combine(sets.midcast.Macc,{})

		-- Melee Sets
		sets.TP = {-- Befouled Crown
				head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Ethereal Earring", rear="Etiolation Earring",
                -- Shamash Robe Chironic Gloves DT
				body="Ayanmo Corazza +2", hands="Aya. Gambieras +1", lring=Aug.Darkring1, rring="Defending Ring",
				-- Assid. Pants +1 Chironic Slippers DT
                back="Moonbeam Cape", waist="Fucho-no-Obi", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}

		sets.TP.Acc = {-- Befouled Crown
				head="Aya. Zucchetto +1", neck="Loricate Torque", lear="Ethereal Earring", rear="Etiolation Earring",
                -- Shamash Robe Chironic Gloves DT
				body="Ayanmo Corazza +2", hands="Aya. Gambieras +1", lring=Aug.Darkring1, rring="Defending Ring",
				-- Assid. Pants +1 Chironic Slippers DT
                back="Moonbeam Cape", waist="Fucho-no-Obi", legs="Aya. Cosciales +2", feet="Aya. Gambieras +1"}
		
		-- Weaponskills
		sets.precast.WS = set_combine(sets.TP, {})
		sets.precast.WS.Acc = {}
		
		-- Club
		-- Hexa Strike
		-- STR/ACC
		sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS.Acc["Hexa Strike"] = set_combine(sets.precast.WS.Acc,{})
		
		-- Realmrazer
		-- Mind
		sets.precast.WS['Realmrazer'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS.Acc["Realmrazer"] = set_combine(sets.precast.WS.Acc,{})
end