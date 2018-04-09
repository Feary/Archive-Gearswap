-- Aniyah's BRD Gearsets
-- Created:
-- Last Modified:
--
--

if player.name == 'Aniyah' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		--include('include/autoexec.lua')
		include('include/utility.lua')

		-- Instruments
		default = {range="Eminent Flute"}
		-- Buffs
		ballad = {range="Eminent Flute"}
		march = {range="Langeleik"}
		minuet = {range="Eminent Flute"}
		madrigal = {range="Eminent Flute"}
		minne = {range="Eminent Flute"}
		etude = {range="Langeleik"}
		carol = {range="Eminent Flute"}
		mambo  = {range="Eminent Flute"}
		mazurka = {range="Langeleik"}
		paeon = {range="Eminent Flute"}
		prelude = {range="Eminent Flute"}
		scherzo = {range="Eminent Flute"}
		hymnus = {range="Langeleik"}
		--Debuffs
		elegy = {range="Eminent Flute"}
		threnody = {range="Eminent Flute"}
		lullaby = {range="Eminent Flute"}
		horde = {range="Eminent Flute"}
		finale = {range="Eminent Flute"}
		requiem = {range="Eminent Flute"}
		virelai = {range="Langeleik"}
		nocturne = {range="Eminent Flute"}

		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main={name="Legato Dagger", priority=2}, sub={name="Genbu's Shield", priority=1},
				head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Vocane Ring", rring="Defending Ring",
                back="Umbra Cape", waist="Flume Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
		sets.idle.MDT = {
				head="Inyanga Tiara", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Vocane Ring", rring="Defending Ring",
                back="Engulfer Cape", waist="Flume Belt", legs="Inyanga Shalwar", feet="Inyanga Crackows"}			
		
		sets.Resting = set_combine(sets.idle.PDT, {})
		
		sets.idle.Standard = set_combine(sets.idle.PDT,{
                feet="Aoidos' Cothrn. +2"})
		
		sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Aoidos' Cothrn. +2"})
		
		sets.lockstyle = set_combine(sets.misc.Town,{})
		
		sets.idle.Fishing = set_combine(sets.idle.Standard,{})
		sets.idle.Cooking = set_combine(sets.idle.Standard,{})		
		
		sets.misc.MinusHP = {}
		
		-- JA
		sets.precast.JA["Soul Voice"] = {legs="Bihu Cannions"}
		
		sets.precast.JA["Nightingale"] = {feet="Bihu Slippers"}
		sets.precast.JA["Troubadour"] = {body="Bard's Justaucorps"}
		
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {
				--  neck="Voltsurge's Torque", rear="Enchntr. Earring +1",
				head="Haruspex Hat", lear="Loquac. Earring", 
				--rring="Prolix Ring"  Kisar Ring
                body="Inyanga Jubbah", hands="Gendewitha Gages",
                back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Chelona Boots"}
		sets.precast.Fastcast.Song = set_combine(sets.precast.Fastcast, {main="Felibre's Dague",
				head="Aoidos' Calot +2", neck="Aoidos' Matinee", lear="Loquac. Earring", rear="Aoidos' Earring",
				-- lring="Minstrel's Ring",
                body="Inyanga Jubbah", hands="Gendewitha Gages", rring="Prolix Ring",
                --  feet="Bihu Slippers"
				back="Swith Cape", waist="Witful Belt", legs="Orvail Pants +1", feet="Chelona Boots"})
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris",
                --back="Pahtli Cape"
				})
		
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, {waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {
				waist="Austerity Belt"}
		-- Enhancing Buff - Duration Set
		sets.midcast.Buffsong = {main={name="Legato Dagger", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- neck="Aoidos' matinee",
				head="Aoidos' Calot +2", lear="Musical Earring", 
                -- lring="Stikini Ring", rring="Stikini Ring",
				body="Aoidos' hngrln. +2", hands="Ad. Mnchtte. +2", 
				-- Harmony Cape Corvax Sash feet="Brioso Slippers +1"
                legs="Inyanga Shalwar", feet="Aoidos' Cothrn. +2"}
		-- Enhancing Buff - Buff Set (set Bonus)
		sets.midcast.EnhanceSong = {main={name="Legato Dagger", priority=2}, sub={name="Genbu's Shield", priority=1},
				head="Aoidos' Calot +2", neck="Moonbow Whistle", lear="Musical Earring",
				-- lring="Stikini Ring", rring="Stikini Ring",
                body="Aoidos' hngrln. +2", hands="Ad. Mnchtte. +2", 
                back="Harmony Cape", waist="Corvax Sash", legs="Aoidos' Rhing. +2", feet="Aoidos' Cothrn. +2"}
		-- Enhancing Buff - Skill Set 800+
		sets.midcast.Skillsong = {main={name="Legato Dagger", priority=2}, sub={name="", priority=1},
				--neck="Aoidos' matinee",
				head="Aoidos' Calot +2", lear="Musical Earring", 
				--lring="Stikini Ring", rring="Stikini Ring",
				body="Aoidos' hngrln. +2", hands="Ad. Mnchtte. +2",
				-- feet="Brioso Slippers +1"
                back="Intarabus's Cape", waist="Witful Belt", legs="Aoidos' Rhing. +2", feet="Aoidos' Cothrn. +2"}
		-- Debuffs
		sets.midcast.Debuff = {main={name="Pukulatmuj", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- neck="Piper's Torque", lear="Lifestorm Earring", rear="Psystorm Earring",
				head="Inyanga Tiara",  
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Perception ring", rring="Balrahn's Ring",
				--
                back="Ogapepo Cape", waist="Demonry Sash", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
		-- Nitro Lullaby
		sets.midcast.Debuff.Buffsong = {main={name="Legato Dagger", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- neck="Aoidos' Matinee", lear="Lifestorm Earring", rear="Psystorm Earring",
				hhead="Aoidos' Calot +2", 
				-- lring="Stikini Ring", rring="Stikini Ring",
				body="Aoidos' hngrln. +2", hands="Ad. Mnchtte. +2", lring="Perception ring", rring="Balrahn's Ring",
				-- Brioso Slippers +1
                back="Ogapepo Cape", waist="Demonry Sash", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
	
		--Healing Magicn
		sets.midcast.Cure = {main={name="Arka IV", priority=2}, sub={name="Pax Grip", priority=1},				
				head="Gendewitha Caubeen", neck="Colossus's Torque", 
                -- rring="Stikini Ring",
				body="Heka's Kalasiris", hands="Inyanga Dastanas", lring="Sirona's Ring", 
				--legs="Bokwus Slops",
                back="Tempered Cape", waist="Cascade Belt", feet="Rubeus Boots"}
		
		sets.midcast.Curaga = {main={name="Arka IV", priority=2}, sub={name="", priority=1},				
				head="Gendewitha Caubeen", neck="Colossus's Torque", 
				-- rring="Stikini Ring",
                body="Heka's Kalasiris",  hands="Inyanga Dastanas", lring="Sirona's Ring",  rring="Aquasoul Ring",
                -- back="Pahtli Cape",
				back="Tempered Cape", waist="Cascade Belt", feet="Rubeus Boots"}
	
		-- Enhancing
		sets.midcast.Phalanx = {}
		sets.midcast.Hastespell = {--ammo="Impatiens", 
				waist="Witful Belt"}
		-- 40 MND
		sets.midcast.Stoneskin = set_combine(sets.idle.PDT, {})
		sets.midcast.Aquaveil = {
				--waist="Empahatikos Rope", legs="Shedir Seraweels"
				}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main={name="Pukulatmuj", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- lear="Lifestorm Earring", rear="Psystorm Earring",
				head="Inyanga Tiara", neck="Enfeebling Torque",
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Perception ring", rring="Balrahn's Ring",
                back="Ogapepo Cape", waist="Demonry Sash", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
		sets.midcast.Macc = {main={name="Pukulatmuj", priority=2}, sub={name="Genbu's Shield", priority=1},
				-- lear="Lifestorm Earring", rear="Psystorm Earring",
				head="Inyanga Tiara", neck="Enfeebling Torque",
                body="Inyanga Jubbah", hands="Inyanga Dastanas", lring="Perception ring", rring="Balrahn's Ring",
				back="Ogapepo Cape", waist="Demonry Sash", legs="Inyanga Shalwar", feet="Inyanga Crackows"}
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP,{})

		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {})
		sets.TP.Acc = set_combine(sets.TP, {})	
		sets.precast.WS = set_combine(sets.TP, {})
		sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {})
		sets.precast.WS['Mercy Stroke'] = set_combine(sets.precast.WS, {})
		sets.precast.WS["Rudra's Storm"] = set_combine(sets.precast.WS, {})
		
		sets.misc.Waltz = {}
		sets.misc.Steps = set_combine(sets.TP.Acc,{})
		sets.misc.flourish = set_combine(sets.TP.Macc,{})
end