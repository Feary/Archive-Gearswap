-- BRD Gearsets
--

if player.name == "Carrisa" then
-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		--include('include/autoexec.lua')
		include('include/utility.lua')

		-- sets Macros off = 0  on = 1
		automacroset = 0
		if automacroset == 1 then
			if player.sub_job == 'NIN' then
				set_macro_page(20,1)
			elseif player.sub_job =='WHM' then
				set_macro_page(20,2)
			elseif player.sub_job == 'RDM' then
				set_macro_page(20,3)
			elseif player.sub_job =='SCH' then 
				set_macro_page(20,4)
			elseif player.sub_job =='DNC' then 
				set_macro_page(20,5)
			elseif player.sub_job =='BLM' then 
				set_macro_page(20,6)
			end
		else
			set_macro_page(20,1)
		end
		
		-- Instruments
		default = {range="Pan's Horn"}
		-- Buffs
		ballad = {range="Langeleik"}
		march = {range="Langeleik"}
		minuet = {range="Cornette +2"}
		madrigal = {range="Cantabank's Horn"}
		minne = {range="Syrinx"}
		etude = {range="Langeleik"}
		carol = {range="Crumhorn"}
		mambo  = {range="Vihuela"}
		mazurka = {range="Vihuela"}
		paeon = {range="Langeleik"}
		prelude = {range="Cantabank's Horn"}
		scherzo = {range="Pan's Horn"}
		hymnus = {range="Langeleik"}
		--Debuffs
		elegy = {range="Syrinx"}
		threnody = {range="Piccolo +1"}
		lullaby = {range="Pan's Horn"}
		horde = {range="Nursemaid Harp"}
		finale = {range="Pan's Horn"}
		requiem = {range="Hamelin Flute"}
		virelai = {range="Langeleik"}
		nocturne = {range="Iron Ram Horn"}

		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main="Terra's Staff", 
				sub="Umbra Strap", head="Bihu Roundlet +1", neck="Twilight Torque", lear="Loquac. Earring", rear="Ethereal Earring",
                body="Gendewitha Bilaut +1", hands="Gendewitha Gages", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Umbra Cape", waist="Flume Belt", legs="Gendewitha Spats", feet="Bihu Slippers +1"}
		sets.idle.MDT = {
				head="Nahtirah Hat", neck="Twilight Torque", lear="Loquac. Earring", rear="Musical Earring",
                body="Gendewitha Bilaut +1", hands="Gendewitha Gages", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Engulfer Cape", waist="Flume Belt",  legs="Gendewitha Spats", feet="Gendewitha Galoshes"}			
		sets.Resting = set_combine(sets.idle.PDT, {main="Boonwell Staff",
				head="Nefer Khat", neck="Eidolon Pendant", lear="Moonshade Earring", rear="Antivenom Earring",
                body="Heka's Kalasiris", hands="Serpentes Cuffs", rring="Angha Ring",
                back="Felicitas Cape +1", legs="Nares Trews", feet="Chelona Boots"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{range="Daurdabla",
				head="Wivre Hairpin", lear="Moonshade Earring", rear="Ethereal Earring", body="Gende. Bilaut +1", hands="Serpentes Cuffs", 
				lring=Aug.Darkring1.Carrisa, rring="Defending Ring", legs="Nares Trews", feet="Fili Cothurnes +1"})
		sets.misc.Town = set_combine(sets.idle.PDT, {
				main="Legato Dagger", range="Daurdabla", head="Wivre Hairpin", body="Fili Hongreline +1", hands="Fili Manchettes +1", 
				legs="Fili Rhingrave +1", feet="Fili Cothurnes +1"})
		sets.misc.MinusHP = {
				head="Zenith Crown", neck="Morgana's Choker", 
                body="Dalmatica", hands="Zenith Mitts", 
                waist="Witful Belt", legs="Zenith Slacks", feet="Zenith Pumps"}
		-- JA
		sets.precast.JA["Soul Voice"] = {legs="Bihu Cannions +1"}
		sets.precast.JA["Nightingale"] = {feet="Bihu Slippers +1"}
		sets.precast.JA["Troubadour"] = {body="Bihu Justaucorps +1"}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {
				head="Haruspex Hat +1", neck="Jeweled Collar", lear="Loquac. Earring", rear="Enchanter Earring +1",
                body="Anhur Robe", hands="Leyline Gloves", lring="Weatherspoon Ring", rring="Prolix Ring",
                back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Chelona Boots"}
		sets.precast.Fastcast.Song = set_combine(sets.precast.Fastcast, {main="Felibre's Dague",
				head="Fili Calot +1", neck="Aoidos' Matinee", lear="Loquac. Earring", rear="Aoidos' Earring",
                body="Sheikh Manteel", hands="Schellenband", lring="Minstrel's Ring", rring="Prolix Ring",
                back="Swith Cape", waist="Witful Belt", legs="Gendewitha Spats", feet="Bihu Slippers +1"})
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris",
                back="Pahtli Cape", waist="Acerbic Sash +1", legs="Artsieq Hose"})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{waist="Siegel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing, {head="Umuthi Hat"})
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {back="Swith Cape",waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {
				head="", neck="", lear="Magnetic Earring", rear="Gifted Earring",
                body="Hedera's Cotehardie", hands="Serpentes Cuffs", lring="", rring="",
                back="Balladeer's Cape", waist="Austerity Belt", legs="", feet="Serpentes Sabots"}
		-- Bard songs
		-- Duration > Skill 
		sets.midcast.Buffsong = {main="Legato Dagger",
				head="Fili Calot +1", neck="Aoidos' matinee", lear="Musical Earring", rear="Singing Earring",
                body="Fili Hongreline +1", hands="Fili Manchettes +1", lring="", rring="",
                back="Rhapsode's Cape", waist="", legs="Fili Rhingrave +1", feet="Brioso Slippers +1"}	
		-- Enhancing Buff - Buff Set (set Bonus)
		sets.midcast.EnhanceSong = {main="Legato Dagger",
				head="Fili Calot +1", neck="Aoidos' matinee",
                body="Fili Hongreline +1", hands="Fili Manchettes +1",
                back="Harmony Cape", waist="Corvax Sash", legs="Fili Rhingrave +1", feet="Fili Cothurnes +1"}
		-- Target Skill + 800 Combined Singing + Instrument - Not really necessary anymore.
		sets.midcast.Skillsong = {main="Legato Dagger",
				head="Fili Calot +1", neck="Aoidos' matinee", lear="Musical Earring", rear="Singing Earring",
                body="Fili Hongreline +1", hands="Fili Manchettes +1", lring="", rring="",
                back="Rhapsode's Cape", waist="Witful Belt", legs="Fili Rhingrave +1", feet="Brioso Slippers +1"}
		sets.midcast.Debuff = {main="Marin Staff +1", sub="Mephitis Grip",
				head="Bihu Roundlet +1", neck="Piper's Torque", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Brioso Justaucorps +1", hands="Fili Manchettes +1", lring="Perception Ring", rring="Sangoma Ring",
                back="Rhapsode's Cape", waist="Demonry Sash", legs="Bihu Cannions 1", feet="Bokwus Boots"}
		
		--Healing Magic
		sets.midcast.Cure = {main="Arka IV", sub="Curatio Grip",
				head="Gendewitha Caubeen", neck="Colossus's Torque", lear="Healing Earring", rear="Beatific Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Haoma's Ring", rring="Sirona's Ring",
                back="Tempered Cape", waist="Cascade Belt", legs="Gyve Trousers", feet="Rubeus Boots"}	
		sets.midcast.Curaga = {main="Arka IV",
				head="Gendewitha Caubeen", neck="Colossus's Torque", lear="Healing Earring", rear="Beatific Earring",
                body="Gendewitha Bilaut +1", hands="Bokwus Gloves", lring="Haoma's Ring", rring="Sirona's Ring",
                back="Tempered Cape +1", waist="Cascade Belt", legs="Gyve Trousers", feet="Rubeus Boots"}
	
		-- Enhancing
		sets.midcast.Phalanx = {}
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		-- 40 MND
		sets.midcast.Stoneskin = set_combine(sets.idle.PDT, {
				head="Umuthi Hat", neck="Stone Gorget", rear="Earthcry Earring",
                body="Gendewitha Bilaut +1", hands="Carapacho Cuffs", lring="Aquasoul Ring", rring="Aquasoul Ring",
                waist="Siegel Sash", legs="Haven Hose", feet="Rubeus Boots"})				
		sets.midcast.Aquaveil = {waist="Empahatikos Rope", legs="Shedir Seraweels"}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main="Marin Staff +1", sub="Mephitis Grip",
				head="Bihu Roundlet +1", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Brioso Justaucorps +1", hands="Fili Manchettes +1", lring="Perception Ring", rring="Sangoma Ring",
                back="Rhapsode's Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Bokwus Boots"}
		sets.midcast.Macc = {main="Marin Staff +1", sub="Mephitis Grip",
				head="Bihu Roundlet +1", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Brioso Justaucorps +1", hands="Fili Manchettes +1", lring="Perception Ring", rring="Sangoma Ring",
                back="Rhapsode's Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Bokwus Boots"}

		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{})

		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {})
		
		sets.TP.Acc = set_combine(sets.TP, {})	
		
		-- Weaponskills
		sets.precast.WS = set_combine(sets.TP, {})
		sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {})
		sets.precast.WS['Mercy Stroke'] = set_combine(sets.precast.WS, {})
		sets.precast.WS["Rudra's Storm"] = set_combine(sets.precast.WS, {})
		
		sets.misc.Steps = set_combine(sets.TP.Acc,{})
		sets.misc.flourish = set_combine(sets.TP.Macc,{})
end