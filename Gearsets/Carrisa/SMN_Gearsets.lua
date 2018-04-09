-- SMN Gearsets
-- Created: 7/25/2014
-- Last Updated: 04/14/2016
-- To Do:
--
--
--

if player.name == 'Carrisa' then
		-- includes
		include('include/utility.lua')
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
			
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main="Terra's Staff", sub="Achaq Grip",
				head="Hagondes Hat", neck="Twilight Torque", lear="", rear="Ethereal Earring",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Umbra Cape", waist="Mujin Obi", legs="Hagondes Pants", feet="Hagondes Sabots"}
		sets.idle.MDT = {
				head="Hagondes Hat", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1, rring="Defending Ring",
                back="", waist="",  legs="Hagondes Pants", feet="Hagondes Sabots"}			
		sets.Resting = set_combine(sets.idle.PDT, {main="Boonwell Staff", sub="Achaq Grip", ammo="Clarus Stone",
				head="Nefer Khat", neck="Eidolon Pendant", lear="Moonshade Earring", rear="Antivenom Earring",
                body="Heka's Kalasiris", hands="Serpentes Cuffs", lring="Evoker's Ring", rring="Angha Ring",
                back="Felicitas Cape +1", waist="Austerity Belt", legs="Nares Trews", feet="Chelona Boots"})
		sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Herald's Gaiters"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				main="Bolelabunga", sub="Genbu's Shield", ammo="Eminent Sachet", head="Convoker's Horn", lear="Moonshade Earring", rear="Ethereal Earring",
                body="Hagondes Coat", hands="Serpentes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Defending Ring", back="Umbra Cape", waist="Mujin Obi",
				legs="Nares Trews", feet="Herald's Gaiters"})
		sets.lockstyle = {}
				
	
		-- Blood Pacts 
		-- Precast
		-- Pact delay reduction gear
		sets.precast.BP = {ammo="Eminent Sachet",
			head="Convoker's Horn",
			body="Glyphic Doublet", hands="Glyphic Bracers",
			legs="Glyphic Spats", feet="Glyphic Pigaches"}
		
		-- Magic
		sets.precast.Fastcast = {main="Eminent Staff", ammo="Impatiens", sub="Vivid Strap",
				head="Haruspex Hat +1", neck="Jeweled Collar", lear="Loquac. Earring", rear="Enchanter Earring +1",
				body="Anhur Robe", hands="Repartie Gloves", lring="Prolix Ring", rring="Weatherspoon Ring",
                back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Chelona Boots"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
				head="", neck="", lear="", rear="",
                body="Heka's Kalasiris", hands="", lring="", rring="",
                back="Pahtli Cape", waist="Acerbic Sash +1", legs="Artsieq Hose", feet=""})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast, {waist="Siegel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing, {head="Umuthi Hat"})
	
		-- JA
		sets.precast.JA['Astral Conduit'] = {}
		sets.precast.JA['Astral Flow'] = {head="Summoner's Horn +2"}
		
		sets.precast.JA['Elemental Siphon'] = set_combine(sets.midcast.SummoningSkill,{ 
				back="Conveyance Cape", feet="Caller's Pigaches +2" })
		
		sets.precast.JA['Mana Cede'] = {hands="Caller's Bracers +2"}
		
		-- Midcast
		-- Summoning Magic Skill Gear
		sets.midcast.SummoningMagic = {main="Soulscourge",sub="Vox Grip", ammo="Eminent Sachet",
				head="Caller's Horn +2",neck="Caller's Pendant", lear="Andoaa Earring", rear="Summoning Earring",
				body="Anhur Robe",hands="Glyphic Bracers",ring1="Evoker's Ring",rring="Fervor Ring",
				back="Conveyance Cape",waist="Cimmerian Sash",legs="Caller's Spats +2",feet="Rubeus Boots"}
		-- BloodPactWard
		sets.midcast.Pet.BloodPactWard = set_combine(sets.midcast.SummoningMagic,{})
				
		sets.midcast.Pet.BloodPactWard.Macc = set_combine(sets.midcast.SummoningMagic,{})
		
		-- BloodPactRage
		-- Physical 
		sets.midcast.Pet.PhysicalBloodPactRage = {main="Soulscourge", sub="Vox Grip", ammo="Eminent Sachet",
				head="Glyphic Horn",neck="Sacrifice Torque",lear="Andoaa Earring", rear="Smn. Earring",
				body="Convoker's Doublet",hands="Glyphic Bracers",lring="Evoker's Ring",rring="Fervor Ring",
				back="Tiresias' Cape",waist="Diabolos's Rope",legs="Caller's Spats +2",feet="Convoker's Pgch."}
		-- Magical
		-- 'Nether Blast','Aerial Blast','Searing Light','Diamond Dust','Earthen Fury','Zantetsuken','Tidal Wave','Judgment Bolt','Inferno','Howling Moon','Ruinous Omen','Flaming Crush'
		sets.midcast.Pet.MagicalBloodPactRage = {main="Balsam Staff", sub="Vox Grip", ammo="Eminent Sachet",
				head="Glyphic Horn",neck="Caller's Pendant", lear="Andoaa Earring",rear="Smn. Earring",
				body="Convoker's Doublet",hands="Glyphic Bracers",lring="Evoker's Ring",rring="Fervor Ring",
				waist="Diabolos's Rope",legs="Glyphic Spats",feet="Hagondes Sabots"}
		
		-- Flaming Crush - Not Added to Smn.lua
		sets.midcast.Pet.FC = set_combine(sets.midcast.Pet.MagicalBloodPactRage,{
				rring="Fervor Ring"})
		
		-- Heavenly Strike','Wind Blade','Holy Mist','Night Terror','Thunderstorm','Geocrush','Meteor Strike','Grand Fall','Lunar Bay','Thunderspark'		
		sets.midcast.Pet.MagicalBloodPactRage.TP = {main="Balsam Staff", sub="Vox Grip", ammo="Eminent Sachet",
				head="Glyphic Horn",neck="Caller's Pendant", lear="Andoaa Earring",rear="Smn. Earring",
				body="Convoker's Doublet",hands="Glyphic Bracers",lring="Evoker's Ring",rring="Fervor Ring",
				waist="Diabolos's Rope",legs="Glyphic Spats",feet="Hagondes Sabots"}
		--	Additional Effect BPs
		sets.midcast.Pet.MagicalBloodPactRage.Macc = {main="Balsam Staff", sub="Vox Grip", ammo="Eminent Sachet",
				head="Bokwus Circlet",neck="Caller's Pendant",
				body="Convoker's Doublet",hands="Glyphic Bracers",lring="Evoker's Ring",rring="Fervor Ring",
				back="Tiresias' Cape",waist="Diabolos's Rope",legs="Glyphic Spats",feet="Hagondes Sabots"}
		-- Avatar Nukes 
		sets.midcast.Pet.MagicalBloodPactRage.MAB = {main="Balsam Staff", sub="Vox Grip", ammo="Eminent Sachet",
				head="Glyphic Horn",neck="Caller's Pendant",
				body="Convoker's Doublet",hands="Glyphic Bracers",lring="Evoker's Ring",rring="Fervor Ring",
				back="Tiresias' Cape",waist="Diabolos's Rope",legs="Glyphic Spats",feet="Hagondes Sabots"}
		
		sets.midcast.Pet.Spirit = set_combine(sets.midcast.Pet.BloodPactRage, {legs="Glyphic Spats"})		
		
		-- Magic 
		sets.midcast.Recast = set_combine(sets.idle.PDT,{main="Plenitas Virga", waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				head="", neck="", lear="Magnetic Earring", rear="Gifted Earring",
                body="Hedera's Cotehardie", hands="Serpentes Cuffs", lring="", rring="",
                back="", waist="Austerity Belt", legs="Nares Trews", feet="Serpentes Sabots"}

		--Healing Magic
		sets.midcast.Cure = {main="Tamaxchi", sub="Sors Shield", 
				head="Hyksos Khat", neck="Colossus's Torque", lear="Roundel Earring", rear="Healing Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Tempered Cape +1", waist="Cascade Belt", legs="Gyve Trousers", feet="Rubeus Boots"}
		sets.midcast.EnmityCure = set_combine(sets.midcast.Cure, {})
		
		sets.midcast.Curaga = {main="Tamaxchi", sub="Sors Shield",
				head="", neck="Colossus's Torque", lear="", rear="",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Tempered Cape +1", waist="Cascade Belt", legs="Gyve Trousers", feet="Rubeus Boots"}
		sets.midcast.EnmityCuraga = set_combine(sets.midcast.Curaga, {})

		sets.midcast.NaSpells = set_combine(sets.midcast.Recast)
		sets.midcast.Erase = set_combine(sets.midcast.NaSpells)

		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {})
		
		sets.midcast.Esuna = set_combine(sets.midcast.Recast)
		sets.midcast.Sacrifice = set_combine(sets.midcast.Recast)

		-- Enhancing
		sets.midcast.Regen = set_combine(sets.midcast.ConserveMP,{})
		sets.midcast.BarElement = {}
		sets.midcast.BarStatus = {}
		sets.midcast.Phalanx = set_combine(sets.Boost)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {head="Umuthi Hat", neck="Stone Gorget", rear="Earthcry Earring", hands="Carapacho Cuffs",waist="Siegal Sash", legs="Haven Hose"}
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
		sets.midcast.Enfeebling = {main="Balsam Staff", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Witching Robe", hands="Lurid Mitts", lring="Perception ring", rring="Sangoma ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Uk'uxkaj Boots"}
		sets.midcast.Macc = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Witching Robe", hands="Lurid Mitts", lring="Perception ring", rring="Sangoma Ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Bokwus Boots"}

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
		sets.perp.Weather = {neck="Caller's Pendant",hands="Caller's Bracers +2"}
		
		--Avatar
		sets.idle.Avatar = {main="Patriarch Cane",sub="Genbu's Shield",ammo="Eminent Sachet",
				head="Glyphic Horn",neck="Caller's Pendant",lear="Loquac. Earring",rear="Gifted Earring",
				body="Glyphic Doublet",hands="Serpentes Cuffs",ring1="Evoker's Ring",ring2="Sangoma Ring",
				back="Pahtli Cape",waist="Mujin Obi",legs="Nares Trews",feet="Convoker's Pigaches"}
		sets.idle.Avatar["Carbuncle"] = set_combine(sets.idle.Avatar,{hands="Carbuncle Mitts"})
		sets.idle.Avatar["Diabolos"] = set_combine(sets.idle.Avatar,{waist="Diabolos's Rope"})
		sets.idle.Avatar["Alexander"] = set_combine(sets.midcast.SummoningMagic)
		
		-- Avator Favor - needs 450 skill minimum
		sets.idle.Avatar.Favor = {head="Caller's Horn +2"}
		
		-- Avatar TP
		sets.idle.Avatar.Melee = {hands="Regimen Mittens",waist="Moepapa Stone",legs="Convoker's Spats"}
		
		-- Avatar DT - needs to be added to smn.lua
		sets.idle.Avatar.DT = set_combine(sets.idle.Avatar,{
				head="Selenian Cap", neck="Caller's Pendant", lear="Handler's Earring +1", rear="Handler's Earring",
				body="Shomonjijoe +1", hands="Telchine Gloves", lring="Evoker's Ring", rring="Defending Ring",
				back="Conveyance Cape", waist="Isa Belt", legs="Telchine Braconi", feet="Beckoner's Pigaches"})
		
		-- Spirit
		sets.idle.Avatar.Spirit = {main="Bolelabunga",sub="Genbu's Shield",ammo="Eminent Sachet",
				head="Caller's Horn +2",neck="Caller's Pendant",lear="Loquacious Earring",rear="Moonshade Earring",
				body="Hagondes Coat",hands="Serpentes Cuffs",ring1="Evoker's Ring",ring2="Sangoma Ring",
				back="Tiresias' Cape",waist="Mujin Obi",legs="Glyphic Spats",feet="Caller's Pgch +2"}
				
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {waist="Witful Belt"})
		
		-- Weaponskills
		sets.precast.WS = set_combine(sets.TP, {})
		
		-- MP Gear
		sets.precast.WS['Myrkr'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS['Garland of Bliss'] = set_combine(sets.precast.WS, {})


end