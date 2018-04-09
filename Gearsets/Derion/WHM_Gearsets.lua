-- WHM Gearsets
-- Date Created: 1/29/2014
-- Last Updated: 6/6/2014
-- To Do List:
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
		sets.idle.PDT = {main={name="Earth Staff", priority=2}, sub={name="", priority=1},
				-- head="Aya. Zucchetto +1",
				head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                -- body="Ayanmo Corazza +1", hands="Aya. Gambieras +1",,
				body="Inyanga Jubbah", hands="Inyanga Dastanas", lring=Aug.Darkring1.Derion, rring="Defending Ring",
                -- waist="Fucho-no-Obi", legs="Aya. Cosciales +1", feet="Aya. Gambieras +1"
				back="Cheviot Cape", waist="Austerity Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"}
		sets.idle.MDT = {main={name="Earth Staff", priority=2}, sub={name="", priority=1},
				head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
				--  
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring=Aug.Darkring1.Derion, rring="Defending Ring",
				--
                back="Engulfer Cape", waist="Austerity Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"}			
		sets.Resting = set_combine()
		
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				legs="Assid. Pants +1", feet="Herald's Gaiters"})

		sets.misc.Town = set_combine(sets.idle.PDT, {
				head="Shaded Spectacles", neck="Goldsmith's Torque",
				body="Goldsmith's Smock", lring="Craftkeeper's Ring", rring="Craftmaster's Ring",
				feet="Herald's Gaiters"})
		
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
				--lring="Prolix Ring",
                body="Inyanga Jubbah", hands="Gendewitha Gages", 
				-- waist="Witful Belt",
                back="Swith Cape",  legs="Orvail Pants +1", feet="Regal Pumps"}
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{
				-- waist="Siegel Sash"
				})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
				--head="Umuthi Hat", 
				--waist="Siegel Sash"
				hands="Carapacho Cuffs"})
		sets.precast.Healing = set_combine(sets.precast.Fastcast,{legs="Ebers Pantaloons"})
		
		-- Caps - 80%/26 Current: 81%/13 Haste
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
				-- Tamaxchi
				main={name="Beneficus", priority=2}, sub={name="Sors Shield", priority=1}, 	
				lear="Nourish. Earring +1", rear="Nourish. Earring",
				-- body="Heka's Kalairis",
                -- back="Pahtli Cape", 
				legs="Ebers Pantaloons", feet="Hygieia Clogs"})
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {
				})
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
                waist="Austerity Belt"}

		--Healing Magic
		-- Cures - Queller Rod Sors Shield 
		sets.midcast.Cure =  {main={name="Arka IV", priority=2}, sub={name="Pole Grip", priority=1}, 
				--
				head="Gende. Caubeen +1", neck="Colossus's Torque", lear="Nourish. Earring +1", rear="Nourish. Earring",
				-- Theo Mitts +1
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring", rring="Ephedra Ring",
				-- Alaunus Cape Bishop Sash kaykaus boots
                back="Tempered Cape +1", waist="Salire Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"}
		sets.midcast.Cure.Weather = set_combine(sets.midcast.Cure,  {main={name="Arka IV", priority=2}, sub={name="Pole Grip", priority=1},
				head="Gende. Caubeen +1", neck="Colossus's Torque", lear="Nourish. Earring +1", rear="Nourish. Earring",
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring", rring="Levia. Ring",
                back="Tempered Cape +1", waist="Salire Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"})
		-- Cure Pot > MND
		sets.midcast.Curaga =  {main={name="Arka IV", priority=2}, sub={name="Pole Grip", priority=1},
				head="Gende. Caubeen +1", neck="Colossus's Torque", lear="Nourish. Earring +1", rear="Nourish. Earring",
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring", rring="Levia. Ring",
                back="Tempered Cape +1", waist="Salire Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"}
		sets.midcast.Curaga.Weather = set_combine(sets.midcast.Curaga, {main={name="Arka IV", priority=2}, sub={name="", priority=1},
				head="Gende. Caubeen +1", neck="Colossus's Torque", lear="Novia Earring", rear="Orison Earring",
                body="Ebers Bliaud", hands="Theophany Mitts", lring="Sirona's Ring", rring="Levia. Ring",
                back="Tempered Cape +1", waist="Salire Belt", legs="Ebers Pantaloons", feet="Rubeus Boots"})

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
				-- Shango Robe body="Hedera Cotehardie", 
				hands="Orison Mitts +2",
				-- Kaykaus Tights 
				waist="Witful Belt", legs="Ebers Pantaloons", feet="Gende. Galoshes"})
		
		-- Divine Caress
		sets.midcast.Lyna.Yagrush.DC = set_combine(sets.midcast.Recast, {
				--main={name="Yagrush", priority=2}, sub={name="Thuellaic Ecu +1", priority=1},
				--head="Nahtirah Hat",
				-- Shango Robe lring="Veneficium Ring",
				hands="Orison Mitts +2", 
				-- back="Mending Cape",  waist="Witful Belt",  Kaykaus Tights 
				legs="Ebers Pantaloons", feet="Gende. Galoshes"})
						
		-- Cursna 500 Skill > Cursna+
		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {
				--neck="Debilis Medallion",
				neck="Colossus's Torque",
                --hands="Fanatic Gloves", lring="Ephedra Ring",
                body="Ebers Bliaud", hands="Theophany Mitts", rring="Sirona's Ring", rring="Ephedra Ring",
				--  legs="Theophany Pantaloons",
				back="Alaunus's Cape", feet="Gende. Galoshes"})
				
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enhancing
		sets.midcast.Enhancing = {--main={name="Gada", priority=2},
				-- head="Umuthi Hat", Befouled Crown lear="Andoaa Earring", rear="Augment. Earring",
				neck="Colossus's Torque", 
				-- body="Anhur Robe",  lring="Stikini Ring", rring="Stikini Ring",
				hands="Inyanga Dastanas",
				-- back="Merciful Cape", waist="Olympus Sash",legs="Piety Pantaloons", wTheoTheo. Duckbills +3
				 feet="Orsn. Duckbills +2"}
		
		sets.midcast.Enhancing.Duration = set_combine(sets.midcast.Enhancing,{
				--main={name="Gada", priority=2}, sub={name="Ammurapi Shield", priority=1},
				--head="Telchine Cap",
				--body-"Telchine Chas.", hands="Telchine Gloves",
				--Theo. Duckbills +3
				--legs="Telchine Braconi", feet="Theo. Duckbills" 
				})
		
		sets.midcast.Shellra = set_combine(sets.precast.Enhancing,{
				--lring="Sheltered Ring",
				--legs="Piety Pantaloons"
				})
		sets.midcast.Protectra = set_combine(sets.precast.Enhancing,{
				--lring="Sheltered Ring",
				--feet="Piety Duckbills"
				})
		sets.midcast.Auspice = set_combine(sets.precast.Enhancing,{feet="Orsn. Duckbills +2"})
		
		sets.midcast.Regen = set_combine(sets.midcast.ConserveMP,{
				head="Inyanga Tiara",
                body="Cleric's Briault", hands="Orison Mitts +2",
                legs="Theo. Pantaloons"})
		sets.midcast.BarElement = {main={name="Beneficus", priority=2}, sub={name="Genbu's Shield", priority=1},
				--  lear="Andoaa Earring", 
				head="Ebers Cap", neck="Colossus's Torque",
                body="Ebers Bliaud", hands="Orison Mitts +2", 
                -- back="Merciful Cape", waist="Cascade Belt",
				legs="Ebers Pantaloons", feet="Orsn. Duckbills +2"}
		sets.midcast.BarStatus = {main={name="Beneficus", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- lear="Andoaa Earring", 
				neck="Colossus's Torque", 
                -- body="Anhur Robe", 
				hands="Inyanga Dastanas",
                --back="Merciful Cape", waist="Cascade Belt", 
				legs="Cleric's Pantaln.", feet="Orsn. Duckbills +2"}
		sets.midcast.Boost = {main={name="Beneficus", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- lear="Andoaa Earring", 
				neck="Colossus's Torque", 
                -- body="Anhur Robe", 
				hands="Inyanga Dastanas",
                --back="Merciful Cape", waist="Cascade Belt", 
				legs="Cleric's Pantaln.", feet="Orsn. Duckbills +2"}
		
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
				main={name="Eminent Staff", priority=2}, sub={name="", priority=1},
				-- Chironic Hat Erra Pendant Digni. Earring lear="Gwati Earring", rear="Enchntr. Earring +1",
				head="Inyanga Tiara", neck="Orison Locket", lear="Lifestorm Earring", rear="Psystorm Earring",
                -- Theo. Briault +3  lring="Stikini Ring", rring="Stikini Ring",
				body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Perception Ring", rring="Mediator's Ring",
                -- Aug.Cape.WHM.Macc Luminary Sash Chironic Hose Theo. Duckbills +3
				back="Ogapepo Cape", waist="Salire Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"}
		-- INT/Macc
		sets.midcast.Macc = {main={name="Eminent Staff",priority=2}, sub={name="", priority=1},
				-- Grioavolr Enki Strap Pemphredo Tathlum
				main={name="Eminent Staff", priority=2}, sub={name="", priority=1},
				-- Chironic Hat Erra Pendant neck="Voltsurge Torque", Digni. Earring lear="Gwati Earring", rear="Enchntr. Earring +1",
				head="Inyanga Tiara", lear="Lifestorm Earring", rear="Psystorm Earring",
                -- Theo. Briault +3 lring="Stikini Ring", rring="Stikini Ring",
				body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Perception Ring", rring="Mediator's Ring",
                -- Aug.Cape.WHM.Macc Luminary Sash Chironic Hose Theo. Duckbills +3
				back="Ogapepo Cape", waist="Salire Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"}

		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		
		-- Divine Magic
		sets.midcast.Repose = set_combine(sets.midcast.Recast,{--ammo="Hyrdocera",
				-- neck="Voltsurge Torque",
				head="Inyanga Tiara", lear="Lifestorm Earring", rear="Psystorm Earring",
				-- Fanatic Gloves  lring="Stikini Ring", rring="Stikini Ring",
				body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Perception Ring", rring="Mediator's Ring",
				-- Aug.Cape.WHM.Macc Luminary Sash Kaykaus Tights 
				back="Ogapepo Cape", waist="Salire Belt", legs="Inyanga Shalwar", feet="Inyan. Crackows +1"})
		sets.midcast.Flash = set_combine(sets.midcast.Macc)
		sets.midcast.Banish = {
				-- Grioavolr Enki Strap Pemphredo Tathlum
				main={name="Bolelabunga",priority=2}, sub={name="Genbu's Shield", priority=1},
				-- Chironic Hat neck="Eddy Necklace",
				head="Inyanga Tiara", lear="Moldavite Earring", rear="Hecate's Earring",
				-- Chironic Doublet Chironic Gloves Fenrir Ring +1 Fenrir Ring +1 
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Shiva Ring", rring="Shiva Ring",
				-- Chironic Hose Chironic Slippers 
                back="Toro Cape", waist="Salire Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"}
		sets.midcast.Holy = set_combine(sets.midcast.Banish)

		-- Dark Magic
		sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {
				-- head="Appetence Crown", Incanter's Torque neck="Aesir Torque",
				-- lring="Stikini Ring", rring="Stikini Ring",
				hands="Inyanga Dastanas", 
				--back="Merciful Cape"
				})
		sets.midcast.Drain = set_combine(sets.midcast.Macc, {
				--head="Appetence Crown", neck="Aesir Torque",
				--waist="Fucho-no-Obi"
				})
		sets.midcast.Aspir = set_combine(sets.midcast.Macc, {
				--head="Appetence Crown", neck="Aesir Torque",
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