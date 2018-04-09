-- WHM Gearsets
--
--
--
--


if player.name == 'Mitsura' then
		-- includes
		include('include/utility.lua')
		include('include/mappings.lua')
		include('include/equipment.lua')
		-- include('../include/autoexec.lua')
			
		-- sets Macros off = 0  on = 1
		automacroset = 0
		if automacroset == 1 then
			if player.sub_job == 'rdm' then
				set_macro_page(4,1)
			elseif player.sub_job =='sch' then
				set_macro_page(4,2)
			elseif player.sub_job == 'smn' then
				set_macro_page(4,3)
			elseif player.sub_job =='blm' then 
				set_macro_page(4,4)
			end
		else
			set_macro_page(4,1)
		end
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main="Earth Staff", sub="Pax Grip", ammo="Incantor Stone",
				head="Nahtirah Hat", neck="Twilight Torque", lear="Roundel Earring", rear="Novia Earring",
                body="Gendewitha Bliaut", hands="Gendewitha Gages", lring=Aug.Darkring1.Carrisa, rring="Mediator's Ring",
                back="Umbra Cape", waist="", legs="Gendewitha Spats", feet="Gendewitha Galoshes"}
		sets.idle.MDT = {
				head="Gendewitha Caubeen", neck="Twilight Torque", lear="Roundel Earring", rear="Orison Earring",
                body="Gendewitha Bliaut", hands="Gendewitha Gages", lring=Aug.Darkring1.Carrisa, rring="Mediator's Ring",
                back="Umbra Cape", waist="",  legs="Gendewitha Spats", feet="Gendewitha Galoshes"}			
		sets.Resting = set_combine(sets.idle.PDT, {main="Chatoyant Staff", ammo="Clarus Stone",
				head="Nefer Khat", neck="Eidolon Pendant", lear="Novia Earring", rear="Antivenom Earring",
                body="Heka's Kalasiris", hands="Serpentes Cuffs", lring="", rring="Angha Ring",
                back="Felicitas Cape", waist="Austerity Belt", legs="Nares Trews", feet="Chelona Boots"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				head="Nahtirah Hat", lear="Roundel Earring", rear="Novia Earring",
                body="Gendewitha Bliaut", hands="Gendewitha Gages", lring="Sangoma Ring", rring="Mediator's Ring",
                legs="Gendewitha Spats", feet="Herald's Gaiters"})

		sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Herald's Gaiters"})
		-- Precast
		-- Magic
		sets.precast.Fastcast = {ammo="Impatiens", sub="Vivid Strap",
				head="Nahtirah Hat", neck="Orison Locket", lear="Loquac. Earring", rear="Orison Earring",
                body="Anhur Robe", hands="Repartie Gloves", lring="Prolix Ring", rring="",
                back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Chelona Boots"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
				head="", neck="Aceso's Choker", lear="", rear="",
                body="Heka's Kalairis", hands="", lring="", rring="",
                back="Pahtli Cape", waist="", legs="Orsn. Pantaln. +2", feet="Cure Clogs"})
		-- JA
		sets.precast.JA = {}
		sets.precast.JA['Divine Caress'] = {head="Orison Cap +2", hands="Orison Mitts +2", back="Mending Cape"}
		sets.precast.JA['Benediction'] = {body="Cleric's Briault +2"}
		
		-- Midcast
		sets.midcast = {}
		sets.midcast.Recast = set_combine(sets.idle.PDT,{ main="Plenitas Virga",
				head="Nahtirah hat", neck="", lear="", rear="",
                body="Hedera Cotehardie", hands="Bokwus Gloves", lring="", rring="",
                back="Swith Cape", waist="Witful Belt", legs="", feet="Gende. Galoshes"})
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				head="", neck="", lear="", rear="Gifted Earring",
                body="Hedera's Cotehardie", hands="Serpentes Cuffs", lring="", rring="",
                back="", waist="Austerity Belt", legs="Nares Trews", feet="Serpentes Sabots"}

		--Healing Magic
		sets.midcast.Cure = {main="Arka IV", sub="Curatio Grip", 
				head="Orison Cap +2", neck="Colossus's Torque", lear="Roundel Earring", rear="Healing Earring",
                body="Orison Bliaud +2", hands="Bokwus Gloves", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Tempered Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Rubeus Boots"}
		sets.midcast.EnmityCure = set_combine(sets.midcast.Cure, {main="Arka IV", 
				head="Orison Cap +2", neck="Colossus's Torque", lear="Roundel Earring", rear="Healing Earring",
                body="Orison Bliaud +2", hands="Bokwus Gloves", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Tempered Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Rubeus Boots"})

		sets.midcast.Curaga = {main="Arka IV", sub="Pax Grip",
				head="Orison Cap +2", neck="Colossus's Torque", lear="Novia Earring", rear="Healing Earring",
                body="Gendewitha Bliaut", hands="Bokwus Gloves", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Refraction Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Rubeus Boots"}
		sets.midcast.EnmityCuraga = set_combine(sets.midcast.Curaga, {})

		sets.midcast.Cura = {}

		sets.midcast.NaSpells = set_combine(sets.midcast.Recast, {ammo="Incantor Stone",
				head="Nahtirah Hat", neck="Orison Locket", lear="Loquac. Earring", rear="",
                body="Hedera Cotehardie", hands="", lring="Prolix Ring", rring="",
                back="", waist="Witful Belt", legs="", feet=""})
		sets.midcast.Erase = set_combine(sets.midcast.NaSpells)

		sets.midcast.Cursna = set_combine(sets.midcast.Recast, {
				head="", neck="Malison Medallion", lear="Loquac. Earring", rear="",
                body="Orison Bliaud +2", hands="", lring="Prolix Ring", rring="Haoma's Ring",
                back="Mending Cape", waist="Witful Belt", legs="Orsn. Pantaln. +2", feet="Gende. Galoshes"})
				
		sets.midcast.Esuna = set_combine(sets.midcast.Recast)
		sets.midcast.Sacrifice = set_combine(sets.midcast.Recast)

		-- Enhancing
		sets.midcast.Regen = set_combine(sets.midcast.ConserveMP,{
				head="", neck="", lear="", rear="",
                body="Cleric's Briault", hands="Orison Mitts +2", lring="", rring="",
                back="", waist="", legs="", feet=""})
		sets.midcast.BarElement = {main="Beneficus",
				head="Orison Cap +2", neck="Colossus's Torque", lear="", rear="",
                body="Orison Bliaut +2", hands="Orison Mitts +2", lring="", rring="",
                back="Merciful Cape", waist="Cascade Belt", legs="Orsn. Pantaln. +2", feet="Orsn. Duckbills +2"}
		sets.midcast.BarStatus = {main="Beneficus",
				head="", neck="Colossus's Torque", lear="", rear="",
                body="Anhur Robe", hands="Ayao's Gages", lring="", rring="",
                back="Merciful Cape", waist="Cascade Belt", legs="Clr. Pantaln. +2", feet="Orsn. Duckbills +2"}
		sets.midcast.Boost = {main="Beneficus", sub="Fulcio Grip",
				head="", neck="Colossus's Torque", lear="", rear="",
                body="Anhur Robe", hands="Ayao's Gages", lring="", rring="",
                back="Merciful Cape", waist="Cascade Belt", legs="Clr. Pantaln. +2", feet="Orsn. Duckbills +2"}
		sets.midcast.Phalanx = set_combine(sets.Boost)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {neck="Stone Gorget", rear="Earthcry Earring", hands="Carapacho Cuffs",waist="Siegal Sash", legs="Haven Hose"}
		sets.midcast.Aquaveil = {waist="Empahatikos Rope", legs="Shedir Seraweels"}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		--Divine Magic
		sets.midcast.Repose = set_combine(sets.midcast.Recast)
		sets.midcast.Flash = set_combine(sets.midcast.Macc)
		sets.midcast.Banish = {main="Eminent Staff",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Hecate's Earring", rear="Novio Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Searing Cape", waist="", legs="Gendewitha Spats", feet="Gendewitha Galoshes"}
		sets.midcast.Holy = set_combine(sets.midcast.Banish)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main="Eminent Staff", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Sangoma Ring", rring="Mediator's Ring",
                back="Oneiros Cape", waist="Demonry Sash", legs="Bokwus Slops", feet="Bokwus Boots"}
		sets.midcast.Macc = {main="Eminent Staff", sub="Mephitis Grip", ammo="Kalboron Stone",
				head="Nahtirah Hat", neck="Eddy Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Bokwus Robe", hands="Yaoyotl Gloves", lring="Sangoma Ring", rring="Mediator's Ring",
                back="Oneiros Cape", waist="Demonry Sash", legs="Bokwus Slops", feet="Bokwus Boots"}

		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{})

		-- Dark Magic
		sets.midcast.DarkMagic = set_combine(sets.midcast.Macc, {})
		sets.midcast.Drain = set_combine(sets.midcast.Macc, {})
		sets.midcast.Aspir = set_combine(sets.midcast.Macc, {})
		
		-- Elemental Magic
		sets.midcast.Nuke = set_combine(sets.midcast.Banish)
		sets.midcast.Dot = {}

		-- Melee Sets
		sets.TP = {}
		sets.precast.WS = set_combine(sets.TP, {})
		sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {})
end