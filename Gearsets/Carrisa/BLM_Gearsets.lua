-- BLM Gearsets
-- Date: 4/11/2014
-- Last Updated: 4/16/2016
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
				set_macro_page(6,1)
			elseif player.sub_job =='WHM' then
				set_macro_page(6,2)
			elseif player.sub_job == 'SCH' then
				set_macro_page(6,3)
			elseif player.sub_job == 'BRD' then
				set_macro_page(6,4)
			elseif player.sub_job =='NIN' then 
				set_macro_page(6,5)
			end
		else
			set_macro_page(6,3)
		end

		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main={name="Terra's Staff",priority=2}, sub={name="Achaq Grip", priority=1},
				head="Hagondes Hat", neck="Twilight Torque", rear="Ethereal Earring",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Umbra Cape", waist="Fucho-no-obi", legs="Hagondes Pants", feet="Hagondes Sabots"}
		sets.idle.MDT = {
				head="Hagondes Hat", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Hagondes Coat", hands="Hagondes Cuffs", lring=Aug.Darkring1, rring="Defending Ring",
                back="Engulfer Cape", waist="Fucho-no-obi",  legs="Hagondes Pants", feet="Hagondes Sabots"}			
		sets.Resting = set_combine(sets.idle.PDT,{
				main={name="Boonwell Staff", priority=2}, sub={name="Achaq Grip", priority=1}, ammo="Clarus Stone", 
				head="Nefer Khat", neck="Eidolon Pendant", lear="Moonshade Earring", rear="Antivenom Earring",
                body="Heka's Kalasiris", hands="Serpentes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Angha Ring",
                back="Felicitas Cape +1", waist="Austerity Belt", legs="Nares Trews", feet="Chelona Boots"})
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				main={"Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, ammo="Dosis Tathlum", 
				head="Wivre Hairpin",  lear="Moonshade Earring", rear="Ethereal Earring", 
				body="Supay Weskit",  hands="Serpentes Cuffs", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
				waist="Aswang Sash", legs="Nares Trews", feet="Herald's Gaiters"})
		sets.misc.Town = set_combine(sets.idle.PDT, {body="Supay Weskit", legs="Hagondes Pants", feet="Herald's Gaiters"})
		
		-- JA
		sets.precast.JA["Manafont"] = {}
		sets.precast.JA["Subtle Sorcery"] = {}
		
		sets.precast.JA["Elemental Seal"] = {}
		sets.precast.JA["Emnity Douse"] = {}
		sets.precast.JA["Manawell"] = {}
		sets.precast.JA["Manawall"] = {feet="Wicce Sabots"}
		
		-- Precast
		-- Magic
		sets.precast.MinusHP = {
			head="Zenith Crown", neck="Morgana's Choker",
			body="Dalmatica",hands="Zenith Mitts",
			legs="Zenith Slacks",feet="Zenith Pumps"}
		sets.precast.Fastcast = {main={name="Arka IV",priority=1}, sub={name="Vivid Strap",priority=2}, ammo="Impatiens", 
				head="Haruspex Hat +1", neck="Jeweled Collar", lear="Loquac. Earring", rear="Enchanter Earring +1",
                body="Anhur Robe", hands="Repartie Gloves", lring="Weatherspoon Ring", rring="Prolix Ring",
                back="Swith Cape", waist="Witful Belt", legs="Artsieq Hose", feet="Chelona Boots"}
		sets.precast.Elemental = set_combine(sets.precast.Fastcast,{
			head="Wicce Petasos +1", 
			body="Wicce Coat +1", 
			feet="Spaekona's Sabots"})
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris", hands="Bokwus Gloves", 
                back="Pahtli Cape", waist="Acerbic Sash +1", legs="Artsieq Hose"})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{
				head="Umuthi Hat",
				waist="Siegel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{
				head="Umuthi Hat"})
				
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {ammo="Clarus Stone",
				head="Nares Cap", neck="", lear="Magnetic Earring", rear="Gifted Earring",
                body="Hedera's Cotehardie", hands="Serpentes Cuffs",
				waist="Sekhmet Corset"}
		
		-- Elemental
		-- High Resist
		sets.midcast.Elemental = {main={name="Marin Staff +1", priority=2}, sub={name="Niobid Strap", priority=1}, ammo="Dosis Tathlum",
				head="Helios Band", neck="Eddy Necklace", lear="Barkarole Earring", rear="Friomisi Earring",
                body="Witching Robe", hands="Wicce Gloves +1", lring="Strendu Ring", rring="Weatherspoon Ring",
                back="Seshaw Cape", waist="Aswang Sash", legs="Artsieq Hose", feet="Bokwus Boots"}
		-- Damage
		sets.midcast.Nuke = {main="Marin Staff +1", sub="Niobid Strap", ammo="Dosis Tathlum",
				head="Helios Band", neck="Saevus Pendant +1", lear="Barkarole Earring", rear="Friomisi Earring",
                body="Witching Robe", hands="Wicce Gloves +1", lring="Strendu Ring", rring="Icesoul ring",
                back="Seshaw Cape", waist="Aswang Sash", legs="Gyve Trousers", feet="Manabyss Pigaches"}
			-- Acc
		sets.midcast.Nuke.Acc = {main={name="Lathi", priority=2}, sub={name="Zuuxowu Grip", priority=1}, ammo="Witchstone",
				head="Hagondes Hat +1", neck="Eddy Necklace", lear="Crematio Earring", rear="Friomisi Earring",
                body="Spaekona's Coat", hands="Helios Gloves", lring="Shiva Ring", rring="Shiva Ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Hagondes Pants +1", feet="Helios Boots"}
		-- Magic Burst
		sets.midcast.Nuke.MB = {main={name="Lathi", priority=2}, sub={name="Zuuxowu Grip", priority=1}, ammo="Witchstone",
				head="Hagondes Hat +1", neck="Mizukage-no-Kubikazari", lear="Crematio Earring", rear="Friomisi Earring",
                body="Spaekona's Coat", hands="Helios Gloves", lring="Shiva Ring", rring="Locus Ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Hagondes Pants +1", feet="Helios Boots"}
		-- Magic Burst Acc
		sets.midcast.Nuke.MB.Acc = {main={name="Lathi", priority=2}, sub={name="Zuuxowu Grip", priority=1}, ammo="Witchstone",
				head="Hagondes Hat +1", neck="Mizukage-no-Kubikazari", lear="Crematio Earring", rear="Friomisi Earring",
                body="Spaekona's Coat", hands="Helios Gloves", lring="Shiva Ring", rring="Locus Ring",
                back="Toro Cape", waist="Sekhmet Corset", legs="Hagondes Pants +1", feet="Helios Boots"}
				
		-- Death
		sets.midcast.Nuke.Death = {}
		
		sets.midcast.Nuke.Death.Acc = {}
		
		sets.midcast.Nuke.Death.MB = {}
		
		--Healing Magic
		sets.midcast.Cure = {main={name="Tamaxchi", priority=2}, sub={name="Sors Shield" priority=1}, 
				head="Hyksos Khat", neck="Colossus's Torque", lear="Roundel Earring", rear="Healing Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Sirona's Ring", rring="Haoma's Ring",
                back="Tempered Cape +1", waist="Bishop's Sash", legs="Gyve Trousers", feet="Rubeus Boots"}
		
		sets.midcast.Curaga = {main={name="Tamaxchi",priority=2}, sub={name="Sors Shield", priority=1},
				head="Hyksos Khat", neck="Colossus's Torque", lear="Roundel Earring", rear="Healing Earring",
                body="Heka's Kalasiris", hands="Bokwus Gloves", lring="Aquasoul Ring", rring="Aquasoul Ring",
                back="Tempered Cape +1", waist="Cascade Belt", legs="Gyve Trousers", feet="Rubeus Boots"}
	
		-- Enhancing 
		-- 
		sets.midcast.Enhancing = {{main={name="Arka IV", priority=2}, sub={name="Fulcio Grip", priority=1},
			head="Befouled Crown", neck="Colossus's Torque",
			body="Anhur Robe", hands="Ayao's Gloves",
			back="Merciful Cape", waist="Olympus Sash", legs="Portent Pants", feet="Rubeus Boots"}
		sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {head="Umuthi Hat", neck="Stone Gorget", rear="Earthcry Earring", hands="Carapacho Cuffs",waist="Siegal Sash", legs="Haven Hose"}
		sets.midcast.Aquaveil = {}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main={name="Marin Staff +1", priority=2}, sub={name="Mephitis Grip", priority=1}, ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Wicce Coat +1", hands="Lurid Mitts", lring="Perception ring", rring="Sangoma ring",
                back="Bane Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Uk'uxkaj Boots"}
		sets.midcast.Macc = {main={name="Marin Staff +1", priority=2}, sub={name="Mephitis Grip", priority=1}, ammo="Kalboron Stone",
				head="Befouled Crown", neck="Sanctity Necklace", lear="Lifestorm Earring", rear="Psystorm Earring",
                body="Wicce Coat +1", hands="Lurid Mitts", lring="Perception ring", rring="Sangoma ring",
                back="Bane Cape", waist="Demonry Sash", legs="Artsieq Hose", feet="Bokwus Boots"}
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		sets.midcast.Paralyze = set_combine(sets.midcast.Macc)
		sets.midcast.Blind = set_combine(sets.midcast.Macc)
		sets.midcast.Bio = set_combine(sets.midcast.Macc)
		sets.midcast.Slow = set_combine(sets.midcast.Macc)
		
		
		-- Dark Magic
		sets.midcast.Dark = set_combine(sets.midcast.Macc, {
				head="Appetence Crown", neck="Aesir Torque",
				hands="Sorcerer's Gloves", 
				back="Merciful Cape", waist="Fucho-no-Obi", legs="Wizard's Tonban", feet="Wicce Sabots"})
		sets.midcast.Aspir = set_combine(sets.midcast.Dark)
		
		-- Stun
		sets.midcast.Stun = set_combine(sets.midcast.Macc,{
				main={name="Lathi", priority=2}, sub={name="Mephitis Grip", priority=1}, ammo="Hasty Pinion",
				head="Nahtirah Hat", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				-- Vanir Cotehardie
				body="Hedera Cotehardie", hands="Hagondes Cuffs +1", lring="Prolix Ring", rring="Sangoma Ring",
				back="Swith Cape +1", waist="Witful Belt", legs="Artsieq Hose", feet="Hag. Sabots +1"})
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {})
		
		sets.TP.Acc = set_combine(sets.TP,{})
		
		-- Weaponskills
		sets.precast.WS = set_combine(sets.TP, {})
		
		sets.precast.WS.Acc = {}
		
		-- Staff
		-- Shattersoul
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {})
		
		-- Misc
		sets.misc.Waltz = {}
		sets.misc.Steps = {}
		sets.misc.flourish = {}
end