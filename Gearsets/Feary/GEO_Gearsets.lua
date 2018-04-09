-- Geo Gearsets
-- Created: 4/11/2014
-- Last Updated: 03/16/2016
-- To Do List
--
--
--
--

if player.Name == 'Feary' then
		-- includes
		include('include/mappings.lua')
		include('include/equipment.lua')
		
		-- Auto Sets
		-- Standard/idle
		sets.idle.PDT = {main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1},
				head="Mallquis Chapeau +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Mallquis Saio +1", hands="Mallquis Cuffs +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Fucho-no-Obi", legs="Mallquis Trews +1", feet="Mallquis Clogs +1"}
		
		sets.idle.MDT = {
				head="Mallquis Chapeau +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
                body="Mallquis Saio +1", hands="Mallquis Cuffs +1", lring=Aug.Darkring1, rring="Defending Ring",
                back="Moonbeam Cape", waist="Fucho-no-Obi", legs="Mallquis Trews +1", feet="Mallquis Clogs +1"}
		
		sets.Resting = set_combine(sets.idle.PDT, {})
		
		-- 
		sets.idle.Standard = set_combine(sets.idle.PDT,{
				main={name="Bolelabunga", priority=2}, sub={name="Genbu's Shield", priority=1}, range="Dunna",
				-- Almaric head
				lear="Merman's Earring", rear="Etiolation Earring",
				body="Jhakri Robe +2", hands="Bagua Mitaines",
				-- 
				waist="Fucho-no-Obi", legs="Assiduity Pants +1", feet="Geomancy Sandals"})
		sets.idle.DT = set_combine(sets.idle.PDT,{
				main={name="Mafic Cudgel", priority=2}, sub={name="Genbu's Shield", priority=1}, range="Dunna",
				-- Almaric head
				head="Mallquis Chapeau +1", neck="Loricate Torque", lear="Merman's Earring", rear="Etiolation Earring",
				-- Shamash Robe
				body="Mallquis Saio +1", hands="Bagua Mitaines", lring=Aug.Darkring1, rring="Defending Ring",
				--
				back="Moonbeam Cape", waist="Fucho-no-Obi", legs="Assiduity Pants +1", feet="Mallquis Clogs +1"})
		-- Loupon DET Out 
		sets.idle.Standard.Pet = set_combine(sets.idle.PDT,{range="Dunna",
				head="Selenian Cap", lear="Merman's Earring", rear="Etiolation Earring",
				hands="Geomancy Mitaines",
				legs="Assiduity Pants", feet="Bagua Sandals"})
						
		sets.misc.Town = set_combine(sets.idle.PDT, {
				head="Azimuth Hood",
				body="Azimuth Coat", hands="Azimuth Gloves",
				legs="Azimuth Tights", feet="Geomancy Sandals"})
				
		-- JA
		sets.precast.JA["Bolster"] = {body="Bagua Tunic"}
		sets.precast.JA["Widened Compass"] = {}
		
		sets.precast.JA["Life Circle"] = {body="Geomancy Tunic"}
		sets.precast.JA["Full Circle"] = {hands="Bagua Mitaines"}
		sets.precast.JA["Mending Halation"] = {legs="Bagua Pants"}
		sets.precast.JA["Radial Arcana"] = {feet="Bagua Sandals"}
		sets.precast.JA["Cardinal Chant"] = {head="Geomancy Galero"}
		sets.precast.JA["Collimated Fervor"] = {head="Geomancy Galero"}
		
		-- Precast
		-- Magic
		sets.precast.Fastcast = {
				-- neck="Voltsurge Torque",
				head="Nahtirah Hat", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				-- Helios Gloves Kishar Ring
                body="Anhur Robe", hands="Magavan Mitts", lring="Prolix Ring",
                -- Aug.Cape.GEO.Fastcast 
				back="Lifestream Cape", waist="Witful Belt", legs="Geomancy Pants", feet="Amalric Nails"}
		sets.precast.Cure = set_combine(sets.precast.Fastcast, {
                body="Heka's Kalasiris",
                back="Pahtli Cape"})
		sets.precast.Enhancing = set_combine(sets.precast.Fastcast,{waist="Siegel Sash"})
		sets.precast.Stoneskin = set_combine(sets.precast.Enhancing,{head="Umuthi Hat"})
		sets.precast.Elemental = set_combine(sets.precast.Fastcast,{
				hands="Bagua Mitaines",
				legs="Mallquis Trews +1"})
		
		-- Midcast
		sets.midcast.Recast = set_combine(sets.idle.PDT, sets.precast.Fastcast, {waist="Witful Belt"})
		
		sets.midcast.ConserveMP = {
				lear="Gwati Earring", rear="Gifted Earring",
                hands="Bagua Mitaines",
				waist="Austerity Belt"}
		-- Geomancy
		-- 900 Skill or Bust
		sets.midcast.Geomancy = set_combine(sets.midcast.ConserveMP,{range="Dunna",
				-- neck="Incantor's Torque",
				head="Azimuth Hood", neck="Reti Pendant",
				body="Bagua Tunic", hands="Geomancy Mitaines", lring="Stikini Ring", rring="Stikini Ring",
				-- back=Nantosuelta's Cape"
				back="Lifestream Cape", legs="Bagua Pants", feet="Azimuth Gaiters"})
		
		sets.midcast.Geomancy.Indi = set_combine(sets.midcast.ConserveMP,{range="Dunna",
				-- neck="Incantor's Torque",
				head="Azimuth Hood", neck="Reti Pendant",
				body="Bagua Tunic", hands="Geomancy Mitaines", lring="Stikini Ring", rring="Stikini Ring",
				-- back=Nantosuelta's Cape"
				back="Lifestream Cape", legs="Bagua Pants", feet="Azimuth Gaiters"})
				
		-- Elemental
		-- High Resist
		sets.midcast.Elemental = {main={name="Arasy Staff", priority=2}, sub={name="Elder's Grip +1", priority=1}, 
				head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
                back=Aug.Cape.GEO.MACC, waist="Wanion Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
		-- Damage
		sets.midcast.Nuke = {main={name="Arasy Staff", priority=2}, sub={name="Elder's Grip +1", priority=1}, 
				head="Mallquis Chapeau +1", neck="Eddy Necklace", lear="Barkaro. Earring", rear="Friomisi Earring",
                body="Mallquis Saio +1", hands="Mallquis Cuffs +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
                back=Aug.Cape.GEO.MACC, waist="Wanion Belt", legs="Mallquis Trews +1", feet="Mallquis Clogs +1"}		
		
		sets.midcast.Nuke.Acc = {main={name="Arasy Staff", priority=2}, sub={name="Elder's Grip +1", priority=1}, 
				head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Barkaro. Earring", rear="Friomisi Earring",
                body="Jhakri Robe +2", hands="Mallquis Cuffs +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
                back=Aug.Cape.GEO.MACC, waist="Wanion Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}		
		
		sets.midcast.Nuke.MB = {main={name="Arasy Staff", priority=2}, sub={name="Elder's Grip +1", priority=1}, 
				head="Mallquis Chapeau +1", neck="Mizu. Kubikazari", lear="Barkaro. Earring", rear="Friomisi Earring",
                body="Mallquis Saio +1", hands="Amalric Gages", lring="Mujin Band", rring="Locus Ring",
                back=Aug.Cape.GEO.MACC, waist="Wanion Belt", legs="Mallquis Trews +1", feet="Jhakri Pigaches +1"}		
		
		--Healing Magic
		sets.midcast.Cure = {main={name="Tamaxchi",priority=2}, sub={name="Genbu's Shield",priority=1},
				head="Nahtirah Hat", neck="Colossus's Torque", lear="Novia Earring", rear="Beatific Earring",
                body="Heka's Kalasiris", hands="Telchine Gloves", lring="Sirona's Ring", rring="Stikini Ring",
                back="Tempered Cape +1", waist="Bishop's Sash", legs="Geomancy Pants", feet="Rubeus Boots"}
		
		sets.midcast.Curaga = {main={name="Tamaxchi",priority=2}, sub={name="Genbu's Shield",priority=1},
				head="Nahtirah Hat", neck="Colossus's Torque", lear="Novia Earring", rear="Enchntr. Earring +1",
                body="Heka's Kalasiris", hands="Telchine Gloves", lring="Stikini Ring", rring="Stikini Ring",
                back="Tempered Cape +1", waist="Bishop's Sash", legs="Geomancy Pants", feet="Rubeus Boots"}
	
		-- Enhancing 
		sets.midcast.Enhancing = {main={name="Kirin's Pole",priority=2}, sub={name="Fulcio Grip",priority=1},
				head="Umuthi Hat", neck="Colossus's Torque", lear="Andoaa Earring", rear="Augment. Earring",
				--hands="Ayao's Gages",
				body="Anhur Robe", lring="Stikini Ring", rring="Stikini Ring",
				--legs="Portant Pants",
				back="Merciful Cape", waist="Olympus Sash", feet="Rubeus Boots"}
		sets.midcast.Phalanx = set_combine(sets.midcast.Enhancing)
		sets.midcast.Hastespell = {ammo="Impatiens", waist="Witful Belt"}
		sets.midcast.Stoneskin = {waist="Siegel Sash"}
		sets.midcast.Aquaveil = {}
		sets.midcast.Blink = set_combine(sets.midcast.Aquaveil)
		sets.midcast.Reraise = set_combine(sets.midcast.ConserveMP)

		-- Enfeebling
		-- Potency
		sets.midcast.Enfeebling = {main={name="Arasy Staff", priority=2}, sub={name="Elder's Grip +1", priority=1}, 
				head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini ring", rring="Stikini ring",
                back=Aug.Cape.GEO.MACC, waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
		sets.midcast.Macc = {main={name="Arasy Staff",priority=2}, sub={name="Elder's Grip +1",priority=1}, 
				head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Gwati Earring", rear="Enchntr. Earring +1",
                body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini ring", rring="Stikini ring",
                back=Aug.Cape.GEO.MACC, waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}
		sets.midcast.Dia = set_combine(sets.midcast.ConserveMP)
		sets.midcast.Paralyze = set_combine(sets.midcast.Macc)
		sets.midcast.Blind = set_combine(sets.midcast.Macc)
		sets.midcast.Bio = set_combine(sets.midcast.Macc)
		sets.midcast.Slow = set_combine(sets.midcast.Macc)		
		
		-- Dark Magic
		sets.midcast.Dark = set_combine(sets.midcast.Macc, {
				head="Bagua Galero", neck="Aesir Torque",
				body="Geomancy Tunic", 
				back="Merciful Cape", waist="Fucho-no-Obi", legs="Azimuth Tights"})
		sets.midcast.Aspir = set_combine(sets.midcast.Dark,{head="Bagua Galero", waist="Fucho-no-Obi"})
		sets.midcast.Stun = set_combine(sets.midcast.Macc,{ammo="Hasty Pinion +1",
				-- neck="Voltsurge Torque",
				head="Jhakri Coronal +1", neck="Eddy Necklace", lear="Loquac. Earring", rear="Enchntr. Earring +1",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
				back=Aug.Cape.GEO.MACC, waist="Ovate Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
		
		-- Melee Sets
		sets.TP = set_combine(sets.idle.PDT, {
				head="Jhakri Coronal +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 
				
		sets.TP.Acc = set_combine(sets.TP, {
				head="Jhakri Coronal +1", neck="Iqabi Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 
				
		sets.TP.DT = set_combine(sets.idle.PDT, {
				head="Jhakri Coronal +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				--Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 

		-- Weaponskills	
		sets.precast.WS = set_combine(sets.TP, {
				head="Jhakri Coronal +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Rajas Ring", rring="Ramuh Ring +1",
				-- Aug.Cape.GEO.Melee
				back="Buquwik Cape", waist="Witful Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 
		
		sets.precast.WS.Acc = set_combine(sets.precast.WS,{})
		
		-- Club
		-- Hexa Strike 30% STR 30% MND
		sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {
				-- Caro Necklace  Telos Earring 
				head="Jhakri Coronal +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Begruding Ring
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Aug.Cape.GEO.WS
				back="Buquwik Cape", waist="Prosilio Belt +1", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 
		
		sets.precast.WS.Acc['Hexa Strike'] = set_combine(sets.precast.WS.Acc,{
				-- Caro Necklace  Telos Earring 
				head="Jhakri Coronal +1", neck="Asperity Necklace", lear="Bladeborn Earring", rear="Steelflash Earring",
				-- Begruding Ring
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Ifrit Ring +1", rring="Ifrit Ring +1",
				-- Aug.Cape.GEO.WS
				back="Buquwik Cape", waist="Grunfield Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 
		
		-- Realmrazer MND (Varies)
		sets.precast.WS['Realmrazer'] = set_combine(sets.precast.WS, {
				-- Telos Earring
				head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Cessance Earring", rear="Brutal Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
				-- Aug.Cape.GEO.WS
				back="Buquwik Cape", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 
		
		sets.precast.WS.Acc['Realmrazer'] = set_combine(sets.precast.WS, {
				-- Telos Earring
				head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Cessance Earring", rear="Steelflash Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
				-- Aug.Cape.GEO.WS
				back="Buquwik Cape", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"}) 
		
		-- Exudation 50% INT 50% MND
		sets.precast.WS['Exudation'] = set_combine(sets.precast.WS, {
				-- neck="Imbodla Necklace" Telos Earring
				head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Lifestorm Earring", rear="Steelflash Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
				-- Aug.Cape.GEO.WS Latria Sash
				back="Buquwik Cape", waist="Grunfield Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
				
		sets.precast.WS.Acc['Exudation'] = set_combine(sets.precast.WS, {
				-- neck="Imbodla Necklace" Telos Earring
				head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Lifestorm Earring", rear="Steelflash Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Stikini Ring", rring="Stikini Ring",
				-- Aug.Cape.GEO.WS  Latria Sash 
				back="Buquwik Cape", waist="Grunfield Rope", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
				
		-- Staff 
		-- Shattersoul INT (Varies)
		sets.precast.WS['Shattersoul'] = set_combine(sets.precast.WS, {
				head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Lifestorm Earring", rear="Crematio Earring",
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
				-- Aug.Cape.GEO.WS 
				back="Buquwik Cape", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
		
		-- Cataclysm 30% STR 30% INT
		sets.precast.WS['Cataclysm'] = set_combine(sets.precast.WS, {
				-- Pixie Hairpin +1 Sanctity Necklace
				head="Jhakri Coronal +1", neck="Fotia Gorget", lear="Barkaro. Earring", rear="Crematio Earring",
				-- Archon Ring 
				body="Jhakri Robe +2", hands="Jhakri Cuffs +1", lring="Shiva Ring +1", rring="Shiva Ring +1",
				-- Aug.Cape.GEO.WS  Yamabuki-No-Obi
				back="Buquwik Cape", waist="Fotia Belt", legs="Jhakri Slops +1", feet="Jhakri Pigaches +1"})
		
		-- Misc
		sets.misc.Waltz = set_combine(sets.idle.PDT,{})
		sets.misc.Steps = set_combine(sets.TP.Acc,{})
		sets.misc.flourish = set_combine(sets.midcast.Macc,{})
end