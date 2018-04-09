-- DNC Gear_sets
-- Created: 5/15/2014
-- Last Modified: 6/6/2014
-- To Do
--

if player.name == 'Feary' then
-- includes
	
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
	
	
		
-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Meghanada Cuirie", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Flume Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"}

sets.idle.MDT = { 
				head="Meghanada Visor +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Meghanada Cuirie", hands="Meg. Gloves +2", lring=Aug.Darkring1, rring="Defending Ring",
                back="Engulfer Cape +1", waist="Flume Belt", legs="Nahtirah Trousers", feet="Meg. Jam. +1"}

sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Tandava Crackows"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Etiolation Earring", feet="Tandava Crackows"})
-- Full Evasion
sets.idle.Evasion = set_combine(sets.idle.PDT,{
			head="Uk'uxkaj Cap", neck="Torero Torque", lear="Musical Earring", rear="Novia Earring",
            body="Meghanada Cuirie", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
            back="Boxer's Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})

-- Precast	
sets.precast.Recast = set_combine(sets.idle.PDT,{
			head="Haruspex Hat +1", neck="Torero Torque", lear="Magnetic Earring", rear="Loquac. Earring",
            body="Meghanada Cuirie", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Prolix Ring",
            back="Boxer's Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})
			
-- TP Sets 
sets.TP = { ammo="Charis Feather",
			head="Uk'uxkaj Cap", neck="Charis Necklace", lear="Dudgeon Earring", rear="Heartseeker Earring",
            body="Maculele Casaque", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Patentia Sash", legs="Taeon Tights", feet="Horos Shoes"}

-- Accuracy TP Set
sets.TP.Acc = {	
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Dudgeon Earring", rear="Heartseeker Earring",
            body="Manibozho Jerkin", hands="Buremte Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Hurch'lan Sash", legs="Taeon Tights", feet="Taeon Boots"}

-- Alliance Buffed - Capped Haste/Marches/Embrava
sets.TP.Buffed = {
			head="Meghanada Visor +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Thaumas Coat", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

-- Hybrid Evasion
sets.TP.Hybrid = set_combine(sets.idle.PDT,{
			head="Uk'uxkaj Cap", neck="Torero Torque", lear="Dudgeon Earring", rear="Heartseeker Earring",
            body="Meghanada Cuirie", hands="Meg. Gloves +2", lring="Rajas Ring", rring="Epona's Ring",
            back="Boxer's Mantle", waist="Twilight Belt", legs="Meg. Chausses +1", feet="Meg. Jam. +1"})

-- RA Sets
sets.precast.Snapshot = {legs="Nahtirah Trousers"}

sets.RA = {}
				
-- JA
sets.precast.JA["Trance"] = {head="Etoile Tiara +2"}
sets.precast.JA["Grand Pas"] = {}

sets.precast.JA["Fan Dance"] = {hands="Etoile Bangles +2"}
sets.precast.JA["Saber Dance"] = {legs="Etoile Tights +2"}
sets.precast.JA["No Foot Rise"] = {body="Etoile Casaque +2"}
sets.precast.JA["Presto"] = {}

sets.precast.JA["Sambas"] = {head="Maxixi Tiara"}
sets.precast.JA["Jigs"] = {legs="Horos Tights",feet="Maxixi Shoes"}
-- Waltz - CHR for others Vit for self, Waltz+ Only 
sets.precast.JA["Waltz"] = set_combine({head="Horos Tiara", body="Maxixi Casaque", feet="Maxixi Shoes",back="Toetapper Mantle",rear="Roundel Earring"})
-- Steps - Accuracy
sets.precast.JA["Step"] = set_combine(sets.TP.Acc,{head="Maxixi Tiara",hands="Maxixi Bangles",feet="Horos Shoes"})
sets.precast.JA["Feather Step"] = set_combine(sets.precast.JA["Step"],{feet="Charis Toeshoes +2"})
-- Flourish - Macc? 
sets.precast.JA["Flourish"] = set_combine(sets.precast.Macc,{})
sets.precast.JA["Striking Flourish"] = set_combine(sets.precast.JA["Flourish"],{body="Charis Casaque +2"})
sets.precast.JA["Violent Flourish"] = set_combine(sets.precast.JA["Flourish"],{body="Horos Casaque"})
sets.precast.JA["Reverse Flourish"] = set_combine(sets.precast.JA["Flourish"],{hands="Charis Bangles +2"})
sets.precast.JA["Climactic Flourish"] = set_combine(sets.precast.JA["Flourish"],{head="Charis Tiara +2"})

-- Weaponskills
sets.precast.WS = {
				head="Uk'uxkaj Cap", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc = set_combine(sets.precast.WS,{})

-- Rudra's Storm
sets.precast.WS["Rudra's Storm"] = {
				head="Uk'uxkaj Cap", neck="Fotia Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc["Rudra's Storm"] = {
				head="Uk'uxkaj Cap", neck="Fotia Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

-- Exenterator
sets.precast.WS["Exenterator"] = {
				head="Uk'uxkaj Cap", neck="Houyi's Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Garuda Ring +1", rring="Epona's Ring",
                back="Atheling Mantle", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc["Exenterator"] = {
				head="Meghanada Visor +1", neck="Justiciar's Torque", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Garuda Ring +1", rring="Epona's Ring",
                back="Vespid Mantle", waist="Prosilio Belt +1", legs="Taeon Tights", feet="Taeon Boots"}
-- Evisceration
sets.precast.WS["Evisceration"] = {
				head="Uk'uxkaj Cap", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc["Evisceration"] = {
				head="Meghanada Visor +1", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Taeon Tights", feet="Taeon Boots"}

-- Pyrrhic Kleos
sets.precast.WS["Pyrrhic Kleos"] = {
				head="Meghanada Visor +1", neck="Justicier's Torque", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Taeon Tights", feet="Taeon Boots"}

sets.precast.WS.Acc["Pyrrhic Kleos"] = {
				head="Meghanada Visor +1", neck="Justicier's Torque", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Iuitl Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Taeon Tights", feet="Taeon Boots"}
				
-- Midcast Sets

-- Aftercast

-- Misc Sets
sets.precast.Fastcast = set_combine(sets.idle.PDT, {head="Haruspex Hat +1", lear="Loquac. Earring", rring="Prolix Ring",})
sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

end