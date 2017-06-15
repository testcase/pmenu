{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 59.0, 103.0, 1224.0, 956.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "pmenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2.0, 3.0, 40.0, 20.0 ],
					"pmenu_dict" : 					{

					}
,
					"style" : "",
					"text" : " "
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "pmenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 343.0, 673.0, 121.0, 20.0 ],
					"pmenu_dict" : 					{

					}
,
					"style" : "",
					"text" : " "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 793.0, 237.0, 92.0, 22.0 ],
					"style" : "",
					"text" : "set name golsd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 699.0, 420.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 768.0, 458.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 900.0, 434.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 785.0, 237.0, 92.0, 22.0 ],
					"style" : "",
					"text" : "set name golsd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 691.0, 420.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 631.0, 255.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 682.0, 241.0, 35.0, 22.0 ],
					"style" : "",
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 691.0, 272.0, 159.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "dict soundfiles pmenu6.json"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "pmenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 691.0, 389.0, 210.0, 20.0 ],
					"pmenu_dict" : 					{
						"name" : "audiofilelibs",
						"contents" : [ "drumLoop.aiff", "jongly.aif", 							{
								"name" : "Fantasy and Fiction",
								"contents" : [ "Above The Cathedral.wav", "Alchemist.wav", "An Army Approacheth.wav" ]
							}
, 							{
								"name" : "Electrotherapy",
								"contents" : [ "Alternating Current.wav", "Announcement Electric Healing.wav", "Biofeedback.wav" ]
							}
, "foo", 							{
								"name" : "sacre.aiff",
								"data" : [ 23, 24, 23 ]
							}
 ]
					}
,
					"style" : "",
					"text" : "jongly.aif",
					"varname" : "_pmenu[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 323.0, 196.0, 92.0, 22.0 ],
					"style" : "",
					"text" : "set name golsd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.0, 379.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.0, 142.0, 35.0, 22.0 ],
					"style" : "",
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 298.0, 417.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 102.0, 122.0, 91.0, 22.0 ],
					"style" : "",
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 259.0, 86.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "recall 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 30.0, 47.0, 22.0 ],
					"style" : "",
					"text" : "store 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 106.0, 54.0, 58.0, 22.0 ],
					"restore" : 					{
						"_pmenu" : [ 275 ],
						"_pmenu[1]" : [ 2 ]
					}
,
					"style" : "",
					"text" : "autopattr",
					"varname" : "u894000411"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 85.0, 75.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 1025, 44, 1466, 529 ],
						"parameter_enable" : 0,
						"storage_rect" : [ 933, 589, 1533, 889 ]
					}
,
					"style" : "",
					"text" : "pattrstorage",
					"varname" : "u918000406"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 430.0, 393.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 415.0, 79.0, 150.0, 33.0 ],
					"style" : "",
					"text" : "0.3764705882 0.3843137255 0.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 196.0, 92.0, 22.0 ],
					"style" : "",
					"text" : "set name golsd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 221.0, 379.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 161.0, 214.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 212.0, 200.0, 35.0, 22.0 ],
					"style" : "",
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 221.0, 231.0, 159.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "dict soundfiles pmenu6.json"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "pmenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 221.0, 348.0, 210.0, 20.0 ],
					"pmenu_dict" : 					{
						"name" : "soundfiles",
						"contents" : [ 							{
								"name" : "Basement",
								"type" : "filelist",
								"contents" : [ "A Chamber Unknown.wav", "A Presence Nearby.wav", "A Room No One Discusses.wav", "Abandoned Shaft.wav", "An Unsettling Draft Of Air.wav", "Ancient Stone Cellar.wav", "Broken Light Bulbs.wav", "Camel Crickets.wav", "Clinical Waste Bin.wav", "Cold Chills And Standing Hairs.wav", "Conspiring Cockroaches.wav", "Damaged Equipment.wav", "Dark Corners.wav", "Distant Rumblings.wav", "Don't Drop The Lamp.wav", "Dread Before Descent.wav", "Echoes From Below.wav", "Emergence.wav", "Empty Light Socket.wav", "Exposed Wires.wav", "Fallen Matchstick.wav", "Floor Drain Montage.wav", "Forgotten Passages.wav", "Ghostly Whispers.wav", "Hurried Repairs.wav", "Making Way For Electricity.wav", "Memories Of An Inferno.wav", "Mildew And Tile.wav", "Moldy Mortar.wav", "Nurses Fright.wav", "Old Storage Room.wav", "Original Cell Block.wav", "Pet Rat.wav", "Plumbing.wav", "Reverberations Of Brick.wav", "Rumors Of Hauntings.wav", "Running Water.wav", "Rusted Pipes.wav", "Rustling In The Joists.wav", "Seepage.wav", "Sinister Shadows.wav", "Small Washroom.wav", "Sounds Playing Off The Walls.wav", "Stained Concrete Slab.wav", "Startled By A Very Large Spider.wav", "Stumble On The Stairs.wav", "Termite Colony.wav", "The Door That Must Remain Locked.wav", "The Level Below.wav", "The Night - Underground.wav", "Unidentified Hissing.wav", "Unnatural Calm.wav", "Unsettling Stories Of Untold Evil.wav", "Visceral Groaning.wav", "Voices From Above.wav" ]
							}
, 							{
								"name" : "Boiler Room",
								"type" : "filelist",
								"contents" : [ "A Warning.wav", "Always A Bit Humid.wav", "Boiler Interior.wav", "Boiling Condensation.wav", "Broken Thermometer.wav", "Cacophonous When Running.wav", "Cast Iron Toolkit.wav", "Checking The Gauges.wav", "Coal Furnace.wav", "Dangerous Blockage.wav", "Dank Stench.wav", "Disaster Averted.wav", "Dropped The Wrench.wav", "Erosion In The Plumbing.wav", "Every Last Drop.wav", "Falling Into Disrepair.wav", "Flowing.wav", "Functioning Regulator.wav", "Generators.wav", "Gurgling Kettle.wav", "Hard Water.wav", "Heat Exchanger.wav", "Impending Explosion.wav", "In The Rat Trap.wav", "Inspection In Progress.wav", "Jumpy Gauges.wav", "Killing Spiders To Pass The Time.wav", "Leaky Pipes.wav", "Looks Like Condensation.wav", "Maintenance Overdue.wav", "Metal Fatigue.wav", "Mineral Deposits.wav", "No Safety Valve.wav", "Normal Operation.wav", "Opening Valves.wav", "Pipe Echoes.wav", "Pressure Valve.wav", "Puffing Along.wav", "Radiation System.wav", "Rated At 160 PSI.wav", "Rats Nest.wav", "Releasing Steam.wav", "Repairing A Leak.wav", "Rusted Gear.wav", "Rusted Radiator.wav", "Shutting Down.wav", "Starting Up The Pump.wav", "Stoking The Fires.wav", "Temperature Gauge.wav", "The Boiler Creeps.wav", "The Pumps.wav", "Under The Boiler.wav", "Venting The Excess.wav", "Water Recycling.wav", "Wide Open.wav" ]
							}
, 							{
								"name" : "Colors",
								"type" : "filelist",
								"contents" : [ "Aureoline.wav", "Banana Yellow.wav", "Brick Red.wav", "Burgundy.wav", "Burnt Orange.wav", "Burnt Umber.wav", "Butter Yellow.wav", "Cadmium.wav", "Carrot Orange.wav", "Cedar.wav", "Cerise.wav", "Cerulean.wav", "Chardonnay.wav", "Chartreuse.wav", "Cherry Blossom.wav", "Chestnut.wav", "Cobalt Blue.wav", "Copper.wav", "Coral Pink.wav", "Cotton Candy.wav", "Cranberry.wav", "Cyan.wav", "Dandelion.wav", "Desert Red.wav", "Desert Sand.wav", "Dingy Grey.wav", "Dull Grey.wav", "Eggplant.wav", "Eggshell.wav", "Fern Green.wav", "Forest Green.wav", "Fuchsia.wav", "Goldenrod.wav", "Indigo.wav", "Infrared.wav", "Iridium.wav", "Khaki.wav", "Lavender.wav", "Lemon Chiffon.wav", "Lime Green.wav", "Magenta.wav", "Mahogany.wav", "Maize.wav", "Manila Folder.wav", "Maple.wav", "Melon.wav", "Midnight Blue.wav", "Moccasin.wav", "Mother of Pearl.wav", "Mulberry.wav", "Neon.wav", "Ochre.wav", "Olive.wav", "Orchid.wav", "Peach.wav", "Pewter.wav", "Plum.wav", "Porphyrous.wav", "Primary Blue.wav", "Rain Forest.wav", "Raspberry.wav", "Rust.wav", "Salmon.wav", "Sea Foam.wav", "Sepia.wav", "Shadow.wav", "Sienna.wav", "Slate Blue.wav", "Slate Green.wav", "Slate Grey.wav", "Snow White.wav", "Sodium Yellow.wav", "Stainless Steel.wav", "Sterling Silver.wav", "Sunrise Orange.wav", "Sunset Red.wav", "Tan.wav", "Terre Verte.wav", "Thistle.wav", "Titanium Grey.wav", "Turquoise.wav", "Ultramarine.wav", "Ultraviolet.wav", "Umber.wav", "Viridian.wav", "Walnut.wav", "Wheat.wav", "Wisteria.wav" ]
							}
, 							{
								"name" : "Cosmic",
								"type" : "filelist",
								"contents" : [ "A Billion Billion Years.wav", "Arecibo At Night.wav", "Black Sun.wav", "Bright Vortex.wav", "Brown Dwarf Revisited.wav", "Confluence of Planets.wav", "Cosmic Microwave Background.wav", "Curved Space.wav", "Cygnus X1.wav", "Earth Stands Still.wav", "Eschatology.wav", "Event Horizon.wav", "False Vacuum.wav", "Folding Space.wav", "For Carl.wav", "Galactic Cluster.wav", "Gamma Ray Burst.wav", "Geomagnetic Storm.wav", "Geosynchronous.wav", "Heat Death.wav", "Heavenly Resonance.wav", "Heliopause.wav", "Hubble's Constant.wav", "Interstellar Dust.wav", "Lagrange Point.wav", "Lunar Monolith.wav", "M6 Transmission.wav", "Mercurian Frost.wav", "Microwave Background.wav", "N-Dimensional.wav", "Near Miss.wav", "Neutron Star.wav", "Oort Cloud.wav", "Orbital Resonance.wav", "Planetary Nebula.wav", "Red Giant.wav", "Sailing To The Pleiades.wav", "Sands of Mars.wav", "Sea of Tranquility.wav", "Snowmelt on Europa.wav", "Solar Wind.wav", "Song of the Spheres.wav", "Spiral Descent.wav", "Star Nursery.wav", "Stellar Prominence.wav", "String Theory.wav", "Superluminal.wav", "The Iridescent Halo.wav", "The Pulsar Speaks.wav", "The Secret of Dark Matter.wav", "The Smog On Titan.wav", "Venutian Weather.wav", "Very Large Array.wav", "Visible To The Naked Eye.wav", "When Worlds Collide.wav", "White Dwarf.wav", "Zero Tau.wav" ]
							}
, 							{
								"name" : "Electrotherapy",
								"type" : "filelist",
								"contents" : [ "Alternating Current.wav", "Announcement Electric Healing.wav", "Biofeedback.wav", "Carbon Arc Lamp.wav", "Current Interrupted.wav", "Direct Electric Shock Treatment.wav", "Electrical Interference.wav", "Electrode Clasp.wav", "Euphoric Results.wav", "Galvanic Battery.wav", "Generating Static Electricity.wav", "Healing Oscillators.wav", "High Frequency Apparatus.wav", "Induction Coil.wav", "Kicking Coil Interrupter.wav", "Kinraide Coil For Direct Current.wav", "Lightning Cabinet.wav", "Like Tesla Coils For Your Head.wav", "Magneto-Electro Machine.wav", "Managing Electrical Current.wav", "Oscilloclast.wav", "Overbeck Rejuvenator.wav", "Oxydonor.wav", "Oxypathor.wav", "Polysine Generator.wav", "Power Failure.wav", "Power Surge.wav", "Prague Coil In Operation.wav", "Producing Excess Currents.wav", "Regulating Direct Current.wav", "Resonator.wav", "Rochefort-Wydts Experiments.wav", "Slight Jolt.wav", "Spark Gaps.wav", "Static Electric Machine.wav", "Subconscious Electron Regulation.wav", "Switching To Backup Generators.wav", "TENS.wav", "Tesla Coil.wav", "Testing Circuits.wav", "The Brain, An Electrical Machine.wav", "Too Much Power.wav", "Useless Excess Current.wav", "Vacuum Discharge Tube.wav", "Vulcan Discharges.wav", "Warming Up The Machine.wav", "Wettmer Method.wav", "X-Ray Tube.wav" ]
							}
, 							{
								"name" : "Fantasy and Fiction",
								"type" : "filelist",
								"contents" : [ "Above The Cathedral.wav", "Alchemist.wav", "An Army Approacheth.wav", "An Orc Is Born.wav", "Angelic.wav", "Back in 1984.wav", "Black Magic and Roses.wav", "Camelot Falls.wav", "Cheshire Cat.wav", "Childhood's End.wav", "Cinderella's Record Player.wav", "Cylon Ambience.wav", "Descending From Olympus.wav", "Desert King.wav", "Droid Tantrum.wav", "Elvish Funeral Dirge.wav", "Encampment.wav", "Encloistered.wav", "Faerie Mud.wav", "Faerie Queen.wav", "Fall of Rome.wav", "Forgotten Himalayan Culture.wav", "Gom Jabbar.wav", "Hall of Mystery.wav", "Horse Whisperer.wav", "Imperial Cruiser.wav", "Inner Sanctum.wav", "Lair of the Eel King.wav", "Nazca Lullaby.wav", "Pharaoh's Parchment.wav", "Pickled Peppers.wav", "Pillars of Heracles.wav", "Resistance is Futile.wav", "Saharan Ritual.wav", "Sign of the Krull.wav", "Sir William.wav", "SkyNet.wav", "Sleeping By Mount Doom.wav", "Stonehenge.wav", "The Blue Pill.wav", "The Halls Of The Emperor.wav", "The One True Ring.wav", "The Warlock's Library.wav", "The White Wyrm.wav", "Through the Looking Glass.wav", "Trudging of the Trolls.wav", "Willy Wonka.wav", "Wind in the Willows.wav", "Wizard's Tower.wav", "Zarathustra Speaks.wav" ]
							}
, 							{
								"name" : "Horror and Paranormal",
								"type" : "filelist",
								"contents" : [ "A Brief Glimpse Of Its Face.wav", "Abduction.wav", "About Roswell.wav", "All Black.wav", "American Gothic.wav", "Angels and Demons.wav", "Area 42.wav", "At The Core.wav", "Banshee.wav", "Beyond Our Hearing.wav", "Biblical Plague.wav", "Bloodsucker.wav", "Burning Man.wav", "Calling Rasputin.wav", "Cat on Congas.wav", "Channeling Old Gods.wav", "Children of the Corn.wav", "Close Encounter.wav", "Dancing Gravestone.wav", "Dark Mythology.wav", "Darkness.wav", "Dreamland.wav", "Eastern Mysticism.wav", "Eavesdropping On The Greys.wav", "Echoes From The Ancestors.wav", "Exorcise Me.wav", "Flickering Shadows.wav", "For Mr. King.wav", "Freddy's Fingers.wav", "Friday The 14th.wav", "From Hell.wav", "Heart of Darkness.wav", "Hiding In The Attic.wav", "Hollow Soul.wav", "In Mourning.wav", "It Hides In The Closet.wav", "It Lives Underground.wav", "It Peed On My Hand.wav", "It's Not Real.wav", "Land's End.wav", "Lights In The Sky.wav", "Magnetic Therapy.wav", "Make Them Stop!.wav", "Midnight Theater.wav", "Mistress of the Dark.wav", "Mr. Crowley's Nightstand.wav", "My Pet Vampire Bat.wav", "Not Of This Earth.wav", "Ode To A Dead Bird.wav", "Pandora's Box.wav", "Phantasy.wav", "Phantom of the Opera.wav", "Poltergeist Fiesta.wav", "Psychic Undercurrent.wav", "Purgatory.wav", "Reliving Ancient Days.wav", "Ritual Sacrifice.wav", "Scaring Beelzebub.wav", "Scaring The Cheshire Cat.wav", "Sensory Immersion.wav", "Solomon's Temple.wav", "Something In the Walls.wav", "Something Wicked This Way Comes.wav", "Stay Away From The Light.wav", "The Mothman Speaks.wav", "The Other Side.wav", "The Spectre in the Bedroom.wav", "The Tree Outside The Window.wav", "The Witch Project.wav", "Thriller.wav", "Undawn of the Undead.wav", "Voices Among Us.wav", "Weird Alien Surgery.wav", "Whispering Walls.wav", "You Made It Angry.wav", "Zombie March.wav", "Zone of Twilight.wav", "Zoroastrian Spirits.wav" ]
							}
, 							{
								"name" : "Impressions",
								"type" : "filelist",
								"contents" : [ "60's Pop.wav", "A Moment of Clarity.wav", "Ant Colony.wav", "Bangkok.wav", "Beautiful Summer Afternoon.wav", "Beijing Sidewalk.wav", "Bit Blender.wav", "Black Canyon.wav", "Black Hawks Coming.wav", "Blackbird Flyby.wav", "Blue Angels.wav", "Blue Whale.wav", "Bobsled Run.wav", "Bombs Away.wav", "Bottomless Pit.wav", "Bouncy House.wav", "Cardboard Tube.wav", "Carve The Turkey.wav", "Cedar Falls.wav", "Ceiling Fan.wav", "Cellophane.wav", "Cetacean Mating Call.wav", "Channel Tunnel.wav", "Charlie Brown's Teacher.wav", "Comfortably Numb.wav", "Deafening Silence.wav", "Deluge.wav", "Dinner Theater.wav", "Distant Motion.wav", "Dry Ice.wav", "Duck Call.wav", "Dust in the Groove.wav", "Dysfunctional Thoughts.wav", "Earthenware.wav", "Electric Toothbrush.wav", "Electrogroove.wav", "Embarcadero Station.wav", "Energy Drink.wav", "Erogenous Zone.wav", "Family Reunion.wav", "Faraway Quake.wav", "Feather Pillow.wav", "Fell In The Wedding Cake.wav", "Fitful Sleep.wav", "Fog Machine.wav", "For Whom The Bell Tolls.wav", "Free Fall.wav", "Frozen Time.wav", "Furious.wav", "Grand Central.wav", "Great Basin.wav", "Hail To The Chief.wav", "High Anxiety.wav", "Hong Kong Central.wav", "Hornet's Nest.wav", "Hot Tin Roof.wav", "Hurdy Gurdy.wav", "Impressionist Spring.wav", "In A Lurch.wav", "Inside An Upright Piano.wav", "Jet Stream.wav", "Jimi.wav", "Kelp Forest.wav", "Kicking It Up A Notch.wav", "Lava Lamp.wav", "Law Office.wav", "Liquid Plumber.wav", "Lounge Lizard.wav", "Manatee Ballet.wav", "Mosh Pit.wav", "Mount Pinatubo.wav", "Mud Dauber.wav", "Music For Prepared Piano.wav", "Navajo Sandstone.wav", "Nicotine Fit.wav", "Old Faithful.wav", "Papal Audience.wav", "Peeps.wav", "Peptic Ulcer.wav", "Physical Withdrawal.wav", "Piety.wav", "Plane On The Horizon.wav", "Precious Gem.wav", "Pure Contentment.wav", "Quarantined.wav", "Rainbarrel.wav", "Rainy Day.wav", "Rat Race.wav", "Razor Wire.wav", "Rehearsal.wav", "Rinse Cycle.wav", "Serial Score.wav", "Singing In The Shower.wav", "Sitting On The Piano.wav", "Slow Burn.wav", "Smoldering Anger.wav", "Someone Wake Up The DJ.wav", "Sparrows.wav", "Stained Glass.wav", "Strumming The Harp.wav", "Sunset In Aruba.wav", "Sweltering.wav", "Tam Tam Roll.wav", "Tape Echo.wav", "Tempest.wav", "The Dance of the Anemones.wav", "Thunderclouds Build.wav", "Thunderous Applause.wav", "Tibetan Gong.wav", "Tora Tora Tora.wav", "Traffic Jam.wav", "Transistor Radio.wav", "Typhoon Warning.wav", "Unbalanced Load.wav", "Under The Bay.wav", "Unglued.wav", "Venice Romance.wav", "Victory Roll.wav", "Vienna Boy's Choir.wav", "Virgin River.wav", "Voice of America.wav", "Watercolors.wav", "Waterphone.wav", "We Are Go For Launch.wav" ]
							}
, 							{
								"name" : "In A Padded Room",
								"type" : "filelist",
								"contents" : [ "A Brief Surge Of Anger.wav", "Acting On A Lone Sense Of Clarity.wav", "Addled Scheming.wav", "Awaiting Electroshock Treatment.wav", "Buzzing Within.wav", "Calm Before The Storm.wav", "Can Not Stop The Laughing.wav", "Catatonic State.wav", "Covered With Spiders.wav", "Delicacy Of Spiders.wav", "Dizziness.wav", "Dreams In Which Death Comes.wav", "Electric Hum Of An Incandescent Bulb.wav", "Fighting Medication.wav", "Fully Restrained.wav", "Gnawing On Leather.wav", "Heavily Medicated.wav", "I Can Hear Them Calling.wav", "Imagining Cyclones.wav", "Injection.wav", "Lashing Out.wav", "Lucid Apologies.wav", "Meal Slot.wav", "Metabolic Disturbance.wav", "Out Of Body Experiments.wav", "Quivering And Incoherent.wav", "Raving Lunacy.wav", "Relax Into Things.wav", "Rolling Without Crashing.wav", "Screaming.wav", "Sedated.wav", "Seething.wav", "Speaking With The Voices.wav", "The Lock Tumblers.wav", "The Straightjacket Arrives.wav", "Tranquilizers Wane.wav", "Tunneling Inward.wav", "Violating The Bedpan.wav", "Waiting For My Master.wav", "Why Are These Chains On Me.wav", "Without Control.wav" ]
							}
, 							{
								"name" : "Industrial",
								"type" : "filelist",
								"contents" : [ "12 Cylinders.wav", "200 HP.wav", "A Day At The Foundry.wav", "Afterburner.wav", "All This Machinery.wav", "Arc Welder.wav", "Armor Plate.wav", "Assembly Line.wav", "Blimp Hangar.wav", "Broken Conduit.wav", "Captains of Industry.wav", "Carbon Monoxide.wav", "Circuit Bent.wav", "Cracked Piston.wav", "Crawl Space.wav", "Feel It Through The Floor.wav", "Fermentation.wav", "Freight Elevator.wav", "Friction Brakes.wav", "Fuel Air.wav", "Garbage Disposal.wav", "Grain Silo.wav", "Hammer and Sickle.wav", "Hydroelectricity.wav", "Into The Furnace.wav", "Jackhammer.wav", "Lead Pipe.wav", "Lumber Yard.wav", "Meat Grinder.wav", "Metal Fatigue.wav", "Morse Code.wav", "Needs New Bearings.wav", "Nemo Submerges.wav", "Now Hear This.wav", "Oiling The Gears.wav", "Pump Room.wav", "Really Bad Acoustics.wav", "Rotary Engine.wav", "Sawmill.wav", "Shock Absorber.wav", "Shop Floor.wav", "Smelter Run Amuck.wav", "Smithy.wav", "Smokestack Etude.wav", "Spanner In The Gears.wav", "Steam Driven.wav", "Tesla Coil.wav", "The Factory Around The Bend.wav", "The Plumbing Sings.wav", "The Steel Mill.wav", "Turbine Exhaust.wav", "Walkie Talkie.wav", "Wheels Within Wheels.wav", "Wow That Soldering Iron Is Hot.wav" ]
							}
, 							{
								"name" : "Maximum Security Ward",
								"type" : "filelist",
								"contents" : [ "Abusive Anger.wav", "Behind The Glass.wav", "Belligerent Agitation.wav", "Burgeoning Schizophrenic Episodes.wav", "Cantankerous Obsession.wav", "Deleterious Misanthropy.wav", "Destructive Self Loathing.wav", "Determined To Escape.wav", "Evil Contempt.wav", "Explosive Temperament.wav", "Flippant And Vile.wav", "Fuming Tumult.wav", "Going Frantic.wav", "Homicidal Paranoia.wav", "Irrational Hatred.wav", "Justifying Malice.wav", "Kinetic Delerium.wav", "Loathsome Demeanor.wav", "Malignant Apathy.wav", "Maniacal Genius.wav", "Manifestations Of Cannibalism.wav", "Murderous Dissociation.wav", "Numb To All Emotion.wav", "Oblivious Malevolence.wav", "Passionate Hysteria.wav", "Patricidal Delusion.wav", "Preternatural Aggression.wav", "Primal Mentality.wav", "Psychotic Episode.wav", "Rampant Pyromania.wav", "Rancorous Exophobia.wav", "Reality Disconnection.wav", "Reputation For Biting.wav", "Shattered Tangibility.wav", "Stalking With Murderous Intent.wav", "Suicidal Tendencies.wav", "Totally Irrational.wav", "Tumultous Fuming.wav", "Uncontrollable Convulsions.wav", "Vicious Contrivance.wav", "Vindictive Psychosis.wav", "Violent Sexual Deviance.wav", "Whacko Plague.wav" ]
							}
 ]
					}
,
					"style" : "",
					"text" : "Managing Electrical Current.wav",
					"varname" : "_pmenu"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-27", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "pmenu.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
