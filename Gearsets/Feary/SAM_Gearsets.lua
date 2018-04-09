-- SAM Gearsets
-- Created 4/16/2014
-- Last Update: 02/03/2015
-- To Do:
--
--
--
--

if player.name == 'Feary' then
	-- includes	
	include('include/mappings.lua')
	include('include/equipment.lua')
	-- include('../include/autoexec.lua')
	
-- Auto Sets
-- Standard/idle
sets.idle.PDT = { 
				head="Otronif Mask", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Otro. Harness +1", hands="Otronif Gloves +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Flume Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"}

sets.idle.MDT = { ammo="Vanir Battery",
				head="Otronif Mask", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Otro. Harness +1", hands="Otronif Gloves +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Engulfer Cape +1", waist="Flume Belt", legs="Otronif Brais +1", feet="Otronif Boots +1"}

sets.idle.Evasion = {}

sets.misc.Town = set_combine(sets.idle.PDT, {
				feet="Danzo Sune-Ate"})
				
sets.idle.Standard = set_combine(sets.idle.PDT, {
				lear="Merman's Earring", rear="Etiolation Earring", feet="Danzo Sune-Ate"})
-- Tsuru TP
sets.TP = { 	
				head="Yaoyotl Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Wakido Domaru", hands="Wakido Kote", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Wakido Haidate +1", feet="Acro Leggings"}
sets.TP.Acc = { 
				head="Yaoyotl Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Wakido Domaru", hands="Sankoji Kote", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Dynamic Belt +1", legs="Wakido Haidate +1", feet="Acro Leggings"}
sets.TP.Buffed = {
				head="Yaoyotl Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Wakido Domaru", hands="Otronif Gloves +1", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Wakido Haidate +1", feet="Acro Leggings"}
-- Ionis Tsuru TP
sets.TP.Ionis= { 	
				head="Yaoyotl Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Wakido Domaru", hands="Wakido Kote", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Wakido Haidate +1", feet="Acro Leggings"}
sets.TP.Ionis.Acc = { 
				head="Yaoyotl Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Wakido Domaru", hands="Sankoji Kote", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Dynamic Belt +1", legs="Wakido Haidate +1", feet="Acro Leggings"}
sets.TP.Ionis.Buffed = {
				head="Yaoyotl Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Wakido Domaru", hands="Otronif Gloves +1", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Wakido Haidate +1", feet="Acro Leggings"}

-- Yoichi Tsu TP
sets.TP.Bow = {
				head="Otomi Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Kasuga Domaru", hands="Acro Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Kasuga Haidate", feet="Acro Leggings"}
sets.TP.Bow.Acc = {
				head="Otomi Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Kasuga Domaru", hands="Acro Gauntlets", lring="Rajas Ring", rring="Ramuh Ring +1",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Kasuga Haidate", feet="Acro Leggings"}
sets.TP.Bow.Buffed = {		
				head="Otomi Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Kasuga Domaru", hands="Acro Gauntlets", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Kasuga Haidate", feet="Acro Leggings"}
				
-- Ionis Yoichi Tsu TP
sets.TP.Ionis.Bow = {
				head="Otomi Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Kasuga Domaru", hands="Wakido Kote", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Kasuga Haidate", feet="Acro Leggings"}
sets.TP.Ionis.Bow.Acc = {
				head="Otomi Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Kasuga Domaru", hands="Wakido Kote", lring="Rajas Ring", rring="Ramuh Ring +1",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Kasuga Haidate", feet="Acro Leggings"}
sets.TP.Ionis.Bow.Buffed = {		
				head="Otomi Helm", neck="Ganesha's Mala", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Kasuga Domaru", hands="Wakido Kote", lring="Rajas Ring", rring="K'ayres Ring",
                back="Takaha Mantle", waist="Windbuffet Belt +1", legs="Kasuga Haidate", feet="Acro Leggings"}

-- JA
sets.precast.JA["Meikyo Shisui"] = {feet="Sakonji Sune-ate"}
sets.precast.JA["Yaegasumi"] = {}

sets.precast.JA["Meditate"] = set_combine(sets.idle.PDT, {
				head="Wakido Kabuto",
				hands="Sakonji Kote",})
sets.precast.JA["Hasso"] = {hands="Wakido Kote",legs="Kasuga Haidate "}
sets.precast.JA["Third Eye"] = {legs="Saotome Haidate"}
sets.precast.JA["Seigan"] = {head="Kasuga Kabuto"}
sets.precast.JA["Blade Bash"] = {hands="Sakonji Kote"}
sets.precast.JA["Sekkanoki"] = {hands="Unkai Kote +2"}
sets.precast.JA["Sengikori"] = {feet="Kasuga Sune-ate"}
sets.precast.JA["Hagakore"] = {}
sets.precast.JA["Konzen-ittai"] = {}
sets.precast.JA["Warding Circle"] = {head="Wakido Kabuto"}

-- Weaponskills
sets.precast.WS = {
				head="Otomi Helm", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Phorcys Korazin", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Atheling Mantle", waist="Fotia Belt", legs="Mikinaak Cuisses", feet="Ejekamel Boots"}
-- Great Katana
sets.precast.WS['Tachi: Fudo'] = {
				head="Otomi Helm", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Phorcys Korazin", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Buquwik Cape", waist="Fotia Belt", legs="Wakido Haidate +1", feet="Ejekamel Boots"}
sets.precast.WS['Tachi: Shoha'] = {
				head="Otomi Helm", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Phorcys Korazin", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Wakido Haidate +1", feet="Ejekamel Boots"}
sets.precast.WS['Tachi: Gekko'] = {
				head="Otomi Helm", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Phorcys Korazin", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Mikinaak Cuisses", feet="Ejekamel Boots"}
sets.precast.WS['Tachi: Rana'] = {
				head="Otomi Helm", neck="Fotia Gorget", lear="Brutal Earring", rear="Moonshade Earring",
                body="Phorcys Korazin", hands="Miki. Gauntlets", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Buquwik Cape", waist="Windbuffet Belt +1", legs="Mikinaak Cuisses", feet="Ejekamel Boots"}
sets.precast.WS['Tachi: Kaiten'] = {
				head="Otomi Helm", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Phorcys Korazin", hands="Boor Bracelets", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Atheling Mantle", waist="Windbuffet Belt +1", legs="Wakido Haidate +1", feet="Sakonji Sune-Ate"}
-- Sword 
sets.precast.WS['Requiescat'] = {
				head="Otomi Helm", neck="Fotia Gorget", lear="Bladeborn Earring", rear="Steelflash Earring",
                body="Phorcys Korazin", hands="Miki. Gauntlets", lring="Levia. Ring +1", rring="Levia. Ring +1",
                back="Buquwik Cape", waist="Fotia Belt", legs="Mikinaak Cuisses", feet="Sakonji Sune-Ate"}
				
-- Ranged Weaponskill
sets.precast.RAWS = {
				head="Sakonji Kabuto", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
                body="Phorcys Korazin", hands="Unkai Kote +2", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Buquwik Cape", waist="Fotia Belt", legs="Wakido Haidate +1", feet="Waki. Sune-Ate +1"}
sets.precast.RAWS.Acc = {}

sets.precast.RAWS['Apex Arrow'] = {
				head="Sakonji Kabuto", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
                body="Phorcys Korazin", hands="Unkai Kote +2", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Buquwik Cape", waist="Fotia Belt", legs="Wakido Haidate +1", feet="Waki. Sune-Ate +1"}
				
sets.precast.RAWS['Namas Arrow'] = {
				head="Sakonji Kabuto", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
                body="Phorcys Korazin", hands="Unkai Kote +2", lring="Rajas Ring", rring="Ifrit Ring +1",
                back="Buquwik Cape", waist="Fotia Belt", legs="Wakido Haidate +1", feet="Waki. Sune-Ate +1"}
				
sets.precast.RAWS.Acc['Namas Arrow'] = {
				head="Sukeroku Hachi.", neck="Fotia Gorget", lear="Vulcan's Pearl", rear="Vulcan's Pearl",
                body="Kyujutsugi", hands="Unkai Kote +2", lring="Hajduk Ring", rring="Hajduk Ring",
                back="Buquwik Cape", waist="Fotia Belt", legs="Wakido Haidate +1", feet="Waki. Sune-Ate +1"}

-- Misc Sets
sets.precast.Fastcast = set_combine(sets.idle.PDT, {
				lear="Loquac. Earring",
                rring="Prolix Ring",
               })
sets.precast.Utsusemi = set_combine(sets.precast.Fastcast, {neck="Magoraga Beads"})

sets.misc.Waltz = {}
sets.misc.Steps = set_combine(sets.TP.Acc,{})
sets.misc.flourish = {}

end