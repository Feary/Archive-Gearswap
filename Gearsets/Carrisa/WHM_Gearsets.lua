-- WHM Gearsets
-- Created On 4/11/2104
-- Last Updated: 
--
--

if player.name == 'Carrisa' then
		-- includes
		include('include/utility.lua')
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
			
		-- sets Macros off = 0  on = 1
		automacroset = 0
		if automacroset == 1 then
			if player.sub_job == 'RDM' then
				set_macro_page(4,1)
			elseif player.sub_job == 'WHM' then
				set_macro_page(4,2)
			elseif player.sub_job == 'SCH' then
				set_macro_page(4,3)
			elseif player.sub_job == 'NIN' then 
				set_macro_page(4,4)
			end
		else
			set_macro_page(4,1)
		end
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main={name="Terra's Staff", priority=2}, sub={name="Umbra Strap", priority=1}, ammo="Incantor Stone",
				head="Gendewitha Caubeen", neck="Twilight Torque", lear="Ethereal Earring", rear="Novia Earring",
                body="Gendewitha Bilaut +1", hands="Gendewitha Gages", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Umbra Cape", waist="", legs="Gendewitha Spats", feet="Gendewitha Galoshes"}
		sets.idle.MDT = {
				head="Gendewitha Caubeen", neck="Twilight Torque", lear="Roundel Earring", rear="Orison Earring",
                body="Gendewitha Bilaut +1", hands="Gendewitha Gages", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Umbra Cape", waist="",  legs="Gendewitha Spats", feet="Gendewitha Galoshes"}			
		sets.Resting = set_combine(sets.idle.PDT, {main={name="Boonwell Staff", priority=2}, sub={name="Achaq Grip", priority=1}, ammo="Clarus Stone",
				head="Nefer Khat", neck="Eidolon Pendant", lear="Antivenom Earring", rear="Novia Earring",
                body="Heka's Kalasiris", hands="Serpentes Cuffs", lring="", rring="Angha Ring",
                back="Felicitas Cape +1", waist="Austerity Belt", legs="Nares Trews", feet="Chelona Boots"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{main={"Bolelabunga", priority=2}, sub={"Sors Shield", priority=1},
				head="Wivre Hairpin", lear="Ethereal Earring", rear="Moonshade Earring", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                body="Gende. Bilaut +1", hands="Serpentes Cuffs", waist="Acerbic Sash +1", legs="Nares Trews", feet="Herald's Gaiters"})
		sets.misc.Town = set_combine(sets.idle.PDT, {
				body="Gende. Bilaut +1", feet="Herald's Gaiters"})
		
		-- JA
		sets.precast.JA['Benediction'] = {body="Piety Briault +1"}
		sets.precast.JA['Asylum'] = {}
		
		sets.precast.JA['Divine Caress'] = {head="Ebers Cap +1", hands="Ebers Mitts +1", back="Mending Cape"}
		sets.precast.JA['Devotion'] = {head="Piety Cap"}
		sets.precast.JA['Martyr'] = {hands="Piety Mitts"}
		
		sets.precast.JA['Divine Veil'] = {head="Ebers Cap +1"}
				
		-- Precast
		-- Magic
		sets.precast.Fastcast = {main={name="Arka IV", priority=2}, sub={name="Vivid Strap", priority=1}, ammo="Impatiens",
				head="Haruspex Hat +1", neck="Orison Locket", lear="Loquac. Earring", rear="Enchanter Earring +1",
                body="Anhur Robe", hands="Gendewitha Gages", lring="Prolix Ring", rring="Weatherspoon Ring",
                back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Chelona Boots"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {main={name="Tamaxchi", priority=2}, sub={name="Sors Shield", priority=1}, ammo="Incantor Stone",
				head="Piety Cap +1", neck="Aceso's Choker",
                body="Heka's Kalairis",
                back="Pahtli Cape", waist="Acerbic Sash +1", legs="Ebers Pantaloons +1", feet="Cure Clogs"})
	
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT,{ main="Plenitas Virga",
				head="Nahtirah hat",
                body="Hedera Cotehardie", hands="Bokwus Gloves",
                back="Swith Cape", waist="Witful Belt", feet="Gende. Galoshes"})
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				lear="Gifted Earring",
                body="Hedera's Cotehardie", hands="Serpentes Cuffs",
                back="", waist="Austerity Belt", legs="Nares Trews", feet="Serpentes Sabots"}

		--Healing Magic
		sets.midcast.Cure = {main={name="Tamaxchi", priority=2}, sub={name="Sors Shield", priority=1},
				head="Ebers Cap +1", neck="Colossus's Torque", lear="Roundel Earring", rear="Glorious Earring",
                body="Ebers Briault +1", hands="Theo. Mitts +1", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Tempered Cape +1", waist="Bishop's Sash", legs="Ebers Pantaloons +1", feet="Piety Duckbills +1"}
		sets.midcast.EnmityCure = set_combine(sets.midcast.Cure, 
				{main={name="Tamaxchi", priority=2}, sub={name="Sors Shield", priority=1},
				head="Ebers Cap +1", neck="Colossus's Torque", lear="Roundel Earring", rear="Glorious Earring",
                body="Ebers Briault +1", hands="Theo. Mitts +1", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Mending Cape", waist="Cascade Belt", legs="Ebers Pantaloons +1", feet="Piety Duckbills +1"})

		sets.midcast.Curaga = {main={name="Tamaxchi", priority=2}, sub={name="Sors Shield", priority=1},
				head="Ebers Cap +1", neck="Colossus's Torque", lear="Novia Earring", rear="Glorious Earring",
                body="Heka's Kalasiris", hands="Theo. Mitts +1", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Refraction Cape", waist="Cascade Belt", legs="Ebers Pantaloons +1", feet="Piety Duckbills +1"}
		sets.midcast.EnmityCuraga = set_combine(sets.midcast.Curaga, {})

		sets.midcast.Cura = {}

		sets.midcast.NaSpells = set_combine(sets.midcast.Recast, {ammo="Incantor Stone",
				head="Nahtirah Hat", neck="Orison Locket", lear="Loquac. Earring", rear="",
                body="Hedera Cotehardie", hands="", legs= "Theophany Pantaloons +1", lring="Prolix Ring", rring="",
                back="", waist="Witful Belt", legs="", feet=""})
		sets.midcast.Erase = set_combine(sets.midcast.NaSpells)

		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {
				neck="Malison Medallion", lear="Loquac. Earring",
                body="Ebers Briault +1", hands="", lring="Prolix Ring", rring="Haoma's Ring",
                back="Mending Cape", waist="Witful Belt", legs="Ebers Pantaloons +1", feet="Gende. Galoshes"})
				
		sets.midcast.Esuna = set_combine(sets.midcast.Recast)
		sets.midcast.Sacrifice = set_combine(sets.midcast.Recast)

		-- Enhancing
		sets.midcast.Regen = set_combine(sets.midcast.ConserveMP,{
				main={name="Bolelabunga", priority=2}, sub={name="Sors Shield", priority=1},
                body="Piety Briault +1", hands="Ebers Mitts +1",
				legs="Theophany Pantaloons +1"})
		sets.midcast.BarElement = {main={name="Beneficus", priority=2}, sub={name="Sors Shield", priority=1},
				head="Ebers Cap +1", neck="Colossus's Torque", 
                body="Ebers Briault +1", hands="Ebers Mitts +1", 
                back="Merciful Cape", waist="Olympus Sash", legs="Ebers Pantaloons +1", feet="Ebers Duckbills +1"}
		sets.midcast.BarStatus = {main={name="Beneficus", priority=2}, sub={name="Sors Shield", priority=1},
				head="Befouled Crown", neck="Colossus's Torque", 
                body="Anhur Robe", hands="Ayao's Gages", 
                back="Merciful Cape", waist="Olympus Sash", legs="Piety Pantaloons +1", feet="Ebers Duckbills +1"}
		sets.midcast.Boost = {main={name="Beneficus", priority=2}, sub={name="Sors Shield", priority=1},
				head="Befouled Crown", neck="Colossus's Torque", 
                body="Anhur Robe", hands="Ayao's Gages",
                back="Merciful Cape", waist="Olympus Sash", legs="Piety Pantaloons +1", feet="Ebers Duckbills +1"}
		sets.midcast.Phalanx = set_combine(sets.Boost)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {head="Umuthi Hat", neck="Stone Gorget", rear="Earthcry Earring", hands="Carapacho Cuffs",waist="Siegal Sash", legs="Haven Hose"}
		sets.midcast.Aquaveil = {head="Umuthi Hat", waist="Empahatikos Rope", legs="Shedir Seraweels"}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)
		sets.midcast.Shellra = set_combine(sets.precast.Enhancing,{legs="Piety Pantaloons"})
		sets.midcast.Protectra = set_combine(sets.precast.Enhancing,{feet="Piety Duckbills"})
		sets.midcast.Auspice = set_combine(sets.precast.Enhancing,{feet="Ebers Duckbills"})

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Lurid Mitts", lring="Sangoma Ring", rring="Perception Ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Uk'uxkaj Boots"}
		sets.midcast.Macc = {main="Marin Staff +1", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Sangoma Ring", rring="Perception Ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Bokwus Boots"}

		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{})
		
		--Divine Magic
		sets.midcast.Repose = set_combine(sets.midcast.Recast, sets.midcast.Macc)
		sets.midcast.Flash = set_combine(sets.midcast.Macc)
		sets.midcast.Banish = {main="Eminent Staff",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Hecate's Earring", rear="Novio Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Searing Cape", waist="Bishop's Sash", legs="Gendewitha Spats", feet="Gendewitha Galoshes"}
		sets.midcast.Holy = set_combine(sets.midcast.Banish)

		-- Dark Magic
		sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {})
		sets.midcast.Drain = set_combine(sets.midcast.Macc, {})
		sets.midcast.Aspir = set_combine(sets.midcast.Macc, {})
		
		-- Elemental Magic
		sets.midcast.Nuke = set_combine(sets.midcast.Banish)
		sets.midcast.Dot = {}

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