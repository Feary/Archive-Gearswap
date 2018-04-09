-- Derion's SMN Gearsets
-- Created:
-- Last Updated: 
-- To Do:
--
--
--

if player.name == 'Derion' then
	-- includes	
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
	
	
	-- Satchet 
	Sachet = "Idaraaja"
	
	-- Auto Sets
	-- Standard/idle
	sets.idle.PDT = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
			body="Inyanga Jubbah", hands="Inyanga Dastanas", lring=Aug.Darkring1.Derion, rring="Defending Ring",
			back="Cheviot Cape", waist="Austerity Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"}
	
	sets.idle.MDT = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
			body="Inyanga Jubbah", hands="Inyanga Dastanas", lring=Aug.Darkring1.Derion, rring="Defending Ring",
			back="Felicitas Cape", waist="Austerity Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"}
	
	sets.Resting = set_combine(sets.idle.PDT, {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Clarus Stone",
			-- rear="Moonshade Earring",
			head="Caller's Horn +2", neck="Eidolon Pendant", lear="Magnetic Earring", 
			-- body="Hagondes Coat", 
			hands="Serpentes Cuffs", 
			back="Felicitas Cape", waist="Austerity Belt", legs="Assiduity Pants +1", feet="Chelona Boots"})
	
	sets.idle.Standard = set_combine(sets.idle.PDT,{main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			head="Caller's Horn +2",lear="Merman's Earring", rear="Moonshade Earring",
			--body="Hagondes Coat", hands="Serpentes Cuffs",
			--waist="Fucho-no-obi", 
			legs="Assiduity Pants +1", feet="Herald's Gaiters"})
	
	sets.misc.Town = set_combine(sets.idle.PDT, {
			head="Shaded Spectacles",
			body="Goldsmith's Smock", hands="Tanner's Gloves", lring="Craftmasters Ring", rring="Craftkeeper Ring",
			waist="Goldsmith's Belt", feet="Herald's Gaiters"})
	
	-- Prep Sets
	sets.idle.Avatar = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			-- rear="Moonshade Earring",
			head="Caller's Horn +2", neck="Caller's Pendant", lear="Loquac. Earring", 
			--ring1="Evoker's Ring", ring2="Sangoma Ring",
			body="Caller's Doublet +2", hands="Serpentes Cuffs", 
			-- back="Summoner's Cape", waist="Fucho-no-Obi", 
			legs="Assiduity Pants +1",feet="Caller's Pgch. +2"}
	sets.idle.Avatar["Carbuncle"] = set_combine(sets.idle.Avatar,{
			-- Asteria Mitts
			hands="Carbuncle Mitts"})
	sets.idle.Avatar["Diabolos"] = set_combine(sets.idle.Avatar,{
				--waist="Diabolos's Rope"
				})
	sets.idle.Avatar["Alexander"] = set_combine(sets.midcast.SummoningMagic)
	
	sets.idle.Avatar.Favor = {head="Caller's Horn +2"}
	sets.idle.Avatar.Melee = {
			--hands="Regimen Mittens",
			--waist="Kuku Stone", legs="Convoker's Spats"
			}
	sets.idle.Avatar.Spirit = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			-- rear="Moonshade Earring",
			head="Caller's Horn +2", neck="Caller's Pendant", lear="Loquac. Earring",
			--body="Hagondes Coat", ring1="Evoker's Ring", ring2="Sangoma Ring",
			hands="Serpentes Cuffs", 
			--back="Tiresias' Cape",waist="Fucho-no-obi",legs="Summoner's Spats", 
			feet="Caller's Pgch +2"}
			
	sets.perp = {}
	sets.perp.Day = {hands="Caller's Bracers +2"}
	sets.perp.Weather = {
			neck="Caller's Pendant", 
			hands="Caller's Bracers +2"}

	-- Precast
	-- Magic
	sets.precast.Fastcast = { ammo="Impatiens",			
			-- neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchantr. Earring +1",
			head="Amalric Coif",
			-- lring="Prolix Ring",
			body="Inyanga Jubbah", hands="Magavan Mitts",
			back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Chelona Boots"}
	
	sets.precast.Cure = set_combine(sets.precast.Fastcast, {main={name="Patriarch Cane", priority=2}, sub={name="Sor's Shield", priority=1},
		 })
	
	-- Pact delay reduction gear
	sets.precast.BloodPactWard = {ammo=Sachet,
			-- head="Summoner's Horn", lear="Caller's Earring"
			-- hands="Summoner's Bracers",
			body="Summoner's Doublet", 
			--legs="Summoner's Spats", feet="Summoner's Pgch."
			}
	sets.precast.BloodPactRage = sets.precast.BloodPactWard
	
	-- JA
	sets.precast.JA['Astral Conduit'] = {}
	sets.precast.JA['Astral Flow'] = {
			--head="Summoner's Horn +2"
			}
	sets.precast.JA['Elemental Siphon'] = set_combine(sets.midcast.SummoningSkill,{
			--back="Conveyance Cape",
			feet="Caller's Pigaches +2"})
	sets.precast.JA['Mana Cede'] = {hands="Caller's Bracers +2"}
	
	-- Midcast
	sets.midcast.Recast = set_combine(sets.idle.PDT,{main="Plenitas Virga", waist="Witful Belt"})
	sets.midcast.ConserveMP = {ammo="Clarus Stone",
			lear="Magnetic Earring", rear="Gifted Earring",
			body="Hedera's Cotehardie", hands="Serpentes Cuffs", lring="", rring="",
			--  feet="Serpentes Sabots"
			waist="Austerity Belt", legs="Assiduity Pants +1",}
	
	-- Midcast
	-- Summoning Magic
	-- Skill Gear
	sets.midcast.SummoningMagic = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			-- lear="Andoaa Earring", rear="Gifted Earring",
			head="Caller's Horn +2", neck="Caller's Pendant", 
			-- body="Anhur Robe", hands="Summoner's Bracers", ring1="Evoker's Ring", rring="Fervor Ring",
			-- back="Conveyance Cape", waist="Cimmerian Sash", 
			legs="Caller's Spats +2", feet="Rubeus Boots"}
	-- BloodPactWard
	sets.midcast.Pet.BloodPactWard = set_combine(sets.midcast.SummoningMagic,{})
			
	sets.midcast.Pet.BloodPactWard.Macc = set_combine(sets.midcast.SummoningMagic,{})
	
	-- BloodPactRage
	-- Physical 
	sets.midcast.Pet.PhysicalBloodPactRage = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			-- neck="Sacrifice Torque", lear="Andoaa Earring", rear="Smn. Earring",
			head="Caller's Horn +2", 
			-- hands="Summoner's Bracers",lring="Evoker's Ring",rring="Fervor Ring",
			body="Call. Doublet +2", 
			--back="Tiresias' Cape",waist="Diabolos's Rope", feet="Summoner's Pgch."
			legs="Caller's Spats +2",}
	-- Magical
	-- 'Nether Blast','Aerial Blast','Searing Light','Diamond Dust','Earthen Fury','Zantetsuken','Tidal Wave','Judgment Bolt','Inferno','Howling Moon','Ruinous Omen','Flaming Crush'
	sets.midcast.Pet.MagicalBloodPactRage = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			-- lear="Andoaa Earring",rear="Smn. Earring",
			head="Caller's Horn +2", neck="Caller's Pendant", 
			-- hands="Summoner's Bracers", lring="Evoker's Ring",rring="Fervor Ring",
			body="Call. Doublet +2", 
			-- waist="Diabolos's Rope", feet="Hagondes Sabots"
			legs="Caller's Spats +2"}
	-- Heavenly Strike','Wind Blade','Holy Mist','Night Terror','Thunderstorm','Geocrush','Meteor Strike','Grand Fall','Lunar Bay','Thunderspark'		
	sets.midcast.Pet.MagicalBloodPactRage.TP = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			-- lear="Andoaa Earring", rear="Smn. Earring",
			head="Caller's Horn +2", neck="Caller's Pendant", 
			-- hands="Summoner's Bracers", lring="Evoker's Ring", rring="Fervor Ring",
			body="Call. Doublet +2", 
			-- waist="Diabolos's Rope", feet="Hagondes Sabots"
			legs="Caller's Spats +2"}
	--	Additional Effect BPs
	sets.midcast.Pet.MagicalBloodPactRage.Macc ={main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			--head="Bokwus Circlet",
			neck="Caller's Pendant",
			-- hands="Summoner's Bracers",lring="Evoker's Ring",rring="Fervor Ring",
			body="Call. Doublet +2",
			--back="Tiresias' Cape", waist="Diabolos's Rope", feet="Hagondes Sabots"
			legs="Caller's Spats +2"}
	-- Avatar Nukes 
	sets.midcast.Pet.MagicalBloodPactRage.MAB = {main={name="Patriarch Cane", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo=Sachet,
			-- head="Bokwus Circlet", 
			neck="Caller's Pendant",
			-- hands="Summoner's Bracers", lring="Evoker's Ring", rring="Fervor Ring",
			body="Call. Doublet +2", 
			-- back="Tiresias' Cape", waist="Diabolos's Rope", feet="Hagondes Sabots",
			legs="Caller's Spats +2"}
	
	sets.midcast.Pet.Spirit = set_combine(sets.midcast.Pet.BloodPactRage, {
			legs="Summoner's Spats"})
			
	--Healing Magic
	sets.midcast.Cure = {main={name="Arka IV", priority=2}, sub={name="", priority=1},
			neck="Phalaina Locket",
			-- lring="Stikini Ring", rring="Stikini Ring",
			hands="Inyanga Dastanas", lring="Ephedra Ring", rring="Sirona's Ring",
			back="Tempered Cape +1", waist="Austerity Belt", feet="Rubeus Boots"}
	sets.midcast.EnmityCure = set_combine(sets.midcast.Cure, {})
	
	sets.midcast.Curaga = {main="Arka IV", 
			head="", neck="Colossus's Torque", lear="", rear="",
			body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
			back="", waist="Cascade Belt", legs="", feet="Rubeus Boots"}
	sets.midcast.EnmityCuraga = set_combine(sets.midcast.Curaga, {})

	sets.midcast.NaSpells = set_combine(sets.midcast.Recast)
	sets.midcast.Erase = set_combine(sets.midcast.NaSpells)

	sets.midcast.Cursna = set_combine(sets.midcast.Recast, {
			lring="Ephedra Ring", rring="Sirona's Ring"})
	
	sets.midcast.Esuna = set_combine(sets.midcast.Recast)
	sets.midcast.Sacrifice = set_combine(sets.midcast.Recast)

	-- Enhancing
	sets.midcast.Regen = set_combine(sets.midcast.ConserveMP,{
			head="Inyanga Tiara"})
	sets.midcast.BarElement = {}
	sets.midcast.BarStatus = {}
	sets.midcast.Phalanx = set_combine(sets.Boost)
	sets.midcast.Hastespell = {--ammo="Impatiens", 
			waist="Witful Belt"}
	sets.midcast.Stoneskin = {--waist="Siegal Sash"
			}
	sets.midcast.Aquaveil = {
			head="Amalric Coif",
			--waist="Empahatikos Rope", legs="Shedir Seraweels"
			}
	sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
	sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

	--Divine Magic
	sets.midcast.Repose = set_combine(sets.midcast.Recast)
	sets.midcast.Flash = set_combine(sets.midcast.Macc)
	sets.midcast.Banish = set_combine(sets.midcast.Macc)
	sets.midcast.Holy = set_combine(sets.midcast.Banish)

	-- Enfeebling
	-- Potency
	sets.midcast.Enfeebling = set_combine(sets.idle.PDT, {main={name="Eminent Staff", priority=2}, sub={name="", priority=1},
			-- neck="Eddy Necklace", 
			head="Amalric Coif", lear="Lifestorm Earring", rear="Psystorm Earring",
			--  lring="Stikini Ring", rring="Stikini Ring",
			body="Inyanga Jubbah", hands="Inyanga Dastanas",
			back="Ogapepo Cape", waist="Demonry Sash", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"})
	sets.midcast.Macc = set_combine(sets.idle.PDT, {main={name="Eminent Staff", priority=2}, sub={name="", priority=1},
			-- neck="Eddy Necklace", 
			head="Amalric Coif", lear="Lifestorm Earring", rear="Psystorm Earring",
			--  lring="Stikini Ring", rring="Stikini Ring",
			body="Inyanga Jubbah", hands="Inyanga Dastanas",
			back="Ogapepo Cape", waist="Demonry Sash", legs="Inyanga Shalwar", feet="Inyanga Crackows +1"})

	sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{})

	-- Dark Magic
	sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {})
	sets.midcast.Drain = set_combine(sets.midcast.Macc, {})
	sets.midcast.Aspir = set_combine(sets.midcast.Macc, {})
	
	-- Elemental Magic
	sets.midcast.Nuke = set_combine(sets.midcast.Banish)
	sets.midcast.Dot = {}

	-- Melee Sets	
	sets.TP = set_combine(sets.idle.PDT, {waist="Witful Belt"})
	
	sets.precast.WS = set_combine(sets.TP, {})
	
	-- MP Gear
	sets.precast.WS['Myrkr'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {})

end