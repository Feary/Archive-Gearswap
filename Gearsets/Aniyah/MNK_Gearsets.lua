-- Derion's MNK Gear_sets
-- Created: 1/25/2014
-- Last Modified: 6/14/2014
-- To Do List
--
--
--
--

if player.name == 'Aniyah' then
-- includes
	include('include/utility.lua')
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')

-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Espial Cap", neck="Twilight Torque", lear="", rear="",
                body="Otronif Harness", hands="Otronif Gloves", lring="Vocane Ring", rring=Aug.Darkring1.Aniyah,
                back="Repulse Mantle", waist="Black Belt", legs="Otronif Brais", feet="Otronif Boots"}

sets.idle.MDT = { 
				head="Espial Cap", neck="Twilight Torque", lear="", rear="",
                body="Otronif Harness", hands="Otronif Gloves",lring="Vocane Ring", rring="Shadown Ring",
                back="", waist="", legs="Otronif Brais", feet="Otronif Boots"}

sets.idle.Regen = set_combine(sets.idle.PDT, {body="Melee Cyclas"})

sets.idle.Evasion = {
				head="", neck="Torero Torque", lear="", rear="",
                body="", hands="", lring=Aug.Darkring1.Derion, rring="",
                back="", waist="", legs="", feet=""}

sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Hermes' Sandals"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				feet="Hermes' Sandals"})
-- TP 
sets.TP = { ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Otronif Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Twilight Belt", legs="Espial Hose", feet="Espial Socks"}
-- Accuracy TP
sets.TP.MidAcc = { ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Twilight Belt", legs="Espial Hose", feet="Espial Socks"}
-- High Accuracy TP
sets.TP.HighAcc = {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Twilight Belt", legs="Espial Hose", feet="Espial Socks"}

-- Hybrid PDT/TP
sets.TP.Hybrid = set_combine(sets.TP, sets.idle.PDT)
				
-- Hundred Fists
sets.TP.HF = set_combine(sets.TP,{body="Tantra Cyclas +2"})

-- Impetus Sets
sets.TP.Impetus = set_combine(sets.TP, {})
sets.TP.MidAcc.Impetus = set_combine(sets.TP.MidAcc, {})
sets.TP.HighAcc.Impetus =  set_combine(sets.TP.HighAcc, {})

-- JA
sets.precast.JA["Formless Strikes"] = {body="Melee Cyclas"}
sets.precast.JA["Chakra"] = set_combine(sets.idle.PDT, { ammo="Tantra Tahtlum"})
sets.precast.JA["Chi Blast"] = set_combine(sets.idle.PDT, {})
sets.precast.JA["Impetus"] = {body="Tantra Cyclas +2"}
sets.precast.JA["Hundred Fists"] = {legs="Melee Hose"}
sets.precast.JA["Focus"] = {head="Temple Crown"}
sets.precast.JA["Dodge"] = {feet="Temple Gaiters"}
sets.precast.JA["Boost"] = {hands="Temple Gloves"}
sets.precast.JA["Counterstance"] = {feet="Melee Gaiters"}
sets.precast.JA["Mantra"] = {feet="Melee Gaiters"}

-- Weaponskills
sets.precast.WS = {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"}
sets.precast.WS['Victory Smite'] = {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Rancor Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"}

sets.precast.WS.Impetus = {}
sets.precast.WS.Impetus['Victory Smite'] = {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"}

sets.precast.WS['Final Heaven'] = set_combine(sets.precast.WS)

sets.precast.WS['Shijin Spiral'] = set_combine(sets.precast.WS, {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"})

sets.precast.WS.MidAcc = {}
sets.precast.WS.HighAcc = {}
sets.precast.WS.MidAcc['Shijin Spiral'] = set_combine(sets.precast.WS['Shijin Spiral'], {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"})
sets.precast.WS.HighAcc['Shijin Spiral'] = set_combine(sets.precast.WS['Shijin Spiral'], {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Espial Hose", feet="Espial Socks"})

sets.precast.WS["Ascetic's Fury"] = set_combine(sets.precast.WS, {ammo="Tantra Tathlum",
				head="Espial Cap", neck="Agasaya's Collar", lear="Brutal Earring", rear="Ghillie Earring +1",
                body="Espial Gambison", hands="Espial Bracers", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Light Belt", legs="Espial Hose", feet="Espial Socks"})
sets.precast.WS["Asuran Fists"] = set_combine(sets.precast.WS, {neck="Shadow Gorget", waist="Anguinus Belt"})

-- Misc Sets
sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				head="Athos's Chapeau", neck="Magoraga Beads", lear="Loquac. Earring", rear="Novia Earring",
				waist="Black Belt"})
sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

sets.misc.Waltz = {}
sets.misc.Steps = set_combine(sets.TP.MidAcc,{})
sets.misc.flourish = {}

end