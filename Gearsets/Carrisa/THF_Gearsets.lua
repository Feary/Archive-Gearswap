-- Carrisa's THF Gear_sets
-- Created: 4/5/2014
-- Last Modified: 04/12/2016
-- To Do List 
--


if player.name == 'Carrisa' then
-- includes
	include('include/utility.lua')
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
	
-- sets Macros off = 0  on = 1
		automacroset = 1
		if automacroset == 1 then
			if player.sub_job == 'NIN' then
				set_macro_page(13,1)
			elseif player.sub_job == 'WAR' then
				set_macro_page(13,2)
			elseif player.sub_job == 'DNC' then
				set_macro_page(13,3)
			elseif player.sub_job == 'DRK' then 
				set_macro_page(13,4)
			end
		else
			set_macro_page(13,1)
		end
		
-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Whirlpool Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Iuitl Vest", hands="Iuitl Wristbands", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Repulse Mantle", waist="Flume Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"}

sets.idle.MDT = { 
				head="Whirlpool Mask", neck="Twilight Torque", lear="Merman's Earring", rear="Merman's Earring",
                body="Iuitl Vest", hands="Iuitl Wristbands", lring=Aug.Darkring1.Carrisa, rring="Defending Ring",
                back="Engulfer Cape", waist="Flume Belt", legs="Nahtirah Trousers", feet="Iuitl Gaiters"}

sets.misc.Town = set_combine(sets.idle.PDT, {
				legs="Manibozho Brais", feet="Pillager's Poulaines"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Dudgeon Earring", rear="Heartseeker Earring", legs="Manibozho Brais", feet="Fajin Boots"})

sets.lockstyle = set_combine(sets.misc.Town,{
			head="Felistris Mask",
			body="Taeon Tabard", hands="Taeon Gloves",
			legs="Taeon Tights", feet="Fajin Boots"})

sets.idle.Fishing = set_combine(sets.idle.Standard,{range="Lu Sh. F. Rod +1", ammo="Sinking Minnow",
			head="Tlahtlamah Glasses", neck="Fisher's Torque",
			body="Fisherman's Tunica", hands="Kachina Gloves", lring="Pelican Ring", rring="Pelican Ring",
			waist="Fisherman's Belt", legs="Fisherman's Hose", feet="Waders"})

sets.idle.Leather = set_combine(sets.idle.Standard,{
			neck="Tanner's Torque",
			body="Tanner's Smock", hands="Tanner's Gloves", lring="Craftkeeper's Ring", rring="Craftmaster's Ring",
			waist="Tanner's Belt"})		
			
-- Full Evasion
sets.idle.Evasion = set_combine(sets.idle.PDT,{
			head="Uk'uxkaj Cap", neck="Torero Torque", lear="Phawaylla Earring", rear="Novia Earring",
            body="Iuitl Vest", hands="Iuitl Wristbands", lring="Rajas Ring", rring="Epona's Ring",
            back="Meanagh Cape +1", waist="Panthalassa Sash", legs="Iuitl Tights", feet="Iuitl Gaiters"})

sets.TH = {hands="Plunderer's Armlets +1", waist="Chaac Belt",
			feet="Skulker's Poulaines"}

-- Precast	
sets.precast.Fastcast = set_combine(sets.idle.PDT,{
			head="Athos's Chapeau", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
            body="Iuitl Vest", hands="Iuitl Wristbands", rring="Prolix Ring",
            waist="Twilight Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"})
sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

sets.misc.Waltz = {rring="Asklepian Ring"}
-- Steps = Full Acc
sets.misc.Steps = {head="Whirlpool Mask", neck="Asperity Necklace", lear="Dudgeon Earring", rear="Heartseeker Earring",
            body="Manibozho Jerkin", hands="Buremte Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Hurch'lan Sash", legs="Manibozho Brais", feet="Manibozho Boots"}
-- Magic Acc
sets.misc.flourish = {}

-- Midcast
sets.midcast.Fastcast = set_combine(sets.idle.PDT,{
			head="Athos's Chapeau", neck="Voltsurge Torque", lear="Loquac. Earring", rear="Enchntr. Earring +1",
            body="Iuitl Vest", hands="Iuitl Wristbands", rring="Prolix Ring",
            waist="Twilight Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"})
		
-- TP Sets 
sets.TP = { ammo="Raider's Bmrng.",
			head="Whirlpool Mask", neck="Asperity Necklace", lear="Dudgeon Earring", rear="Heartseeker Earring",
            body="Thaumas Coat", hands="Plunderer's Armlets +1", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Patentia Sash", legs="Manibozho Brais", feet="Manibozho Boots"}

-- Accuracy TP Set
sets.TP.Acc = {	
			head="Whirlpool Mask", neck="Asperity Necklace", lear="Dudgeon Earring", rear="Heartseeker Earring",
            body="Manibozho Jerkin", hands="Buremte Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Hurch'lan Sash", legs="Manibozho Brais", feet="Manibozho Boots"}

-- Alliance Buffed
sets.TP.Buffed = {
			head="Whirlpool Mask", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
            body="Manibozho Jerkin", hands="Buremte Gloves", lring="Rajas Ring", rring="Epona's Ring",
            back="Atheling Mantle", waist="Windbuffet Belt", legs="Manibozho Brais", feet="Manibozho Boots"}

-- Hybrid Evasion
sets.TP.Hybrid = set_combine(sets.idle.PDT,{
			head="Uk'uxkaj Cap", neck="Torero Torque", lear="Dudgeon Earring", rear="Heartseeker Earring",
            body="Iuitl Vest", hands="Iuitl Wristbands", lring="Rajas Ring", rring="Epona's Ring",
            back="Boxer's Mantle", waist="Twilight Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"})

-- RA Sets
sets.precast.Snapshot = {legs="Nahtirah Trousers"}

sets.RA = {}
				
-- JA
sets.precast.JA["Perfect Dodge"] = {hands="Plunderer's Armlets"}
sets.precast.JA["Larceny"] = {}

sets.precast.JA["Steal"] = {head="Plun. Bonnet",hands="Pillager's Armlets",legs="Pillager's Culottes",feet="Pillager's Poulaines"}
sets.precast.JA["Mug"] = {head="Plun. Bonnet"}
sets.precast.JA["Feint"] = {legs="Plun. Culottes"}
sets.precast.JA["Flee"] = {feet="Pillager's Poulaines"}
sets.precast.JA["Hide"] = {body="Pillager's Vest"}
sets.precast.JA["Ambush"] = {body="Plunderer's Vest"}
sets.precast.JA["Assassin's Charge"] = {feet="Plunderer's Poulaines"}
sets.precast.JA["Accomplice"] = {head="Raider's Bonnet +2"}
sets.precast.JA["Collaborator"] = {head="Raider's Bonnet +2"}
sets.precast.JA["Conspirator"] = {body="Raider's Vest +2"}
sets.precast.JA["Bully"] = {}
sets.precast.JA["Despoil"] = {legs="Raider's Culottes +2",feet="Raider's Poulaines +2"}

-- Sneak Attack 
sets.precast.JA["Sneak Attack"] = {
				head="Uk'uxkaj Cap", neck="Love Torque", lear="Dudgeon Earring", rear="Heartseeker Earring",
                body="Manibozho Jerkin", hands="Raid. Armlets +2", lring="Thundersoul Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Twilight Belt", legs="Manibozho Brais", feet="Iuitl Gaiters"}
-- Trick Attack
sets.precast.JA["Trick Attack"] = {
				head="Uk'uxkaj Cap", neck="Houyi's Gorget", lear="Dudgeon Earring", rear="Bladeborn earring",
                body="Manibozho Jerkin", hands="Iuitl Wristbands", lring="Stormsoul Ring", rring="Stormsoul Ring",
                back="Vespid Mantle", waist="Twilight Belt", legs="Iuitl Tights", feet="Iuitl Gaiters"}

-- Weaponskills
sets.precast.WS = {
				head="Pillager's Bonnet", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Vespid Mantle", waist="Wanion Belt", legs="Pillager's Culottes", feet="Pillager's Poulaines"}

sets.precast.WS.SA = set_combine(sets.precast.WS,{})

sets.precast.WS.TA = set_combine(sets.precast.WS,{})
	
sets.precast.WS.Acc = {}

sets.precast.WS.Acc.SA = {}

sets.precast.WS.Acc.TA = {}

-- Mercy Stroke
sets.precast.WS["Mercy Stroke"] = {
				head="Pillager's Bonnet", neck="Shadow Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Vespid Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Pillager's Poulaines"}

sets.precast.WS.SA["Mercy Stroke"] = {
				head="Pillager's Bonnet", neck="Shadow Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Raid. Armlets +2", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Vespid Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Pillager's Poulaines"}

sets.precast.WS.TA["Mercy Stroke"] = {
				head="Pillager's Bonnet", neck="Shadow Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Vespid Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Pillager's Poulaines"}

-- Rudra's Storm
sets.precast.WS["Rudra's Storm"] = {
				head="Pillager's Bonnet", neck="Justiciar's Torque", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Pyrosoul Ring",
                back="Rancorous Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Pillager's Poulaines"}
sets.precast.WS.SA["Rudra's Storm"] = {
				head="Pillager's Bonnet", neck="Shadow Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Thundersoul Ring",
                back="Vespid Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Pillager's Poulaines"}
sets.precast.WS.TA["Rudra's Storm"] = {
				head="Pillager's Bonnet", neck="Shadow Gorget", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Thundersoul Ring",
                back="Vespid Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Pillager's Poulaines"}

-- Acc 	
sets.precast.WS.Acc["Rudra's Storm"] = {
				head="Pill. Bonnet +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Pillager's Vest +1", hands="Pillager's Armlets", lring="Rajas Ring", rring="Ramuh Ring +1",
                back="Kayapa Cape", waist="Wanion Belt", legs="Pillager's Culottes", feet="Taeon Boots"}
sets.precast.WS.Acc.SA["Rudra's Storm"] = {
				head="Pill. Bonnet +1", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Pillager's Vest +1", hands="Pillager's Armlets", lring="Rajas Ring", rring="Ramuh Ring +1",
                back="Kayapa Cape", waist="Wanion Belt", legs="Pillager's Culottes", feet="Taeon Boots"}
sets.precast.WS.Acc.TA["Rudra's Storm"] = {
				head="Pill. Bonnet +1", neck="Fotia Gorget", lear="Kuwunga Earring", rear="Moonshade Earring",
                body="Pillager's Vest +1", hands="Pillager's Armlets", lring="Rajas Ring", rring="Ramuh Ring +1",
                back="Kayapa Cape", waist="Wanion Belt", legs="Pillager's Culottes", feet="Taeon Boots"}

-- Exenterator
sets.precast.WS["Exenterator"] = {
				head="Whirlpool Mask", neck="Justiciar's Torque", lear="Steelflash", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Pyrosoul Ring", rring="Pyrosoul Ring",
                back="Rancorous Mantle", waist="Prosilio Belt", legs="Nahtirah Trousers", feet="Pillager's Poulaines"}

sets.precast.WS.Acc["Exenterator"] = {
				head="Whirlpool Mask", neck="Justiciar's Torque", lear="Steelflash", rear="Bladeborn Earring",
                body="Manibozho Jerkin", hands="Pillager's Armlets", lring="Pyrosoul Ring", rring="Pyrosoul Ring",
                back="Rancorous Mantle", waist="Prosilio Belt", legs="Nahtirah Trousers", feet="Pillager's Poulaines"}
-- Evisceration
sets.precast.WS["Evisceration"] = {
				head="Pillager's Bonnet", neck="Asperity Necklace", lear="Steelflash", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Epona's Ring",
                back="Rancorous Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Iuitl Gaiters"}

sets.precast.WS.Acc["Evisceration"] = {
				head="Whirlpool Mask", neck="Asperity Necklace", lear="Steelflash", rear="Bladeborn Earring",
                body="Pillager's Vest", hands="Pillager's Armlets", lring="Rajas Ring", rring="Epona's Ring",
                back="Rancorous Mantle", waist="Prosilio Belt", legs="Pillager's Culottes", feet="Manibozho Boots"}

-- Dancing Edge
sets.precast.WS["Dancing Edge"] = {
				head="Skulker's Bonnet", neck="Asperity Necklace", lear="Steelflash Earring", rear="Bladeborn Earring",
                body="Pillager's Vest +1", hands="Taeon Gloves", lring="Rajas Ring", rring="Epona's Ring",
                back="Atheling Mantle", waist="Wanion Belt", legs="Pillager's Culottes", feet="Taeon Boots"}

end