-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
  state.OffenseMode:options('None', 'Normal','Acc')
  state.CastingMode:options('Normal', 'Resistant')
  state.IdleMode:options('Normal', 'PDT', 'TPEat')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	state.ResistDefenseMode:options('MEVA')

	gear.obi_cure_waist = "Austerity Belt +1"
	gear.obi_cure_back = "Alaunus's Cape" --(30MND, macc, cure potency)

	gear.obi_nuke_waist = "Eschan Stone" -- Sekhmet Corset
	gear.obi_nuke_back = "Alaunus's Cape" -- Toro Cape

		-- Additional local binds
	send_command('bind ^` input /ma "Arise" <t>')
	send_command('bind !` input /ja "Penury" <me>')
	send_command('bind @` gs c cycle MagicBurstMode')
	send_command('bind ^@!` gs c toggle AutoCaress')
	send_command('bind ^backspace input /ja "Sacrosanctity" <me>')
	send_command('bind @backspace input /ma "Aurora Storm" <me>')
	send_command('bind !pause gs c toggle AutoSubMode') --Automatically uses sublimation.
	send_command('bind !backspace input /ja "Accession" <me>')
	send_command('bind != input /ja "Sublimation" <me>')
	send_command('bind ^delete input /ja "Dark Arts" <me>')
	send_command('bind !delete input /ja "Addendum: Black" <me>')
	send_command('bind @delete input /ja "Manifestation" <me>')
  send_command('bind != input /ja "Light Arts" <me>')
	send_command('bind ^\\\\ input /ma "Protectra V" <me>')
	send_command('bind @\\\\ input /ma "Shellra V" <me>')
	send_command('bind !\\\\ input /ma "Reraise IV" <me>')

  select_default_macro_book()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------

	sets.Weapons = {main="Queller Rod", sub="Vadose Rod"} --main="Nehushtan",sub="Nehushtan"

    -- Precast Sets

    -- Fast cast sets for spells
	sets.precast.FC = {
		main=gear.grioavolr_fc_staff, -- 9%
		sub="Clerisy Strap", -- 2%
		ammo="Impatiens",
	  head="Nahtirah Hat", --10%
		neck="Voltsurge Torque", -- 4%
		ear1="Enchntr. Earring +1", -- 2%
		ear2="Loquac. Earring", -- 2%
		body="Inyanga Jubbah +2", -- 14%
		hands="Fanatic Gloves", -- 5%
		ring1="Kishar Ring", -- 4%
		ring2="Lebeche Ring",
		--back="Perimede Cape",
		back="Alaunus's Cape", -- 10%
		waist="Witful Belt", -- 3%
    legs="Aya. Cosciales +1", --5%
		feet="Regal Pumps +1" -- 4-7%
	}

	sets.precast.FC.DT = set_combine(sets.precast.FC, {})

  sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})

  sets.precast.FC.Stoneskin = set_combine(sets.precast.FC['Enhancing Magic'], {
    head="Umuthi Hat",
    --hands="Carapacho Cuffs",
    legs="Doyen Pants"
	})

  sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC, {legs="Ebers Pant. +1"})

  sets.precast.FC.StatusRemoval = sets.precast.FC['Healing Magic']

  sets.precast.FC.Cure = set_combine(sets.precast.FC['Healing Magic'], {
    main="Queller Rod", -- 7%
		sub="Sors Shield", -- 5%
		ear1="Nourish. Earring +1", -- 4%
		ear2="Mendi. Earring", -- 5%
		legs="Doyen Pants", -- 15%
		feet="Hygieia Clogs +1", -- 18%
		--back="Pahtli Cape", -- 8%
	})

	sets.precast.FC.Cure.DT = set_combine(sets.precast.FC.Cure, {})

  sets.precast.FC.Curaga = sets.precast.FC.Cure

	sets.precast.FC.CureSolace = sets.precast.FC.Cure

	sets.precast.FC.Impact =  set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})

  -- Precast sets to enhance JAs
  sets.precast.JA.Benediction = {} --body="Piety Briault +1"

  -- Waltz set (chr and vit)
	sets.precast.Waltz = {}
	--[[head="Nahtirah Hat",ear1="Roundel Earring",
		body="Piety Briault +1",hands="Telchine Gloves",
		waist="Chaac Belt",back="Aurist's Cape +1"
	]]

    -- Weaponskill sets

    -- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {
		ammo="Hasty Pinion +1",
		head="Chironic hat",
		neck="Fotia Gorget",
		ear1="Ishvara Earring",
		ear2="Brutal Earring",
		--body="Vanir Cotehardie",
		--body="Chironic Doublet",
		hands="Chironic Gloves",
		ring1="Apate Ring",
		ring2="Begrudging Ring",
		back="Alaunus's Cape",
		waist="Fotia Belt",
		legs="Chironic Hose",
		feet="Chironic Slippers"
	}

    -- Midcast Sets

  sets.Kiting = {ring2="Shneddick Ring",feet="Herald's Gaiters"}
  sets.latent_refresh = {waist="Fucho-no-obi"}
	sets.DayIdle = {}
	sets.NightIdle = {back="Umbra Cape"}
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {}) --feet=gear.chironic_treasure_feet

	--Situational sets: Gear that is equipped on certain targets
	sets.Self_Healing = {waist="Gishdubar Sash"} --neck="Phalaina Locket",ring1="Kunaji Ring",ring2="Asklepian Ring",
	sets.Cure_Received = {waist="Gishdubar Sash"} --neck="Phalaina Locket",ring1="Kunaji Ring",ring2="Asklepian Ring",
	sets.Self_Refresh = {waist="Gishdubar Sash",feet="Inspirited Boots"} --back="Grapevine Cape",

	-- Conserve Mp set for spells that don't need anything else, for set_combine.

	sets.ConserveMP = {}

	sets.midcast.Teleport = sets.ConserveMP

	-- Gear for Magic Burst mode.
  sets.MagicBurst = {neck="Mizu. Kubikazari",ring1="Mujin Band",ring2="Locus Ring"}

	sets.midcast.FastRecast = {
		main=gear.grioavolr_fc_staff,
		sub="Clerisy Strap",
		ammo="Hasty Pinion +1",
		head="Nahtirah Hat",
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Loquac. Earring",
		body="Inyanga Jubbah +2",
		hands="Fanatic Gloves",
		ring1="Prolix Ring",
		ring2="Kishar Ring",
		back="Alaunus's Cape",
		waist="Witful Belt",
		--legs="Lengo Pants",
		legs="Ebers Pant. +1",
		feet="Regal Pumps +1"
	}

  -- Cure sets

	sets.midcast['Full Cure'] = sets.midcast.FastRecast

	sets.midcast.Cure = {
		main="Queller Rod",         -- 10%
		sub="Sors Shield",          -- 3%
		ammo="Hydrocera",
		head="Kaykaus Mitra",       -- 10%
		neck="Incanter's Torque",
		ear1="Glorious Earring",
		ear2="Nourish. Earring +1", -- 3%
    --body="Kaykaus Bliaut",
		body="Ebers Bliaud +1",
		--hands="Theophany Mitts +3",
		hands="Kaykaus Cuffs",      -- 10%
    --ring1="Janniston Ring",
    ring1="Sirona's Ring",
		ring2="Lebeche Ring",       -- 3%
    --back="Alaunus's Cape",
    back="Solemnity Cape",      -- 7%
		waist="Luminary Sash",
		legs="Ebers Pant. +1",
		feet="Kaykaus Boots"        -- 10%
	}

	sets.midcast.CureSolace = set_combine(sets.midcast.Cure, {body="Ebers Bliaud +1"})

	sets.midcast.LightWeatherCure = set_combine(sets.midcast.Cure, {
		main="Chatoyant Staff",
		sub="Achaq grip",
		back="Twilight Cape",
		waist="Hachirin-no-Obi"
	})

	sets.midcast.LightWeatherCureSolace = set_combine(sets.midcast.LightWeatherCure, {body="Ebers Bliaud +1"})

	sets.midcast.LightDayCure = set_combine(sets.midcast.Cure, {
    back="Twilight Cape",
		waist="Hachirin-no-Obi"
	})

	sets.midcast.LightDayCureSolace = set_combine(sets.midcast.LightDayCure, {body="Ebers Bliaud +1"})

	sets.midcast.Curaga = set_combine(sets.midcast.Cure, {}) --body="Theo. Briault +3"

	sets.midcast.LightWeatherCuraga = sets.midcast.LightWeatherCure

	sets.midcast.LightDayCuraga = set_combine(sets.midcast.Curaga, {
		back="Twilight Cape",
		waist="Hachirin-no-Obi"
	})

  --Melee Curesets are used whenever your OffenseMode is set to anything but None.
	sets.midcast.MeleeCure = {ammo="Pemphredo Tathlum",
		head="Kaykaus Mitra",
    neck="Incanter's Torque",
    ear1="Glorious Earring",
    ear2="Nourish. Earring +1",
    --body="Kaykaus Bliaut",
		body="Ebers Bliaud +1",
    hands="Kaykaus Cuffs",
    --ring1="Janniston Ring",
    ring1="Sirona's Ring",
    ring2="Lebeche Ring",
		--back="Alaunus's Cape",
    back="Solemnity Cape",
    waist="Luminary Sash",
    legs="Ebers Pant. +1",
    feet="Kaykaus Boots"
  }

  sets.midcast.MeleeCureSolace = set_combine(sets.midcast.MeleeCure, {body="Ebers Bliaud +1"})
	sets.midcast.MeleeLightWeatherCure = set_combine(sets.midcast.MeleeCure, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightWeatherCureSolace = set_combine(sets.midcast.MeleeCure, {body="Ebers Bliaud +1",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCureSolace = set_combine(sets.midcast.MeleeCure, {body="Ebers Bliaud +1",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCure = set_combine(sets.midcast.MeleeCure, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeCuraga = set_combine(sets.midcast.MeleeCure, {})
	sets.midcast.MeleeLightWeatherCuraga = set_combine(sets.midcast.MeleeCure, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCuraga = set_combine(sets.midcast.MeleeCure, {waist="Hachirin-no-Obi"})

	sets.midcast.CureSolace.DT = set_combine(sets.midcast.Cure.DT, {body="Ebers Bliaud +1"})
	sets.midcast.LightWeatherCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.LightWeatherCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body="Ebers Bliaud +1",waist="Hachirin-no-Obi"})
	sets.midcast.LightDayCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body="Ebers Bliaud +1",waist="Hachirin-no-Obi"})
	sets.midcast.LightDayCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.Curaga.DT = set_combine(sets.midcast.Cure.DT, {})
	sets.midcast.LightWeatherCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.LightDayCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})

  sets.midcast.MeleeCure.DT = set_combine(sets.midcast.Cure.DT, {})
	sets.midcast.MeleeCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body="Ebers Bliaud +1"})
	sets.midcast.MeleeLightWeatherCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightWeatherCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body="Ebers Bliaud +1",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCureSolace.DT = set_combine(sets.midcast.Cure.DT, {body="Ebers Bliaud +1",waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCure.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeCuraga.DT = set_combine(sets.midcast.Cure.DT, {})
	sets.midcast.MeleeLightWeatherCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})
	sets.midcast.MeleeLightDayCuraga.DT = set_combine(sets.midcast.Cure.DT, {waist="Hachirin-no-Obi"})

	sets.midcast.StatusRemoval = {
		main="Yagrush",
    --sub="Ammurapi Shield",
		sub="Genmei Shield",
		ammo="Hasty Pinion +1",
		head="Ebers Cap +1",
		neck="Voltsurge Torque",
		ear1="Enchntr. Earring +1",
		ear2="Loquacious Earring",
		--body="Hedera cotehardie",
		body="Inyanga Jubbah +2",
		hands="Fanatic Gloves",
		ring1="Prolix Ring",
		ring2="Kishar Ring",
		back="Alaunus's Cape",
		--legs="Lengo Pants",
		waist="Witful Belt",
		legs="Ebers Pant. +1",
		feet="Regal Pumps +1"
	}

	sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
		neck="Malison Medallion", --HQ version Debilis Medallion
		body="Ebers Bliaud +1",
		hands="Fanatic Gloves",
		ring1="Ephedra Ring", --HQ version Haoma's Ring
		ring2="Ephedra Ring",
		back="Alaunus's Cape",
		legs="Theo. Pant. +1",
		--feet="Vanya Clogs"
		feet="Gende. Galosh. +1"
	})

    -- 110 total Enhancing Magic Skill; caps even without Light Arts
	--[[sets.midcast['Enhancing Magic'] = {main="Gada",sub="Ammurapi Shield",ammo="Hasty Pinion +1",
		head="Telchine Cap",neck="Incanter's Torque",ear1="Andoaa Earring",ear2="Gifted Earring",
		body="Telchine Chas.",hands="Telchine Gloves",ring1="Stikini Ring",ring2="Stikini Ring",
		back="Perimede Cape",waist="Olympus Sash",legs="Telchine Braconi",feet="Theo. Duckbills +3"}]]

	sets.midcast['Enhancing Magic'] = {
		main="Gada",
		--sub="Ammurapi Shield",
		sub="Genmei Shield",
		ammo="Hasty Pinion +1",
		head="Telchine Cap",
		neck="Incanter's Torque",
		--body="Anhur Robe",
		hands="Telchine Gloves",
		--ring1="Stikini Ring",
		--ring2="Stikini Ring",
		--ear1="Andoaa Earring",
		--ear2="Gifted Earring",
		back="Perimede Cape",
		waist="Olympus Sash",
		--waist="Cascade Belt",
		legs="Telchine Braconi",
    --feet="Theo. Duckbills +3"
		feet="Ebers Duckbills +1"
	}

	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {
		 --ear2="Earthcry Earring",
		neck="Nodens Gorget",
		waist="Siegel Sash",
		--legs="Shedir Seraweels"
	})

	sets.midcast.Auspice = set_combine(sets.midcast['Enhancing Magic'], {feet="Ebers Duckbills +1"})

	sets.midcast.Aquaveil = set_combine(sets.midcast['Enhancing Magic'], {
    main="Vadose Rod",
    --sub="Ammurapi Shield",
    sub="Genmei Shield",
    --waist="Emphatikos Rope",
    --legs="Shedir Seraweels"
  })

	sets.midcast.Regen = set_combine(sets.midcast['Enhancing Magic'], {
		main="Bolelabunga",
		sub="Genmei Shield",
		head="Inyanga Tiara +2",
		--body="Piety Briault +1",
		hands="Ebers Mitts +1",
		legs="Theo. Pant. +1"
	})

	sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {feet="Piety Duckbills"}) --ring2="Sheltered Ring",ear1="Gifted Earring",waist="Sekhmet Corset"
	sets.midcast.Protectra = set_combine(sets.midcast['Enhancing Magic'], {feet="Piety Duckbills"}) --ring2="Sheltered Ring",ear1="Gifted Earring",waist="Sekhmet Corset"
	sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], {legs="Piety Pantaloons"}) --ring2="Sheltered Ring",ear1="Gifted Earring",waist="Sekhmet Corset"
	sets.midcast.Shellra = set_combine(sets.midcast['Enhancing Magic'], {legs="Piety Pantaloons"}) --ring2="Sheltered Ring",ear1="Gifted Earring",waist="Sekhmet Corset"

	sets.midcast.BarElement = set_combine(sets.midcast['Enhancing Magic'], {
		main="Beneficus",
		--sub="Ammurapi Shield",
    sub="Genmei Shield",
		head="Ebers Cap +1",
		body="Ebers Bliaud +1",
		hands="Ebers Mitts +1",
		legs="Piety Pantaloons"
	  })

	--[[sets.midcast.Impact = {main="Oranyan",sub="Enki Strap",ammo="Pemphredo Tathlum",
		head=empty,neck="Erra Pendant",ear1="Regal Earring",ear2="Digni. Earring",
		body="Twilight Cloak",hands=gear.chironic_enfeeble_hands,ring1="Stikini Ring",ring2="Stikini Ring",
		back="Toro Cape",waist="Acuity Belt +1",legs="Chironic Hose",feet=gear.chironic_nuke_feet}]]

	sets.midcast['Elemental Magic'] = {
    --main=gear.grioavolr_nuke_staff,
    main="Grioavolr",
    --sub="Zuuxowu Grip",
    sub="Giuoco Grip",
    --ammo="Dosis Tathlum",
    ammo="Ghastly Tathlum +1",
		--head="Buremte Hat",
    head="Inyanga Tiara +2",
    --neck="Baetyl Pendant",
    neck="Sanctity Necklace",
    --ear1="Regal Earring",
    --ear2="Crematio Earring",
    ear1="Friomisi Earring",
    ear2="Hecate's Earring",
		body="Witching Robe",
    --hands=gear.chironic_enfeeble_hands,
    hands="Chironic Gloves",
    --ring1="Shiva Ring +1",
    --ring2="Shiva Ring +1",
    ring1="Strendu Ring",
    ring2="Acumen Ring",
		--back="Toro Cape",
    back="Alaunus's Cape",
    waist=gear.ElementalObi,
    legs="Chironic Hose",
    --feet=gear.chironic_nuke_feet
    feet="Chironic Slippers"
  }

	sets.midcast['Elemental Magic'].Resistant = set_combine(sets.midcast['Elemental Magic'], {
    --main=gear.grioavolr_nuke_staff,
    main="Grioavolr",
    sub="Niobid Strap",
    neck="Sanctity Necklace",
    --body="Vanir Cotehardie",
    --waist="Yamabuki-no-Obi"
  })

	sets.midcast['Divine Magic'] = {
    --main=-"Oranyan",
    main="Grioavolr",
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
		head="Befouled Crown",
    neck="Incanter's Torque",
    --ear1="Regal Earring",
    --ear2="Digni. Earring",
    ear1="Friomisi Earring",
    ear2="Hecate's Earring",
		body="Inyanga Jubbah +2",
    hands="Fanatic Gloves",
    --ring1="Stikini Ring",
    --ring2="Stikini Ring",
    ring1="Strendu Ring",
    ring2="Acumen Ring",
    --back="Aurist's Cape +1",
    back="Alaunus's Cape",
    waist="Luminary Sash",
    legs="Chironic Hose",
    --feet=gear.chironic_nuke_feet
    feet="Chironic Slippers"
  }

	sets.midcast['Dark Magic'] = {
    --main="Oranyan",
    main="Grioavolr",
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Befouled Crown",
    neck="Erra Pendant",
    --ear1="Regal Earring",
    --ear2="Digni. Earring",
    ear1="Friomisi Earring",
    ear2="Hecate's Earring",
		body="Inyanga Jubbah +2",
    --hands=gear.chironic_enfeeble_hands,
    hands="Inyan. Dastanas +1",
    --ring1="Stikini Ring",
    --ring2="Stikini Ring",
    ring1="Strendu Ring",
    ring2="Acumen Ring",
		--back="Aurist's Cape +1",
    back="Alaunus's Cape",
    waist="Acuity Belt +1",
    legs="Chironic Hose",
    --feet=gear.chironic_nuke_feet
    feet="Inyan. Crackows +1"
  }

  sets.midcast.Drain = set_combine(sets.midcast['Dark Magic'], {
    --main="Rubicundity",
    --sub="Ammurapi Shield",
    head="Pixie Hairpin +1",
    ring1="Evanescence Ring",
    ring2="Archon Ring",
    waist="Fucho-no-obi"
  })

  sets.midcast.Drain.Resistant = set_combine(sets.midcast.Drain, {
    head="Befouled Crown",
    --body="Chironic Doublet",
    --ring1="Stikini Ring",
    --ring2="Stikini Ring",
  })

  sets.midcast.Aspir = sets.midcast.Drain
  sets.midcast.Aspir.Resistant = sets.midcast.Drain.Resistant

	sets.midcast.Stun = {
    --main="Oranyan",
    main="Grioavolr",
    sub="Clerisy Strap",
    ammo="Hasty Pinion +1",
		head="Nahtirah Hat",
    neck="Voltsurge Torque",
    ear1="Enchntr. Earring +1",
    ear2="Loquacious Earring",
		body="Inyanga Jubbah +2",
    hands="Fanatic Gloves",
    ring1="Kishar Ring",
    --ring2="Stikini Ring",
    ring2="Prolix Ring",
		--back="Aurist's Cape +1",
    back="Alaunus's Cape",
    waist="Witful Belt",
    --legs="Lengo Pants",
    legs="Ebers Pant. +1",
    feet="Regal Pumps +1"
  }

	sets.midcast.Stun.Resistant = set_combine(sets.midcast.Stun, {
    --main="Oranyan",
    main="Grioavolr",
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    neck="Erra Pendant",
    --ear1="Regal Earring",
    ear1="Hermetic Earring",
    ear2="Digni. Earring",
    --ring1="Stikini Ring",
    --ring2="Stikini Ring",
    --back="Aurist's Cape +1",
    waist="Acuity Belt +1",
    legs="Chironic Hose",
    --feet=gear.chironic_nuke_feet
    feet="Inyan. Crackows +1"
  })

	sets.midcast['Enfeebling Magic'] = {
    --main="Oranyan",
    main="Grioavolr",
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
		head="Befouled Crown",
    neck="Erra Pendant",
    --ear1="Regal Earring",
    ear1="Hermetic Earring",
    ear2="Digni. Earring",
		--body="Chironic Doublet",
    --body="Theo. Briault +3",
    body="Inyanga Jubbah +2",
    --hands=gear.chironic_enfeeble_hands,
    hands="Inyan. Dastanas +1",
    ring1="Kishar Ring",
    --ring2="Stikini Ring",
    ring2="Vertigo Ring",
		--back="Aurist's Cape +1",
    back="Alaunus's Cape",
    waist="Luminary Sash",
    legs="Chironic Hose",
    --feet="Uk'uxkaj Boots"
    feet="Inyan. Crackows +1"
  }

	sets.midcast['Enfeebling Magic'].Resistant = set_combine(sets.midcast['Enfeebling Magic'], {
    --ring1="Stikini Ring",
    --ring2="Stikini Ring",
    --feet="Theo. Duckbills +3"
  })

	sets.midcast.Dia = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast.Diaga = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Dia II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast.Bio = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)
	sets.midcast['Bio II'] = set_combine(sets.midcast['Enfeebling Magic'], sets.TreasureHunter)

  sets.midcast.ElementalEnfeeble = set_combine(sets.midcast['Enfeebling Magic'], {})
  sets.midcast.ElementalEnfeeble.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {})

	sets.midcast.IntEnfeebles = set_combine(sets.midcast['Enfeebling Magic'], {waist="Acuity Belt +1"})
	sets.midcast.IntEnfeebles.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {waist="Acuity Belt +1"})

	sets.midcast.MndEnfeebles = set_combine(sets.midcast['Enfeebling Magic'], {back="Alaunus's Cape"})
	sets.midcast.MndEnfeebles.Resistant = set_combine(sets.midcast['Enfeebling Magic'].Resistant, {back="Alaunus's Cape",ring1="Stikini Ring"})

  -- Sets to return to when not performing an action.

  -- Resting sets
	--[[sets.resting = {main="Chatoyant Staff",sub="Oneiros Grip",ammo="Homiliary",
		head="Befouled Crown",neck="Chrys. Torque",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Ebers Bliaud +1",hands=gear.chironic_refresh_hands,ring1="Defending Ring",ring2="Dark Ring",
		back="Umbra Cape",waist="Fucho-no-obi",legs="Assid. Pants +1",feet=gear.chironic_refresh_feet}]]
	sets.resting = {
		main="Boonwell Staff",
		feet="Chelona Boots"
	}

  -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle = {
    main="Queller Rod",
    sub="Genmei Shield",
    ammo="Homiliary",
    --head="Chironic Hat", -- With Refresh on it.
    head="Befouled Crown",
    neck="Loricate Torque +1",
    ear1="Etiolation Earring",
    --ear2="Ethereal Earring",
    ear2="Genmei Earring",
    --body="Shamash Robe",
    body="Witching Robe",
    hands=gear.chironic_refresh_hands,
    --ring1="Dark Ring",
    --ring2="Defending Ring",
    ring1="Patricius Ring",
    ring2="Vertigo Ring",
    back="Umbra Cape",
    --waist="Flax Sash",
    --waist="Slipor Sash",
    waist="Isa Belt",
    legs="Assid. Pants +1",
    feet=gear.chironic_refresh_feet
  }

	sets.idle.PDT = set_combine(sets.idle, {
    --main="Terra's Staff",
    --sub="Oneiros Grip", "Mensch Strap",
    --ammo="Staunch Tathlum",
    head="Aya. Zucchetto +1",
    --body="Vrikodara Jupon",
    hands="Aya. Manopolas +1",
    legs="Aya. Cosciales +1"
  })

  sets.idle.TPEat = set_combine(sets.idle, {neck="Chrys. Torque"})
	sets.idle.Weak = set_combine(sets.idle, {waist="Witful Belt"})

  -- Defense sets

	sets.defense.PDT = set_combine(sets.idle.PDT, {
    body="Ayanmo Corazza +2",
    feet="Aya. Gambieras +1"
  })

	sets.defense.MDT = set_combine(sets.defense.PDT, {
    head="Inyanga Tiara +2",
    --ear2="Sanare Earring",
    body="Inyanga Jubbah +2",
    hands=gear.chironic_refresh_hands,
    ring2="Shadow Ring",
    legs="Inyanga Shalwar +1",
    feet="Inyan. Crackows +1"
  })

  sets.defense.MEVA = set_combine(sets.defense.MDT, {
    --neck="Warder's Charm +1",
    --ring1="Vengeful Ring",
    --ring2="Purity Ring",
    --back="Aurist's Cape +1",
    waist="Luminary Sash"
  })

	-- Gear for specific elemental nukes.
	sets.element.Wind = {main="Marin Staff"} -- +1 Version
	sets.element.Ice = {main="Ngqoqwanb"}
	sets.element.Earth = {neck="Quanpur Necklace"}

	-- Engaged sets

  -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
  -- sets if more refined versions aren't defined.
  -- If you create a set with both offense and defense modes, the offense mode should be first.
  -- EG: sets.engaged.Dagger.Accuracy.Evasion

  -- Basic set for if no TP weapon is defined.
  sets.engaged = {
    --ammo="Staunch Tathlum",
    ammo="Amar Cluster",
    head="Aya. Zucchetto +1",
    neck="Asperity Necklace",
    ear1="Dudgeon Earring",
    ear2="Heartseeker Earring",
		body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +1",
    ring1="Petrov Ring",
    ring2="Ilabrat Ring",
    --back="Kayapa Cape",
    --waist="Shetal Stone",
    waist="Windbuffet Belt +1",
    legs="Aya. Cosciales +1",
    --feet="Battlecast Gaiters"
    feet="Aya. Gambieras +1"
  }

  sets.engaged.Acc = {ammo="Hasty Pinion +1",
    head="Aya. Zucchetto +1",neck="Combatant's Torque",ear1="Telos Earring",ear2="Brutal Earring",
    body="Ayanmo Corazza +2",hands="Aya. Manopolas +1",ring1="Petrov Ring",Ring2="Ilabrat Ring",
    back="Kayapa Cape",waist="Olseni Belt",legs="Aya. Cosciales +2",feet="Aya. Gambieras +1"}

  sets.engaged.DW = {ammo="Staunch Tathlum",
    head="Aya. Zucchetto +1",neck="Asperity Necklace",ear1="Telos Earring",ear2="Suppanomimi",
    body="Ayanmo Corazza +2",hands="Aya. Manopolas +1",ring1="Petrov Ring",Ring2="Ilabrat Ring",
    back="Kayapa Cape",waist="Shetal Stone",legs="Aya. Cosciales +2",feet="Battlecast Gaiters"}

  sets.engaged.DW.Acc = {ammo="Hasty Pinion +1",
    head="Aya. Zucchetto +1",neck="Combatant's Torque",ear1="Telos Earring",ear2="Suppanomimi",
    body="Ayanmo Corazza +2",hands="Aya. Manopolas +1",ring1="Petrov Ring",Ring2="Ilabrat Ring",
    back="Kayapa Cape",waist="Shetal Stone",legs="Aya. Cosciales +2",feet="Aya. Gambieras +1"}

  -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
  sets.buff['Divine Caress'] = {hands="Ebers Mitts +1",back="Mending Cape"}

	sets.HPDown = {
    head="Pixie Hairpin +1",
    ear1="Mendicant's Earring",
    ear2="Evans Earring",
		--body="Zendik Robe",
    --hands="Hieros Mittens",
    --ring1="Mephitas's Ring +1",
    --ring2="Mephitas's Ring",
		back="Swith Cape",
    --waist="Flax Sash",
    --legs="Shedir Seraweels",
    feet=""
  }

  sets.HPCure = {main="Queller Rod",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Blistering Sallet +1",neck="Nodens Gorget",ear1="Etiolation Earring",ear2="Ethereal Earring",
		body="Kaykaus Bliaut",hands="Kaykaus Cuffs",ring1="Kunaji Ring",ring2="Meridian Ring",
		back="Alaunus's Cape",waist="Eschan Stone",legs="Ebers Pant. +1",feet="Kaykaus Boots"}

	sets.buff.Doom = set_combine(sets.buff.Doom, {})

end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	set_macro_page(1, 3)
end