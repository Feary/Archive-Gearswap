-- Geo Gearsets
-- Created: 4/11/2014
-- Last Updated:
-- To Do List
--
--
--
--

if player.Name == 'Carrisa' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		include('include/utility.lua')

		-- sets Macros off = 0  on = 1
		automacroset = 0
		if automacroset == 1 then
			if player.sub_job == 'RDM' then
				set_macro_page(18,1)
			elseif player.sub_job =='BLM' then
				set_macro_page(18,1)
			elseif player.sub_job == 'WHM' then
				set_macro_page(18,1)
			elseif player.sub_job == 'SCH' then
				set_macro_page(18,1)
			elseif player.sub_job =='DNC' then 
				set_macro_page(18,1)
			elseif player.sub_job =='DRK' then 
				set_macro_page(18,1)
			elseif player.sub_job =='NIN' then 
				set_macro_page(18,1)
			end
		else
			set_macro_page(18,1)
		end

		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main="Terra's Staff", sub="Umbra Strap", range="Dunna", 
				head="Hagondes Hat", neck="Twilight Torque", rear="Ethereal Earring",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Umbra Cape", waist="Aswang Sash", legs="Hagondes Pants", feet="Hagondes Sabots"}
		sets.idle.MDT = {
				head="Hagondes Hat", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="", waist="",  legs="Hagondes Pants", feet="Hagondes Sabots"}			
		sets.Resting = set_combine(sets.idle.PDT, {main="Boonwell Staff", sub="Umbra Strap", ammo="Clarus Stone",
				head="Nefer Khat", neck="Eidolon Pendant", lear="Moonshade Earring", rear="Antivenom Earring",
                body="Heka's Kalasiris", hands="Serpentes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Angha Ring",
                back="Felicitas Cape +1", waist="Austerity Belt", legs="Nares Trews", feet="Chelona Boots"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{main="Bolelabunga", sub="Genbu's Shield", range="Dunna", 
				head="Wivre Hairpin", neck="Twilight Torque", lear="Moonshade Earring", rear="Ethereal Earring",
				body="Geomancy Tunic", hands="Bagua Mitaines", lring=Aug.Darkring1.Carrisa, rring="Defending Ring", back="Umbra Cape", 
				waist="Isa Belt", legs="Nares Trews", feet="Geomancy Sandals"})
		sets.idle.Standard.Pet = set_combine(sets.idle.PDT,{
				head="Selenian Cap",lear="Merman's Earring", rear="Moonshade Earring",
				hands="Geomancy Mitaines",
				feet="Bagua Sandals"})
						
		sets.misc.Town = set_combine(sets.idle.PDT, {body="Geomancy Tunic", feet="Geomancy Sandals"})
		-- JA
		sets.precast.JA["Bolster"] = {body="Bagua Tunic"}
		sets.precast.JA["Widened Compass"] = {}
		
		sets.precast.JA["Life Cycle"] = {body="Geomancy Tunic"}
		sets.precast.JA["Full Circle"] = {head="Azimuth Hood", hands="Bagua Mitianes"}
		sets.precast.JA["Mending Halation"] = {legs="Bagua Pants"}
		sets.precast.JA["Radial Arcana"] = {feet="Bagua Sandals"}
		sets.precast.JA["Cardinal Chant"] = {head="Geomancy Galero"}
		sets.precast.JA["Collimated Fervor"] = {head="Geomancy Galero"}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {ammo="Impatiens",
				head="Haruspex Hat +1", neck="Jeweled Collar", lear="Loquac. Earring", rear="Enchanter Earring +1",
                body="Anhur Robe", hands="Repartie Gloves", lring="Weatherspoon Ring", rring="Prolix Ring",
                back="Lifestream Cape", waist="Witful Belt", legs="Geomancy Pants", feet="Chelona Boots"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
				head="", neck="", lear="", rear="",
                body="Heka's Kalasiris", hands="", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Pahtli Cape", waist=" Acerbic Sash +1", legs="", feet=""})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{waist="Siegel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{head="Umuthi Hat"})
		sets.precast.Elemental = set_combine(sets.precast.Fastcast,{hands="Bagua Mitaines"})
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {
				head="Nares Cap", neck="", lear="Magnetic Earring", rear="Gifted Earring",
                body="Hedera's Cotehardie", hands="Serpentes Cuffs", lring="", rring="",
				waist="Sekhmet Corset", feet="Umbani Boots"}
		-- Geomancy
		sets.midcast.Geomancy = set_combine(sets.midcast.ConserveMP,{range="Dunna",
				head="Azimuth Hood", body="Bagua Tunic", hands="Geomancy Mitaines",
				back="Lifestream Cape",legs="Bagua Pants", feet="Azimuth Gaiters"})
		
		-- Elemental
		-- High Resist
		sets.midcast.Elemental = {main="Marin Staff +1", sub="Niobid Strap", ammo="Dosis Tathlum",
				head="Helios Band", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Azimuth Coat", hands="Lurid Mitts", lring="Strendu Ring", rring="Weatherspoon Ring",
                back="Seshaw Cape", waist="Aswang Sash", legs="Gyve Trousers", feet="Manabyss Pigaches"}
		-- Damage
		sets.midcast.Nuke = {main="Marin Staff +1", sub="Niobid Strap", ammo="Dosis Tathlum",
				head="Helios Band", neck="Saevus Necklace +1", lear="Barkarole Earring", rear="Friomisi Earring",
                body="Witching Robe", hands="Helios Gloves", lring="Strendu Ring", rring="Icesoul ring",
                back="Seshaw Cape", waist="Aswang Sash", legs="Gyve Trousers", feet="Manabyss Pigaches"}		
		
		sets.midcast.Nuke.Acc = {main={name="Atinian Staff", priority=2}, sub={name="Zuuxowu Grip", priority=1},}		
		
		sets.midcast.Nuke.MB = {main={name="Atinian Staff", priority=2}, sub={name="Zuuxowu Grip", priority=1},}		
		
		--Healing Magic
		sets.midcast.Cure = {main="Tamaxchi", sub="Sors Shield",
				head="Hyksos Khat", neck="Colossus's Torque", lear="Beatific Earring", rear="Healing Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Tempered Cape +1", waist="Bishop's Sash", legs="Gyve Trousers", feet="Rubeus Boots"}
		
		sets.midcast.Curaga = {main="Arka IV", 
				head="", neck="Colossus's Torque", lear="Novia Earring", rear="Lifestorm Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Tempered Cape +1", waist="Cascade Belt", legs="Gyve Trousers", feet="Rubeus Boots"}
	
		-- Enhancing 
		sets.midcast.Enhancing = {main="Marin Staff +1", sub="Fulcio Grip", head="Befouled Crown", neck="Colossus's Torque", body="Anhur Robe", hands="Ayao's Gloves",
				legs="Portant Pants",feet="Rubeus Boots",waist="Cascade Belt",back="Merciful Cape"}
		sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {head="Umuthi Hat", neck="Stone Gorget", rear="Earthcry Earring", hands="Carapacho Cuffs",waist="Siegal Sash", legs="Haven Hose"}
		sets.midcast.Aquaveil = {}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Azimuth Coat", hands="Lurid Mitts", lring="Perception ring", rring="Sangoma ring",
                back="Lifestream Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Uk'uxkaj Boots"}
		sets.midcast.Macc = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Azimuth Coat", hands="Lurid Mitts", lring="Perception ring", rring="Sangoma ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Bokwus Boots"}
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		sets.midcast.Paralyze = set_combine(sets.midcast.Macc)
		sets.midcast.Blind = set_combine(sets.midcast.Macc)
		sets.midcast.Bio = set_combine(sets.midcast.Macc)
		sets.midcast.Slow = set_combine(sets.midcast.Macc)
		
		
		-- Dark Magic
		sets.midcast.Dark = set_combine(sets.midcast.Macc, {
				head="Bagua Galero", neck="Aesir Torque", body="Geomancy Tunic", 
				back="Merciful Cape", waist="Fucho-no-Obi", legs="Azimuth Tights"})
		sets.midcast.Aspir = set_combine(sets.midcast.Dark,{waist="Fucho-no-Obi"})
		sets.midcast.Stun = set_combine(sets.midcast.Macc)
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {waist="Witful Belt",})
		
		sets.TP.Acc = set_combine(sets.TP, {waist="Witful Belt",})
		
		-- Weaponskills
		sets.precast.WS = set_combine(sets.TP, {})
		
		sets.precast.WS.Acc = {}
		
		-- Club
		sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS.Acc['Hexa Strike'] = {}
		
		sets.precast.WS['Realmrazer'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS.Acc['Realmrazer'] = set_combine(sets.precast.WS, {}) 
		
		sets.precast.WS['Exudation'] = set_combine(sets.precast.WS, {})
				
		sets.precast.WS.Acc['Exudation'] = set_combine(sets.precast.WS, {})
				
		-- Staff 
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {})
		
		sets.precast.WS['Cataclysm'] = set_combine(sets.precast.WS, {})
		
		-- Misc
		sets.misc.Waltz = set_combine(sets.idle.PDT,{})
		sets.misc.Steps = set_combine(sets.TP.Acc,{})
		sets.misc.flourish = set_combine(sets.midcast.Macc,{ammo="Empty"})
end