-- SMN Gearsets
-- Created: 7/25/2014
-- Last Updated: 08/14/2015
-- To Do:
--
--
--

if player.name == 'Feary' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
			
		-- Staves
		-- Grioavolr - BPD +8, Pet Macc +25, PET MAB + 22)
		bpmagicstaff = "Eminent Pole"
		-- Grioavolr - BPD +8, Pet: Mag. Acc.+30, PET MAB + 10)
		bpmagicaccstaff = "Eminent Pole"
		-- Espiritus - Summoning magic skill +15
		smnskillstaff = "Patriarch Cane"
		-- Nirvana 
		avatarattackstaff = "Eminent Pole"
		-- Grioavolr
		refreshstaff = "Bolelabunga"
		
		-- Avatar Ammo
		Avatarammo = "Eminent Sachet"
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main={name="Earth Staff", priority=2}, sub={name="Achaq Grip", priority=1},
				-- Loricate Torque +1
				head="Inyanga Tiara +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Inyanga Jubbah +2", hands="Inyanga Dastanas +2", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Fucho-no-obi", legs="Inyanga Shalwar +2", feet="Inyan. Crackows +1"}
		sets.idle.MDT = {main={name="Earth Staff",priority=2}, sub={name="Achaq Grip", priority=1},
				-- Loricate Torque +1
				head="Inyanga Tiara +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Inyanga Jubbah +2", hands="Inyanga Dastanas +2", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Austerity Belt", legs="Inyanga Shalwar +2", feet="Inyanga Crackows +1"}		
		sets.idle.Standard = set_combine(sets.idle.PDT, {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Avatarammo,
				-- Beckoner's Horn +1
				head="Caller's Horn +2", lear="Merman's Earring", rear="Etoilation Earring",
				-- rring="Stikini Ring +1"
				body="Shomonjijoe +1", hands="Inyanga Dastanas +2", lring="Inyanga Ring",
				--
                back="Moonbeam Cape", waist="Fucho-no-obi", legs="Assiduity Pants +1", feet="Inyanga Crackows +1"})
		sets.Resting = set_combine(sets.idle.PDT, {main={name="Chatoyant Staff", priority=2}, sub={name="Achaq Grip", priority=1}, 
				head="Caller's Horn +2", neck="Eidolon Pendant", lear="Merman's Earring", rear="Etiolation Earring",
                body="Inyanga Jubbah +2", hands="Inyanga Dastanas +2", lring="Inyanga Ring", rring="Defending Ring",
				-- 
                back="Moonbeam Cape", waist="Austerity Belt", legs="Assiduity Pants +1", feet="Inyanga Crackows +1"})
		sets.misc.Town = set_combine(sets.idle.PDT, {main={name="Hvergelmir", priority=2}, sub={name="Achaq Grip", priority=1}, ammo=Avatarammo,
				feet="Herald's Gaiters"})
		sets.lockstyle = {main={name="Hvergelmir",priority=2}, sub={name="Achaq Grip", priority=1},
				head="Caller's Horn +2",
				body="Beckoner's Doublet", hands="Caller's Bracers +2",
				legs="Beckoner's Spats", feet="Herald's Gaiters"}
		
		-- Precast		
		-- JA
		sets.precast.JA['Astral Conduit'] = {}
		sets.precast.JA['Astral Flow'] = {head="Glyphic Horn"}
		-- Siphon +1 > Skill Gear
		sets.precast.JA['Elemental Siphon'] = {main={name=smnskillstaff, priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Esper Stone +1",
				-- Telchine Cap Smn. Earring
				head="Caller's Horn +2", neck="Caller's Pendant", lear="Andoaa Earring", rear="Gifted Earring",
				-- Telchine Chas. Telchine Gloves 
				body="Anhur Robe", hands="Glyphic Bracers", lring="Evoker's Ring", rring="Stikini Ring",
				-- Telchine Braconi
				back="Conveyance Cape", waist="Cimmerian Sash", legs="Beckoner's Spats", feet="Beck. Pigaches"}
				
		sets.precast.JA['Mana Cede'] = {hands="Caller's Bracers +2"}
		
		-- Magic
		sets.precast.Fastcast = { ammo="Impatiens",
				-- neck="Voltsurge Torque",
				head="Haruspex Hat +1", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				body="Inyanga Jubbah +2", hands="Magavan Mitts", lring="Prolix Ring",
				-- Aug.Cape.SMN.FC
                back="Swith Cape +1", waist="Witful Belt", legs="Lengo Pants", feet="Amalric Nails"}
		-- Not in SMN.lua
		--sets.precast.SummoningMagic = set_combine(sets.precast.Fastcast, {body="Baayami Robe"})
		
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris", 
                back="Pahtli Cape"})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast, {waist="Siegel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing, {head="Umuthi Hat"})
		
		-- Blood Pacts 
		-- Blood Pact Delay cap at -15s
		-- Blood Pact Delay II- cap at -15s - Gift Point: BP Delay II -5 = 10
		sets.precast.BP = {ammo=Avatarammo,
			-- Glyphic Horn +1
			head="Glyphic Horn", lear="Evans Earring",
			-- Apogee Doublet +1  hands="Glyphic Bracers +1",
			body="Glyphic Doublet", hands="Glyphic Bracers",
			-- 
			back=Aug.Cape.SMN, legs="Glyphic Spats", feet="Glyphic Pigaches"}
		
		-- Midcast		
		-- Magic 
		sets.midcast.Recast = set_combine(sets.idle.PDT, {})
		
		sets.midcast.ConserveMP = {
				head="Telchine Cap", rear="Gifted Earring",
				waist="Austerity Belt"}
		
		--Healing Magic
		sets.midcast.Cure = {main={name="Arka IV", priority=2}, sub={name="Achaq Grip", priority=1},
				neck="Colossus's Torque", lear="Roundel Earring", rear="Beatific Earring",
                body="Heka's Kalasiris", hands=Aug.Skirmish.Telchine.Hands.Cure, lring="Stikini Ring", rring="Stikini Ring",
                back="Tempered Cape +1", waist="Bishop's Sash", feet="Rubeus Boots"}
		sets.midcast.EnmityCure = set_combine(sets.midcast.Cure, {})
		
		sets.midcast.Curaga = {main={name="Arka IV", priority=2}, sub={name="Achaq Grip", priority=1},
				neck="Colossus's Torque", lear="Roundel Earring", rear="Beatific Earring",
                body="Heka's Kalasiris", hands=Aug.Skirmish.Telchine.Hands.Cure, lring="Stikini Ring", rring="Stikini Ring",
                back="Tempered Cape +1", waist="Bishop's Sash", feet="Rubeus Boots"}
		sets.midcast.EnmityCuraga = set_combine(sets.midcast.Curaga, {})

		sets.midcast.NaSpells = set_combine(sets.midcast.Recast)
		sets.midcast.Erase = set_combine(sets.midcast.NaSpells)

		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {})
		
		sets.midcast.Esuna = set_combine(sets.midcast.Recast)
		sets.midcast.Sacrifice = set_combine(sets.midcast.Recast)

		-- Enhancing
		sets.midcast.Regen = set_combine(sets.midcast.ConserveMP, {{main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1},
				head="Inyanga Tiara +1",}})
		sets.midcast.BarElement = {}
		sets.midcast.BarStatus = {}
		sets.midcast.Phalanx = set_combine(sets.Boost)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {waist="Siegel Sash"}
		sets.midcast.Aquaveil = {waist="Empahatikos Rope", legs="Shedir Seraweels"}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		--Divine Magic
		sets.midcast.Repose = set_combine(sets.midcast.Recast)
		sets.midcast.Flash = set_combine(sets.midcast.Macc)
		sets.midcast.Banish = set_combine(sets.midcast.Macc)
		sets.midcast.Holy = set_combine(sets.midcast.Banish)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main={name="Eminent Pole", priority=2}, sub={name="Elder's Grip +1", priority=1}, 
				head="Inyanga Tiara +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
                body="Inyanga Jubbah +2", hands="Inyanga Dastanas +2", lring="Stikini Ring", rring="Stikini Ring",
                back="Ogapepo Cape", waist="Ovate Rope", legs="Inyanga Shalwar +2", feet="Inyanga Crackows +1"}
		sets.midcast.Macc = {main={name="Eminent Pole", priority=2}, sub={name="Elder's Grip +1", priority=1}, 
				head="Inyanga Tiara +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
                body="Inyanga Jubbah +2", hands="Inyanga Dastanas +2", lring="Stikini Ring", rring="Stikini Ring",
                back="Ogapepo Cape", waist="Ovate Rope", legs="Inyanga Shalwar +2", feet="Inyanga Crackows +1"}
				
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{})

		-- Dark Magic
		sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {})
		sets.midcast.Drain = set_combine(sets.midcast.Macc, {})
		sets.midcast.Aspir = set_combine(sets.midcast.Macc, {})
		
		-- Elemental Magic
		sets.midcast.Nuke = set_combine(sets.midcast.Banish)
		sets.midcast.Dot = {}
		
		-- Perp Sets
		sets.perp = {}
		sets.perp.Day = {hands="Caller's Bracers +2"}
		sets.perp.Weather = {neck="Caller's Pendant", hands="Caller's Bracers +2"}
		
		-- Avatar
		-- Idle
		sets.idle.Avatar = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Avatarammo,
				--
				head="Glyphic Horn", neck="Caller's Pendant", lear="Evans Earring", rear="Etoilation Earring",
				-- Shomonjijoe +1 hands=Aug.Skirmish.Helios.Hands.Perp
				body="Beckoner's Doublet", hands="Inyanga Dastanas +2", lring="Evoker's Ring", rring="Inyanga Ring",
				-- Moepapa Stone - - Aug.Skirmish.Helios.Feet.Pet = {}
				back="Conveyance Cape", waist="Fucho-no-Obi", legs="Assiduity Pants +1", feet="Beck. Pigaches"}
	
		sets.idle.Avatar["Carbuncle"] = set_combine(sets.idle.Avatar,{hands="Carbuncle Mitts"}) -- Asteria Mitts +1
		sets.idle.Avatar["Diabolos"] = set_combine(sets.idle.Avatar, {waist="Diabolos's Rope"})
		sets.idle.Avatar["Alexander"] = set_combine(sets.midcast.SummoningMagic)
		sets.idle.Avatar["Odin"] = set_combine(sets.midcast.SummoningMagic)
		
		-- Avator Favor - needs 450 skill minimum
		sets.idle.Avatar.Favor = set_combine(sets.idle.Avatar,{
				head="Caller's Horn +2",
				body="Beckoner's Doublet"})
			
		-- Engaged
		-- Avatar TP
		sets.idle.Avatar.Melee = set_combine(sets.idle.Avatar, {main={name=refreshstaff, priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Avatarammo,
				-- Rimeice Earring
				head="Tali'ah Turban +1", neck="Caller's Pendant", lear="Handler's Earring +1", rear="Evans Earring",
				-- Tali'ah Ring
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Defending Ring",
				-- waist="Isa Belt",
				back=Aug.Cape.SMN.TP, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Tali'ah Crackows +1"})
		-- Avatar DT - needs to be added to smn.lua
		sets.idle.Avatar.DT = set_combine(sets.idle.Avatar,{main={name=refreshstaff, priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Avatarammo,
				head="Selenian Cap", neck="Caller's Pendant", lear="Handler's Earring +1", rear="Handler's Earring",
				-- body="Shomonjijoe +1",
				body="Glyphic Doublet", hands="Inyanga Dastanas +2", lring="Evoker's Ring", rring="Defending Ring",
				-- waist="Isa Belt", 
				back=Aug.Cape.SMN.TP, waist="Cimmerian Sash", legs="Inyanga Shalwar +2", feet="Inyanga Crackows +1"})	
		-- Spirits
		sets.idle.Avatar.Spirit = {
				-- Glyphic Horn +2
				head="Glyphic Horn", neck="Caller's Pendant", lear="Handler's Earring +1", rear="Evans Earring",
				body="Inyanga Jubbah +2", hands="Inyanga Dastanas +2", lring="Evoker's Ring", rring="Inyanga Ring",
				back=Aug.Cape.SMN.TP, waist="Fucho-no-obi", legs="Glyphic Spats", feet="Beck. Pigaches"}
		-- Summoning Magic Skill Gear
		sets.midcast.SummoningMagic =  {main={name=smnskillstaff, priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Avatarammo,
				-- Baayami head Smn. Earring
				head="Convoker's Horn", neck="Caller's Pendant", lear="Andoaa Earring", rear="Gifted Earring",
				-- Baayami Robe Baayami Cuffs
				body="Beckoner's Doublet", hands="Lamassu Mitts", lring="Evoker's Ring", rring="Stikini Ring",
				-- Baayami legs Baayami Feet 
				back=Aug.Cape.SMN.Skill, waist="Cimmerian Sash", legs="Beckoner's Spats", feet="Rubeus Boots"}

		-- BloodPactWard
		-- Buffs
		sets.midcast.Pet.BloodPactWard = set_combine(sets.midcast.SummoningMagic,{})
				
		-- Debuffs	
		sets.midcast.Pet.BloodPactWard.Macc = set_combine(sets.midcast.SummoningMagic,{
				main={name=bpmagicaccstaff, priority=2}, sub={name="Vox Grip", priority=1}, ammo=Avatarammo,
				head="Tali'ah Turban +1", neck="Caller's Pendant", lear="Andoaa Earring", rear="Evans Earring",
				-- Tali'ah Ring
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Defending Ring",
				back=Aug.Cape.SMN.Macc, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Tali'ah Crackows +1"})
		
		-- BloodPactRage
		-- Physical 
		sets.midcast.Pet.PhysicalBloodPactRage = {main={name=bpmagicaccstaff, priority=2}, sub={name="Vox Grip", priority=1}, ammo=Avatarammo,
				-- Apogee Crown +1 neck="Shulmanu Collar" lear="Lugalbanda Earring"  rear="Gelos Earring"
				head="Tali'ah Turban +1", neck="Sacrifice Torque", lear="Andoaa Earring", rear="Smn. Earring",
				-- Apogee Doublet +1 Apogee Mitts +1 Varar Ring Varar Ring
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Stikini Ring",
				-- Incarnation Sash Apogee Slacks +1 Apogee Pumps +1
				back=Aug.Cape.SMN.ACC, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Inyanga Crackows +1"}
		sets.midcast.Pet.PhysicalBloodPactRage = {main={name=bpmagicaccstaff, priority=2}, sub={name="Vox Grip", priority=1}, ammo=Avatarammo,
				-- Apogee Crown +1 neck="Shulmanu Collar" lear="Lugalbanda Earring"  rear="Gelos Earring"
				head="Tali'ah Turban +1", neck="Sacrifice Torque", lear="Andoaa Earring", rear="Smn. Earring",
				-- Apogee Doublet +1 Apogee Mitts +1 Varar Ring Varar Ring
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Stikini Ring",
				-- Incarnation Sash Apogee Slacks +1 Apogee Pumps +1
				back=Aug.Cape.SMN.ACC, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Tali'ah Crackows +1"}		
		-- Double Attack
		-- Predator claws, volt strike and chaotic strike Eclipse Bite and Rush
		sets.midcast.Pet.PhysicalBloodPactRage.DA = {main={name=bpmagicaccstaff, priority=2}, sub={name="Vox Grip", priority=1}, ammo=Avatarammo,
				-- Aug.Skirmish.Helios.Head.PBPD, Esper Earring Domes. Earring	
				head="Tali'ah Turban +1", neck="Sacrifice Torque", lear="Andoaa Earring", rear="Smn. Earring",
				-- Aug.Skirmish.Helios.Hands.PBPD 
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Stikini Ring",
				-- Aug.Skirmish.Helios.Legs.PBPD Aug.Skirmish.Helios.Feet.PBPD
				back=Aug.Cape.SMN.ACC, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Inyanga Crackows +1"}
		
		-- Magical
		-- Nether Blast','Aerial Blast','Searing Light','Diamond Dust','Earthen Fury','Zantetsuken',
		-- 'Tidal Wave','Judgment Bolt','Inferno','Howling Moon','Ruinous Omen','Flaming Crush'
		sets.midcast.Pet.MagicalBloodPactRage = {main={name="Keraunos", priority=2}, sub={name="Vox Grip", priority=1}, ammo=Avatarammo,
				-- Apogee Crown +1 neck="Shulmanu Collar" lear="Lugalbanda Earring"  rear="Gelos Earring"
				head="Tali'ah Turban +1", neck="Sacrifice Torque", lear="Andoaa Earring", rear="Smn. Earring",
				-- Apogee Doublet +1 Apogee Mitts +1 Varar Ring Varar Ring
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Stikini Ring",
				-- Incarnation Sash Apogee Slacks +1 Apogee Pumps +1
				back=Aug.Cape.SMN.ACC, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Inyanga Crackows +1"}
		
		-- Flaming Crush - Not Added to Smn.lua
		sets.midcast.Pet.FC = set_combine(sets.midcast.Pet.MagicalBloodPactRage,{})
		
		-- Heavenly Strike','Wind Blade','Holy Mist','Night Terror','Thunderstorm','Geocrush','Meteor Strike','Grand Fall','Lunar Bay','Thunderspark'		
		sets.midcast.Pet.MagicalBloodPactRage.TP = set_combine(sets.midcast.Pet.MagicalBloodPactRage, {legs="Beckoner's Spats"})
		
		--	Additional Effect BPs
		sets.midcast.Pet.MagicalBloodPactRage.Macc = set_combine(sets.midcast.Pet.BloodPactWard.Macc,{})
		
		-- Avatar Nukes 
		sets.midcast.Pet.MagicalBloodPactRage.MAB = set_combine(sets.midcast.Pet.MagicalBloodPactRage, {})
		
		sets.midcast.Pet.Spirit = set_combine(sets.midcast.Pet.BloodPactRage, {legs="Glyphic Spats"})		
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {
				head="Tali'ah Turban +1", neck="Sacrifice Torque", lear="Andoaa Earring", rear="Smn. Earring",
				-- Varar Ring Varar Ring
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Stikini Ring",
				-- Incarnation Sash 
				back=Aug.Cape.SMN.ACC, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Inyanga Crackows +1"})
		
		-- Weaponskills
		sets.precast.WS = set_combine(sets.TP, {
				-- 
				head="Tali'ah Turban +1", neck="Sacrifice Torque", lear="Andoaa Earring", rear="Smn. Earring",
				-- Varar Ring Varar Ring
				body="Tali'ah Manteel +1", hands="Tali'ah Gages +1", lring="Evoker's Ring", rring="Stikini Ring",
				-- Incarnation Sash 
				back=Aug.Cape.SMN.ACC, waist="Cimmerian Sash", legs="Tali'ah Sera. +1", feet="Inyanga Crackows +1"})
		
		-- MP Gear
		sets.precast.WS['Myrkr'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS['Garland of Bliss'] = set_combine(sets.precast.WS, {})
end 