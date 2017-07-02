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
		"rect" : [ 273.0, 78.0, 897.0, 550.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 13.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 5.0, 5.0 ],
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
		"showontab" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 273.0, 104.0, 897.0, 524.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-56",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 264.0, 212.0, 261.0, 50.0 ],
									"style" : "",
									"text" : "look at dict objects in this patch to see how arbitrary data can be assigned to menu items",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-55",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 421.0, 288.5, 144.0, 40.0 ],
									"style" : "",
									"text" : "works with presets and pattr"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 313.0, 281.0, 100.0, 40.0 ],
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 5, "obj-27", "pmenu", "int", 2 ]
										}
, 										{
											"number" : 2,
											"data" : [ 5, "obj-27", "pmenu", "int", 1 ]
										}
, 										{
											"number" : 3,
											"data" : [ 5, "obj-27", "pmenu", "int", 3 ]
										}
 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 358.0, 327.0, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 197.0, 292.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 52.642464, 252.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 99.0, 424.0, 117.0, 22.0 ],
									"style" : "",
									"text" : "makenote 100 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 0,
									"patching_rect" : [ 99.0, 467.0, 51.0, 22.0 ],
									"style" : "",
									"text" : "noteout"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 199.0, 264.0, 39.0, 22.0 ],
									"style" : "",
									"text" : "zl len"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 134.0, 321.0, 61.0, 22.0 ],
									"style" : "",
									"text" : "counter 7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 52.642464, 285.0, 65.0, 22.0 ],
									"style" : "",
									"text" : "metro 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 99.0, 388.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "+ 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 99.0, 357.0, 58.0, 22.0 ],
									"style" : "",
									"text" : "zl lookup"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 358.0, 351.0, 125.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict colors colors.json"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-27",
									"maxclass" : "pmenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 358.0, 375.0, 234.0, 21.0 ],
									"pmenu_dict" : 									{
										"name" : "settings",
										"contents" : [ 											{
												"name" : "black and red",
												"data" : 												{
													"bgfillcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bordercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"border" : 10
												}

											}
, 											{
												"name" : "green and blue",
												"data" : 												{
													"bgfillcolor" : [ 0.0, 1.0, 0.0, 1.0 ],
													"bordercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
													"border" : 10
												}

											}
, 											{
												"name" : "red and white",
												"data" : 												{
													"bgfillcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"border" : 10
												}

											}
 ]
									}
,
									"prefix" : "",
									"presentation_rect" : [ 649.0, 649.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "green and blue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 573.0, 403.0, 49.0, 22.0 ],
									"style" : "",
									"text" : "dict.iter"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 1.0, 0.0, 1.0 ],
									"border" : 10,
									"bordercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
									"id" : "obj-24",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 636.0, 340.0, 128.0, 128.0 ],
									"proportion" : 0.39,
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 237.0, 130.0, 22.0 ],
									"style" : "",
									"text" : "print scales @popup 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "dict.view",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 586.0, 159.0, 249.0, 155.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 170.0, 50.0, 22.0 ],
									"presentation_rect" : [ 512.0, 299.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "up"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 371.0, 50.0, 64.0, 22.0 ],
									"presentation_rect" : [ 492.0, 157.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 371.0, 93.0, 165.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict storing storing_dicts.json"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-15",
									"maxclass" : "pmenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 371.0, 130.0, 234.0, 21.0 ],
									"pmenu_dict" : 									{
										"name" : "Dicts",
										"contents" : [ 											{
												"name" : "stuff",
												"data" : 												{
													"where" : "the garage",
													"what" : "oldbooks",
													"smell" : "moldy"
												}

											}
, 											{
												"name" : "pool",
												"data" : 												{
													"where" : "pool",
													"what" : "wet",
													"smell" : "chlorine"
												}

											}
, 											{
												"name" : "up",
												"data" : 												{
													"where" : "down",
													"what" : "huh?",
													"smell" : "donuts"
												}

											}
 ]
									}
,
									"prefix" : "",
									"presentation_rect" : [ 492.0, 237.0, 0.0, 0.0 ],
									"style" : "",
									"text" : "up"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 14.0, 119.0, 64.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 14.0, 162.0, 129.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict scales scales.json"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "pmenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 14.0, 197.0, 168.0, 21.0 ],
									"pmenu_dict" : 									{
										"name" : "Scales",
										"contents" : [ 											{
												"name" : "major",
												"data" : [ 0, 2, 4, 5, 7, 9, 11 ]
											}
, 											{
												"name" : "natural minor",
												"data" : [ 0, 2, 3, 5, 7, 8, 10 ]
											}
, 											{
												"name" : "harmonic minor",
												"data" : [ 0, 2, 3, 5, 7, 8, 11 ]
											}
, 											{
												"name" : "So-called Church Modes",
												"contents" : [ 													{
														"name" : "Ionian",
														"data" : [ 0, 2, 4, 5, 7, 9, 11 ]
													}
, 													{
														"name" : "Dorian",
														"data" : [ 0, 2, 3, 5, 7, 9, 10 ]
													}
, 													{
														"name" : "Phrygian",
														"data" : [ 0, 1, 3, 5, 7, 8, 10 ]
													}
, 													{
														"name" : "Lydian",
														"data" : [ 0, 2, 4, 6, 7, 9, 11 ]
													}
, 													{
														"name" : "Mixolydian",
														"data" : [ 0, 2, 4, 5, 7, 9, 10 ]
													}
, 													{
														"name" : "Aeolian",
														"data" : [ 0, 2, 3, 5, 7, 8, 10 ]
													}
, 													{
														"name" : "Locrian (Rarely Used)",
														"data" : [ 0, 1, 3, 5, 6, 8, 10 ]
													}
 ]
											}
, 											{
												"name" : "octotonic",
												"data" : [ 0, 1, 3, 4, 6, 7, 9, 10 ]
											}
, 											{
												"name" : "whole tone",
												"data" : [ 0, 2, 4, 6, 8, 10 ]
											}
 ]
									}
,
									"prefix" : "",
									"style" : "",
									"text" : "Phrygian"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 87.0, 105.0, 21.0 ],
									"style" : "",
									"text" : "Retrieving Data"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-4",
									"ignoreclick" : 1,
									"jsarguments" : [ "pmenu" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 150.284927, 57.567627 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"midpoints" : [ 172.5, 289.5, 147.5, 289.5 ],
									"order" : 1,
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-27", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 4 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 70.0, 88.0, 47.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p data"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 350.0, 128.0, 23.0 ],
					"saved_object_attributes" : 					{
						"filename" : "helpstarter",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js helpstarter pmenu"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 897.0, 524.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 5.0, 5.0 ],
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-10",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 343.0, 309.0, 266.0, 137.0 ],
									"style" : "",
									"text" : "the dictionary needs to have at the top level a name key which is a string and a contents key which points to an array. the array can hold strings, other dictionaries with name and content keys (for submenus). Entries in the menu can also be a dictionary with a name key and data key. The values in the data key are ouput the 3rd outlet when the menu item is selected. (see data tab)",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-19",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 329.0, 225.5, 244.0, 69.0 ],
									"style" : "",
									"text" : "must be initialized with a dict. Once initialized the menu items are saved with the patch. The pmenu can also be copied and retains menu entries."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 357.0, 57.0, 23.0 ],
									"style" : "",
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 325.0, 86.0, 23.0 ],
									"style" : "",
									"text" : "prepend load"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 76.0, 191.0, 64.0, 23.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 76.0, 234.0, 234.0, 23.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "dict max-examples max-examples.json"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "pmenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 271.0, 234.0, 21.0 ],
									"pmenu_dict" : 									{
										"name" : "Examples",
										"contents" : [ 											{
												"name" : "effects",
												"contents" : [ 													{
														"name" : "classic-vocoder-folder",
														"contents" : [ "classic_vocoder.maxpat", 															{
																"name" : "lib",
																"contents" : [ "classic-channel.maxpat", "classic-vocoder.maxpat" ]
															}
 ]
													}
, "kazoo.maxpat", 													{
														"name" : "kompressor",
														"contents" : [ "ekspando.maxhelp", "fft-komp.maxhelp", "komp-de-esser.maxpat", "komp-multiband.maxpat", "komp-multichannel.maxpat", "komp.maxhelp", 															{
																"name" : "lib",
																"contents" : [ "3komp-demo.xml", "3komp.maxpat", "ekspando-ballistics.maxpat", "ekspando-demo.json", "ekspando.maxpat", "fft-komp.maxpat", "komp-ballistics.maxpat", "komp-demo.json", "komp.maxpat" ]
															}
 ]
													}
, 													{
														"name" : "reverb",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "yafr2.maxpat" ]
															}
, "reverb_example.maxpat" ]
													}
, "simple-compressor.maxpat", 													{
														"name" : "transposer-folder",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "gadget.maxpat", "transposer.maxpat" ]
															}
, "pitchshifting-playground.maxpat" ]
													}
 ]
											}
, 											{
												"name" : "fft-fun",
												"contents" : [ "convolution-workshop.maxpat", "cross-dog.maxpat", "forbidden-planet.maxpat", 													{
														"name" : "lib",
														"contents" : [ "cw_fft.maxpat", "fp_fft.maxpat", "xsyn_fft.maxpat" ]
													}
, 													{
														"name" : "phase-vocoder-sampler-folder",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "pvocsamp.maxpat", "pvs.maxpat" ]
															}
, "phase-vocoder-sampler.maxpat" ]
													}
, "sonograph.maxpat" ]
											}
, 											{
												"name" : "filters",
												"contents" : [ 													{
														"name" : "buffir",
														"contents" : [ "buffir-eq.maxhelp", 															{
																"name" : "lib",
																"contents" : [ "buffir-eq.maxpat" ]
															}
 ]
													}
, "fffb-third-octave-eq.maxpat" ]
											}
, 											{
												"name" : "gen",
												"contents" : [ "crossover.gendsp", "dynamicexpr.js", "dynamicexpr.maxpat", "freeverb.gendsp", "freeverb_allpass.gendsp", "freeverb_comb.gendsp", "gen~.7_segment_envelope.maxpat", "gen~.band_limited_saw.maxpat", "gen~.band_limited_saw_using_feedback_fm.maxpat", "gen~.bark.maxpat", "gen~.biquad.maxpat", "gen~.bitcrush.maxpat", "gen~.buffir.maxpat", "gen~.centroid.maxpat", "gen~.chaos.maxpat", "gen~.chopper.maxpat", "gen~.chopper_repeat.maxpat", "gen~.chucker.maxpat", "gen~.comb.maxpat", "gen~.computed_sine.maxpat", "gen~.count.maxpat", "gen~.creepyreverb.maxpat", "gen~.cross-correlation.maxpat", "gen~.crossover.maxpat", "gen~.curve.maxpat", "gen~.dattorro_reverb.maxpat", "gen~.deltaclip.maxpat", "gen~.drunk.maxpat", "gen~.dynamicexpr.maxpat", "gen~.edge.maxpat", "gen~.fbam.maxpat", "gen~.ffm.maxpat", "gen~.filters.maxpat", "gen~.flange_chorus.maxpat", "gen~.flute.maxpat", "gen~.fm_bells.maxpat", "gen~.freeverb.maxpat", "gen~.gcd_and_lcm.maxpat", "gen~.gigaverb.maxpat", "gen~.interpolation.maxpat", "gen~.interpolation.splinecurve.maxpat", "gen~.karplus_strong.maxpat", "gen~.karplus_strong_strange.maxpat", "gen~.livelooper.maxpat", "gen~.minmax.maxpat", "gen~.modfm.maxpat", "gen~.moogladder.maxpat", "gen~.ola.granular.maxpat", "gen~.ola.pulsar.maxpat", "gen~.overdrive.maxpat", "gen~.peaklimiter.maxpat", "gen~.performance.maxpat", "gen~.pfft.vectral.maxpat", "gen~.pfft_centroid.maxpat", "gen~.pfft_example.maxpat", "gen~.phasor.maxpat", "gen~.pitchshift.maxpat", "gen~.pulsar.maxpat", "gen~.random.maxpat", "gen~.resonator_bank.maxpat", "gen~.routing.maxpat", "gen~.shaker.maxpat", "gen~.sincinterpolation.forloop.maxpat", "gen~.sincinterpolation.maxpat", "gen~.slicer.maxpat", "gen~.slide.maxpat", "gen~.spectraldelay.maxpat", "gen~.spectraldelay_feedback.maxpat", "gen~.thresh.maxpat", "gen~.trapezoid.maxpat", "gen~.urn.maxpat", "gen~.vosim.maxpat", "gen~.waveguide.maxpat", "gen~.waveset.maxpat", "gen~.waveset_with_amplitude.maxpat", "gen~.zerox.maxpat", "moogLadderFilter.genexpr", "perf_gen.maxpat", "perf_gen_biquads.maxpat", "perf_msp.maxpat", "perf_msp_biquads.maxpat", "perf_null.maxpat", "pfft.bark.maxpat", "pfft.pfftgen.maxpat", "pfft.spectraldelay.maxpat", "pfft.spectraldelay_feedback.maxpat", "pfft.vectral.expr.maxpat", "pfft.vectral.maxpat", "poly.moogladderx2.maxpat", "poly.waveguide_string.maxpat", "waveguide_string.gendsp" ]
											}
, 											{
												"name" : "interface",
												"contents" : [ "live-quantize.maxpat", 													{
														"name" : "Presentation",
														"contents" : [ "X.Ceremony.maxpat" ]
													}
, 													{
														"name" : "sensor-tamer",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "sensor-tamer.maxpat" ]
															}
, "sensor-tamer.maxhelp" ]
													}
, "Unicode_Tips_for_Japanese.maxpat", 													{
														"name" : "WeBrother",
														"contents" : [ "X.Safairien-favs.xml", "X.Safairien.maxpat" ]
													}
 ]
											}
, 											{
												"name" : "javascript",
												"contents" : [ 													{
														"name" : "dict",
														"contents" : [ "interfacecolor-example.maxpat" ]
													}
, 													{
														"name" : "file",
														"contents" : [ "jsfiletester-example.maxpat", "jsfiletester.js", "jsfolderiter-example.maxpat", "jsfolderiter.js" ]
													}
, 													{
														"name" : "jspainter",
														"contents" : [ "border-override.js", "button-override.js", "dial-override.js", "ezadc-override.js", "ezadc1.svg", "ezdac-override.js", "ezdac1.svg", "gswitch-override.js", "jspainter-porting-steps-for-c-programmers.txt", "jspaintertest.maxpat", "slider-override.js", "toggle-override.js" ]
													}
, 													{
														"name" : "jsrequire",
														"contents" : [ "include-example.js", "js-require-include.maxpat", "require-example.js", "require-include-demo.js" ]
													}
, 													{
														"name" : "lists+strings",
														"contents" : [ "jsregexp-example.maxpat", "jsregexp.js", "jssort-example.maxpat", "jssort.js", "liststats-example.maxpat", "liststats.js", "strjoin-example.maxpat", "strjoin.js", "struplow-example.maxpat", "struplow.js", "urlescape-example.maxpat", "urlescape.js" ]
													}
, 													{
														"name" : "math",
														"contents" : [ "dynexpr-example.maxpat", "dynexpr.js", "jsplus-example.maxpat", "jsplus.js", "primenumber-example.maxpat", "primenumber.js" ]
													}
, 													{
														"name" : "patcher-scripting",
														"contents" : [ "globalvar-example.maxpat", "globalvar.js", "patchdescribe-example.maxpat", "patchdescribe.js", "scriptnewdefault-example.maxpat", "scriptnewdefault.js", "scriptoscript-example.maxpat", "scriptoscript.js" ]
													}
, 													{
														"name" : "simulation",
														"contents" : [ "boidroids-example.maxpat", "boidroids-example2.maxpat", "boidroids.js", "springoid-example.maxpat", "springoid.js", "springoidgrid-example.maxpat", "springoidgrid.js", "springoidgrid3d-example.maxpat", "springoidgrid3d-example2.maxpat", "springoidgrid3d.js" ]
													}
, 													{
														"name" : "snapshots",
														"contents" : [ "snapshotAPI-example.maxpat" ]
													}
, 													{
														"name" : "ui",
														"contents" : [ "brush01alpha.tif", "brush02alpha.tif", "jsui_3dballs-example.maxpat", "jsui_3dballs.js", "jsui_forceaspect-example.maxpat", "jsui_forceaspect.js", "jsui_imagestuff-example.maxpat", "jsui_imagestuff.js", "jsui_screentoworld-example.maxpat", "jsui_screentoworld.js", "jsui_spherepen-example.maxpat", "jsui_spherepen.js", "jsui_splinestuff-example.maxpat", "jsui_splinestuff.js", "swirlycursor-example.maxpat", "swirlycursor.js" ]
													}
, 													{
														"name" : "ui-canvas",
														"contents" : [ "brushed-metal-texture.jpg", "canvas-breakout.js", "canvas-breakout.maxpat", "canvas-examples.js", "canvas-examples.maxpat", "digitaldisplay.js", "digitaldisplay.maxpat" ]
													}
, 													{
														"name" : "ui-mgraphics",
														"contents" : [ "jsplot.js", "jsplot.maxhelp", "jszplane.js", "jszplane.maxhelp", "mgraphics-connector.js", "mgraphics-connector.maxpat", "mgraphics-curvedfader.js", "mgraphics-curvedfader.maxpat", "mgraphics-demo.maxpat", "mgraphics-hittest.js", "mgraphics-hittest.maxpat", "mgraphics-yellowfade.js", "mgraphics-yellowfade.maxpat", "mgraphicsdemo.js" ]
													}
 ]
											}
, 											{
												"name" : "jitter-examples",
												"contents" : [ 													{
														"name" : "3rd_Party",
														"contents" : [ "AdvancedCamera.maxpat", 															{
																"name" : "autorota",
																"contents" : [ "autorota-demo.maxpat", "autorota.maxpat", "dspwobbler.maxpat", "limitscreen.maxpat", "rotamod-feederbpatch.maxpat", "wobblewrapper.maxpat" ]
															}
, "Cellular.maxpat", "Cycle-delic.maxpat", "desktop_uploader.maxpat", 															{
																"name" : "image-to-spectral_filter",
																"contents" : [ "fft-filterinterp.maxpat", "Whispering_heights.maxpat" ]
															}
, 															{
																"name" : "JitterApplets",
																"contents" : [ "README.txt", "SIMPLE_MIX.maxpat", 																	{
																		"name" : "SimpleMix.lib",
																		"contents" : [ "alphakey.maxpat", "chromakey.maxpat", "keyskeys.maxpat", "Knob.pct", "marilynmary.jpg", "mathops.maxpat", "MovieLoops.maxpat", "MultiModeMixer.maxpat", "Record&FTP.maxpat", "ScreenControls.maxpat", "slideback.pct" ]
																	}
, "VideoInput.maxpat" ]
															}
, 															{
																"name" : "OpenGL-AudioSpatializer",
																"contents" : [ "OpenGL-AudioSpatializer.maxpat", "proximity.maxpat" ]
															}
, "README_3rd_Party.txt" ]
													}
, 													{
														"name" : "audio",
														"contents" : [ "audio-over-network.maxpat", 															{
																"name" : "audio_viz",
																"contents" : [ "0.audioviz_jit_catch.maxpat", "1.audioviz_simple_jit_fft.maxpat", "2.audioviz_blob.maxpat", "3.audioviz_deform.maxpat", "4.audioviz_env_detect.maxpat", "amp_pfft.maxpat", "jit_fft_viz.maxpat", "viz_deform.js", "viz_donut.js", "viz_downsample.js", "viz_env_detect.js", "viz_expr_octaves.js", "viz_floatilla.js", "viz_plane_to_sphere.js", "viz_poltocar.js" ]
															}
, "jit.catch~-nurbs.maxpat", "jit.catch~-scrubber.maxpat", "jit.catch~-shifty.maxpat", "jit.forbidden-planet.maxpat", "jit.gl.nurbs-audiorender.maxpat", "jit.peek~-additivesynth.maxpat", "jit.peek~-osctrack.maxpat", "jit.poke~-asteroidgrowth.maxpat", "jit.poke~-gl-lfo.maxpat", "jit.poke~-maxtunes.maxpat", "jit.poke~-maxtunes2.maxpat", "jit.poke~-rgborgan.maxpat", "jit.poke~-spectrogram.maxpat", "jit.sampler-exampler.maxpat", "jitaudio2nurbs.js", 															{
																"name" : "jitter_pvoc",
																"contents" : [ "jit.playfft~.maxpat", "jit.recordfft~.maxpat", "jitter_pvoc_2D.maxpat", "jitter_pvoc_3D.maxpat" ]
															}
, 															{
																"name" : "lindenmusic",
																"contents" : [ "fmthing~.maxpat", "LindenmayerMusic1.maxpat", "LindenmayerMusic2.maxpat", "lukepan~.maxpat", "mycomb~.maxpat", "numprod.maxpat", "synthstrings~.maxpat" ]
															}
 ]
													}
, 													{
														"name" : "demos",
														"contents" : [ "av_mating_machine.maxpat", "batchconverter.maxpat", "image2movie.maxpat", "MaxAmp.maxpat", "movie2image.maxpat" ]
													}
, 													{
														"name" : "gen",
														"contents" : [ "alphablend.genjit", "altern.genjit", "ameba.genjit", "bench.compare.expr.maxpat", "bench.compare.op.maxpat", "bleach.bypass.genjit", "bleach.bypass.mod.genjit", "box.distance.function.maxpat", "brcosa.genjit", "charge.field.maxpat", "complex.poly.maxpat", "dstdimcrop.genjit", "eclipse.genjit", "fractal.explorer.maxpat", "infinite.mirror.genjit", "iso.field.maxpat", "iterated.function.systems.maxpat", "jit.gen.erode.maxpat", "jit.gen.particles.maxpat", "jit.gen.spherical.inversion.maxpat", "jit.gen.superformula.maxpat", "jit.gl.pix.alphablend.maxpat", "jit.gl.pix.altern.maxpat", "jit.gl.pix.ameba.maxpat", "jit.gl.pix.bleach.bypass.maxpat", "jit.gl.pix.bleach.bypass.mod.maxpat", "jit.gl.pix.cartopol.maxpat", "jit.gl.pix.circular.tiles.maxpat", "jit.gl.pix.eclipse.maxpat", "jit.gl.pix.infinite.mirror.maxpat", "jit.gl.pix.kaleido.maxpat", "jit.gl.pix.lumadisplace.maxpat", "jit.gl.pix.mirror.maxpat", "jit.gl.pix.pinch.maxpat", "jit.gl.pix.repos.maxpat", "jit.gl.pix.rubix.maxpat", "jit.gl.pix.scalebias.maxpat", "jit.gl.pix.sprinkle.maxpat", "jit.gl.pix.srcdim.dstdim.maxpat", "jit.gl.pix.technicolor1.maxpat", "jit.gl.pix.technicolor2.maxpat", "jit.gl.pix.technicolor3.maxpat", "jit.gl.pix.twirl.maxpat", "jit.gl.pix.wake.maxpat", "jit.gl.pix.xfade.maxpat", "jit.pix.alphablend.maxpat", "jit.pix.brcosa.maxpat", "jit.pix.circular.tiles.maxpat", "jit.pix.infinite.mirror.maxpat", "jit.pix.kaleido.maxpat", "jit.pix.lumadisplace.maxpat", "jit.pix.repos.maxpat", "jit.pix.shade.maxpat", "jit.pix.twirl.maxpat", "jit.pix.xfade.maxpat", "julia.quat.raytracer.maxpat", "kaleido.genjit", "lumadisplace.genjit", "mandelbrot.set.orbit.trap.maxpat", "mesh.shatter.maxpat", "particle.blackhole.genjit", "particle.update.genjit", "pinch.genjit", "pix.game.of.life.maxpat", "reaction.diffusion.color.world.maxpat", "repos.genjit", "rgb2luma.genjit", "rubix.genjit", "sampling.modes.genexpr.maxpat", "shade.genjit", "smear.o.vision.maxpat", "spherical.inversion.genjit", "sprinkle.genjit", "srcdimcrop.genjit", "superf3D.genjit", "superformula.genjit", "surfing.noise.maxpat", "technicolor1.genjit", "technicolor2.genjit", "technicolor3.genjit", "twirl.genjit", "unsharp.mask.maxpat", "wake.genjit", "xfade.genjit" ]
													}
, 													{
														"name" : "java",
														"contents" : [ "cubiccurve-example.maxpat", "javagltest-example.maxpat", "javajitterfirsttest.maxpat", "javalistenernet-example.maxpat", "javalistenertest-example.maxpat", "jitcellvecaccess-example.maxpat", "jitfeedback-example.maxpat", "jitgldock-example.maxpat", "jitjavagui-example.maxpat", "jitjavamoviebank-example.maxpat", "jitvecprocess-example.maxpat", "jitwebimage-example.maxpat", "matrixlist.maxhelp" ]
													}
, 													{
														"name" : "javascript",
														"contents" : [ 															{
																"name" : "matrix",
																"contents" : [ "jit-noise-tex.maxpat", "js-noise-tex.js", "jsmatrixfillplane-example.maxpat", "jsmatrixfillplane.js", "jsmatrixpacking-example.maxpat", "jsmatrixpacking.js", "jsrepos-helper-example.maxpat", "jsrepos-helper.js" ]
															}
, 															{
																"name" : "other",
																"contents" : [ "jitrawvolume-example.maxpat", "jitrawvolume.js", "jitterbenchmark-example.maxpat", "jitterbenchmark.js", "jitterexpr-example.maxpat", "jitterexpr.js", "jitterexpr2-example.maxpat", "jitterexpr2.js", "jitterlistennettest-example.maxpat", "jitterlistennettest.js", "jitternotify-example.maxpat", "jitternotify.js", "jstable-example.maxpat", "jstable.js" ]
															}
, 															{
																"name" : "render",
																"contents" : [ "exprvolume-example.maxpat", "exprvolume.js", "isosurfer-example.maxpat", "isosurfer.js", "jit.gl.textureset-example.maxpat", "jit.gl.textureset.js", "jittergltest-example.maxpat", "jittergltest.js", "js.gl.matrixoutput.maxpat", "jsbasis-graph-example.maxpat", "jsbasis-graph.js", "jsgllumatrails-example.maxpat", "jsgllumatrails.js", "jsglnurbstendril-example.maxpat", "jsglnurbstendril.js", "jsglsurface-example.maxpat", "jsglsurface.js", "jsglsurface2-example.maxpat", "jsglsurface2.js", "jsglvideotrail-example.maxpat", "jsglvideotrail.js", "process-matrixout.js", "strange.js", "strange_attractors.maxpat" ]
															}
, 															{
																"name" : "ui",
																"contents" : [ "jitter-gui-sliderexample.maxpat", "jitter_gui_slider.js", "jitter_gui_sliderrow.js", "jitterhittest-example.maxpat", "jitterhittest.js", "jitterlistentest-example.maxpat", "jitterlistentest.js" ]
															}
, 															{
																"name" : "video",
																"contents" : [ "jittermatrixtester.js", "js_uyvy_mixer-example.maxpat", "js_uyvy_mixer.js", "jsfreeframe-example.maxpat", "jsfreeframe.js", "jsinterpframes-example.maxpat", "jsinterpframes.js", "jsjitmatrix-test.maxpat", "jsmovieadapt-example.maxpat", "jsmovieadapt.js", "jsmoviebank-example.maxpat", "jsmoviebank.js", "jsmovietracks-example.maxpat", "jsmovietracks.js", "jsmultiop-example.maxpat", "jsmultiop.js", "jsvideoedges-example.maxpat", "jsvideoedges.js" ]
															}
 ]
													}
, 													{
														"name" : "materials",
														"contents" : [ "browser.diffuse.params.maxpat", "browser.specular.params.maxpat", "mat.browser.maxpat" ]
													}
, 													{
														"name" : "other",
														"contents" : [ "adaption_to_matrices1.maxpat", "adaption_to_matrices2.maxpat", "autodetect_monitor2.maxpat", "jit.bfg.distorter.maxpat", "jit.convolve-paralleltest.maxpat", 															{
																"name" : "jit.lcd-layers",
																"contents" : [ "jit.lcd-layer-help.maxpat", "jit.lcd-layer.maxpat", "transfermodes.txt" ]
															}
, "jitter-cpustatus.maxpat", "jitter-kernel-messages.maxpat", "jsui_matriximage-example.maxpat", "jsui_matriximage.js", "LindenmayerExamples1.maxpat", "LindenmayerExamples2.maxpat", "particle.novishnu.maxpat", 															{
																"name" : "particles",
																"contents" : [ "comets.maxpat" ]
															}
, "pool.maxpat", "pool_with_sound.maxpat", 															{
																"name" : "Wolframatic",
																"contents" : [ "grainer~.maxpat", "Wolframatic.maxpat" ]
															}
 ]
													}
, 													{
														"name" : "overview",
														"contents" : [ "jitter.overview.maxpat", "jitter_objects.maxpat" ]
													}
, 													{
														"name" : "render",
														"contents" : [ 															{
																"name" : "anim",
																"contents" : [ "adrive-agents.js", "anim.camera.advanced.maxpat", "anim.drive.ui.dict.maxpat", "anim.evalnotify.maxpat", "anim.node.pivot.simple.maxpat", "anim.node.planets.maxpat", "js.anim.drive.maxpat" ]
															}
, 															{
																"name" : "camera",
																"contents" : [ "camera.capture.maxpat" ]
															}
, 															{
																"name" : "camera.node.examples",
																"contents" : [ "camera.direct.feedback.maxpat", "camera.node.mixing.views.maxpat", "camera.viewport.maxpat", "node.basic.maxpat", "node.capture.maxpat", "node.non.automatic.capture.maxpat" ]
															}
, 															{
																"name" : "gl.lua",
																"contents" : [ "lua.slabbery.maxpat", "lua.window.mouse.drawing.maxpat", "mouse.drawing.lua", "slabbery.lua" ]
															}
, "gl_fft~.maxpat", "jit.gl.gridshape-morph.maxpat", "jit.gl.gridshape-plur.maxpat", "jit.gl.gridshape-scanoffset.maxpat", "jit.gl.gridshape-scissors.maxpat", "jit.gl.gridshape-skittles.maxpat", "jit.gl.isosurf-fortresses.maxpat", "jit.gl.isosurf-mov.maxpat", "jit.gl.mesh.bfg.maxpat", "jit.gl.mesh.displace.maxpat", "jit.gl.nurbs-closedblob.maxpat", "jit.gl.nurbs-ghosts.maxpat", "jit.gl.nurbs-video-deform.maxpat", "jit.gl.render-over-movie.maxpat", "jit.gl.render-tomatrix.maxpat", "jit.gl.render.cube.maxpat", "jit.gl.render.cyl.maxpat", "jit.gl.render.grid-sketch.maxpat", "jit.gl.render.grid.maxpat", "jit.gl.render.lighting.maxpat", "jit.gl.render.multi-iter.maxpat", "jit.gl.render.multitetra.maxpat", "jit.gl.render.radialblur.maxpat", "jit.gl.render.sphere.maxpat", "jit.gl.render.vblsync.maxpat", "jit.gl.render.xfade-shapes.maxpat", "jit.gl.render.xfade-shapes2.maxpat", "jit.gl.sketch-a-etch.maxpat", "jit.gl.texture-copytotex.maxpat", "jit.gl.texture.capture.maxpat", "jit.gl.texture.multi.maxpat", "jit.gl.videoplane-multi.maxpat", "jit.gl.videoplane-ortho.maxpat", "jit.gl.videoplane-xfade.maxpat", "jit.gl.volume-vidpillows.maxpat", "jit.gl.volume.movcube.maxpat", "jit.matrix-3d-render.maxpat", "js_jitterspline-example.maxpat", "js_jitterspline.js", 															{
																"name" : "lights.materials",
																"contents" : [ "light.basic.maxpat", "lights.shadow.map.texture.maxpat", "lights.shadows.maxpat", "material.heightmap.maxpat", "material.io.maxpat", "multi.lights.material.maxpat" ]
															}
, 															{
																"name" : "model",
																"contents" : [ "model.anim.blend.maxpat", "model.anim.loop.maxpat", "model.anim.node.simple.maxpat", "model.bone.rigidbody.maxpat", "model.material.edit.maxpat" ]
															}
, 															{
																"name" : "mrt",
																"contents" : [ "mrt.basic.material.maxpat", "mrt.basic.shader.maxpat", "mrt.deferred.shading.maxpat", "mrt.dof.maxpat", "mrt.slab.unpack.maxpat", "pass.bloom.maxpat", "pass.custom.effects.maxpat", "pass.motionblur.maxpat", "pass.rebuild.depth.maxpat", "pass.scene.process.maxpat", "pass.smear.maxpat", "pass.ssao.maxpat", "pass.tonemap.maxpat" ]
															}
, "particle_primitives.maxpat", 															{
																"name" : "path",
																"contents" : [ "path.knot.maxpat", "path.morph.contour.maxpat" ]
															}
, 															{
																"name" : "physics",
																"contents" : [ "phys.6dof.spring.maxpat", "phys.body.collisions.maxpat", "phys.body.concave.maxpat", "phys.body.dynamicmesh.maxpat", "phys.body.filters.maxpat", "phys.body.velocity.maxpat", "phys.constraint.strength.stretch.maxpat", "phys.constraint.worldpos.maxpat", "phys.ghost.explosion.maxpat", "phys.multiple.constraints.maxpat", "phys.multiple.mesh.maxpat", "phys.multiple.picking.maxpat", "phys.multiple.sendbody.maxpat", "phys.picker.impulse.maxpat", "phys.ragdoll.launch.maxpat", "phys.twitchy.maxpat", "phys.world.2D.maxpat", "phys.world.collision.impulse.maxpat", "phys.world.collisions.complete.maxpat", "phys.world.collisions.js.maxpat", "physcollision.js", "ragdoll.js" ]
															}
, "pool-3d-nurbs.maxpat", 															{
																"name" : "Shaders",
																"contents" : [ "geom.normals.maxpat", "gm.illumilines.maxpat", "gm.solidpoint.demo.maxpat", "gm.videopoint.maxpat", "jit.gl.shader.phong.lang.maxpat", "mat.oren-nayer.lut.maxpat", "viz.tangents.maxpat" ]
															}
, "shaderwriter-example.maxpat", 															{
																"name" : "slab",
																"contents" : [ "jit.gl.slab-composite.maxpat", "jit.gl.slab-compositeDV.maxpat", "jit.gl.slab-copytomatrix.maxpat", "jit.gl.slab-DVcompareCPU.maxpat", "jit.gl.slab-DVcompareGPU.maxpat", "jit.gl.slab-float-readback.maxpat", "jit.gl.slab-framediff.maxpat", "jit.gl.slab-grgb.maxpat", "jit.gl.slab-op-fb.maxpat", "jit.gl.slab-op.maxpat", "jit.gl.slab-op3sources.maxpat", "jit.gl.slab-slide.maxpat", "jit.gl.slab-uyvy-gpu.maxpat", "jit.gl.slab-uyvy-readback.maxpat", "jit.gl.slab.float.maxpat", "jit.gl.slab.gauss6x-example.maxpat", "jit.gl.slab.gauss6x.maxpat" ]
															}
, 															{
																"name" : "slab-helpers",
																"contents" : [ 																	{
																		"name" : "color",
																		"contents" : [ "cc.alphaglue.jxs-help.maxpat", "cc.brightness.ip.jxs-help.maxpat", "cc.colormap.jxs-help.maxpat", "cc.contrast.ip.jxs-help.maxpat", "cc.planemap.jxs-help.maxpat", "cc.saturate.ip.jxs-help.maxpat", "cc.scalebias.jxs-help.maxpat" ]
																	}
, "composite.shaders-help.maxpat", 																	{
																		"name" : "convolution",
																		"contents" : [ "cf.blur.jxs-help.maxpat", "cf.convolve.jxs-help.maxpat", "cf.dilate.jxs-help.maxpat", "cf.edgedetect.jxs-help.maxpat", "cf.emboss.jxs-help.maxpat", "cf.erode.jxs-help.maxpat", "cf.gaussian.2p.jxs-help.maxpat", "cf.laplace.jxs-help.maxpat", "cf.median.2p.jxs-help.maxpat", "cf.radialblur.jxs-help.maxpat", "cf.sharpen.jxs-help.maxpat", "cf.sobel.jxs-help.maxpat" ]
																	}
, "gn.gloop.jxs-help.maxpat", "math.shaders-help.maxpat", 																	{
																		"name" : "temporal",
																		"contents" : [ "tp.slide.jxs-help.maxpat" ]
																	}
, 																	{
																		"name" : "texdisplace",
																		"contents" : [ "td.cartopol.jxs-help.maxpat", "td.kaleido.jxs-help.maxpat", "td.lumadisplace.jxs-help.maxpat", "td.mirror.jxs-help.maxpat", "td.repos.jxs-help.maxpat", "td.resample.jxs-help.maxpat", "td.rota.jxs-help.maxpat", "td.sinefold.jxs-help.maxpat" ]
																	}
, 																	{
																		"name" : "transition",
																		"contents" : [ "tr.dissolve.jxs-help.maxpat", "tr.edgeblend.jxs-help.maxpat", "tr.gridwipe.jxs-help.maxpat", "tr.shrinkwipe.jxs-help.maxpat", "tr.vignettes.jxs-help.maxpat" ]
																	}
 ]
															}
, "stroboscope-example.maxpat", 															{
																"name" : "Textures",
																"contents" : [ "subtex.3d.maxpat" ]
															}
, "towerofhanoi.maxpat" ]
													}
, 													{
														"name" : "video",
														"contents" : [ 															{
																"name" : "analysis",
																"contents" : [ "jit.3m-autoexpose.maxpat", "jit.fft-mask.maxpat", "jit.fft-rota.maxpat", "jit.fft-threshold.maxpat", "jit.histogram-multbyvideo.maxpat", "jit.histogram-toclut.maxpat", "jit.iter-histogram-graph.maxpat" ]
															}
, 															{
																"name" : "color",
																"contents" : [ "jit.charmap-movie2clut.maxpat", "jit.charmap-twotone.maxpat", "jit.noise-color-slide.maxpat", "jit.xfade-sat+desat.maxpat", "planemap_kaleidoscope.maxpat", "RGB2Luma-4_ways.maxpat", "suckahpicker.maxpat" ]
															}
, 															{
																"name" : "keying",
																"contents" : [ "dynamic_alpha.maxpat", "jit-diy-chromakey.maxpat", "jit.chromakey-1channel.maxpat", "jit.chromakey-3sources.maxpat", "jit.chromakey-pile.maxpat", "jit.lumakey-3sources-slower.maxpat", "jit.lumakey-3sources.maxpat", "jit.lumakey-othertypes.maxpat", "jit.scalebias-rgb2lumakey.maxpat" ]
															}
, 															{
																"name" : "matrix",
																"contents" : [ "bline-xfader.maxpat", "jit.matrix-blur.maxpat", "jit.matrix-copybits.maxpat", "jit.matrix-drift-helper.maxpat", "jit.matrix-drift-scanlines.maxpat", "jit.matrix-drift16.maxpat", "jit.matrix-drift64.maxpat", "jit.matrix-exprfill.maxpat", "jit.matrix-kaleidoscope.maxpat", "jit.matrix-linedisplace.maxpat", "jit.matrix-pip.maxpat", "jit.matrix-sample-and-hold.maxpat", "jit.matrix-scroll-mirror.maxpat", "jit.matrix-scroll-rgb.maxpat", "jit.matrix-scroll.maxpat", "jit.matrix-setall.maxpat", "jit.matrix-slitscan-multi.maxpat", "jit.matrix-slitscan.maxpat", "jit.matrix-split.maxpat", "jit.matrixset_delay.maxpat" ]
															}
, 															{
																"name" : "misc",
																"contents" : [ "Eclipse.maxpat", "jit.lcd-ascii-art.maxpat", "jit.lcd-wake-fun.maxpat", "jit.robcross-pixels.maxpat", "jit.scanslide-flames.maxpat", "LindenPlume.maxpat" ]
															}
, 															{
																"name" : "op",
																"contents" : [ "jit.charmap-op.maxpat", "jit.op-blur.maxpat", "jit.op-fabric.maxpat", "jit.op-fmod.maxpat", "jit.op-framedifference.maxpat", "jit.op-xfade.maxpat" ]
															}
, 															{
																"name" : "quicktime",
																"contents" : [ "jit.qt.grab-stopframe-DV.maxpat", "jit.qt.movie-frame+time.maxpat", "jit.qt.movie-looppointscrub.maxpat", "jit.qt.movie-multi-head.maxpat", "jit.qt.record-non-realtime.maxpat", 																	{
																		"name" : "jit.qtfx.helpers",
																		"contents" : [ "jit.qtfx.blnd.maxhelp", "jit.qtfx.blnd.maxpat", "jit.qtfx.blur.maxhelp", "jit.qtfx.blur.maxpat", "jit.qtfx.brco.maxhelp", "jit.qtfx.brco.maxpat", "jit.qtfx.chan.maxhelp", "jit.qtfx.chan.maxpat", "jit.qtfx.ckey.maxhelp", "jit.qtfx.ckey.maxpat", "jit.qtfx.clou.maxhelp", "jit.qtfx.clou.maxpat", "jit.qtfx.dslv.maxhelp", "jit.qtfx.dslv.maxpat", "jit.qtfx.edge.maxhelp", "jit.qtfx.edge.maxpat", "jit.qtfx.embs.maxhelp", "jit.qtfx.embs.maxpat", "jit.qtfx.fire.maxhelp", "jit.qtfx.fire.maxpat", "jit.qtfx.fmns.maxhelp", "jit.qtfx.fmns.maxpat", "jit.qtfx.gain.maxhelp", "jit.qtfx.gain.maxpat", "jit.qtfx.genk.maxhelp", "jit.qtfx.genk.maxpat", "jit.qtfx.hslb.maxhelp", "jit.qtfx.hslb.maxpat", "jit.qtfx.matt.maxhelp", "jit.qtfx.matt.maxpat", "jit.qtfx.mplo.maxhelp", "jit.qtfx.mplo.maxpat", "jit.qtfx.push.maxhelp", "jit.qtfx.push.maxpat", "jit.qtfx.rgbb.maxhelp", "jit.qtfx.rgbb.maxpat", "jit.qtfx.shrp.maxhelp", "jit.qtfx.shrp.maxpat", "jit.qtfx.slid.maxhelp", "jit.qtfx.slid.maxpat", "jit.qtfx.smp2.maxhelp", "jit.qtfx.smp2.maxpat", "jit.qtfx.smp3.maxhelp", "jit.qtfx.smp3.maxpat", "jit.qtfx.smp4.maxhelp", "jit.qtfx.smp4.maxpat", "jit.qtfx.smpt.maxhelp", "jit.qtfx.smpt.maxpat", "jit.qtfx.solr.maxhelp", "jit.qtfx.solr.maxpat", "jit.qtfx.tint.maxhelp", "jit.qtfx.tint.maxpat", "jit.qtfx.xplo.maxhelp", "jit.qtfx.xplo.maxpat", "jit.qtfx.zoom.maxhelp", "jit.qtfx.zoom.maxpat", "qtfx_args.maxpat", "qtfx_helpers_readme.txt" ]
																	}
, "loop_detect.maxpat", "movie_mangleur.maxpat", "packpicts.maxpat", 																	{
																		"name" : "PolyMovie",
																		"contents" : [ "polymovie.maxpat", "Poly~ForMovies.maxpat" ]
																	}
, 																	{
																		"name" : "qtmovie_flash",
																		"contents" : [ "qtmovie_flash.fla", "qtmovie_flash.maxpat", "qtmovie_flash.swf" ]
																	}
, "unpackpicts.maxpat" ]
															}
, 															{
																"name" : "spatial",
																"contents" : [ "cutandpaste.maxpat", "jit.convolve-blur.maxpat", "jit.convolve-morphop.maxpat", "jit.convolve-morphop2.maxpat", "jit.convolve-movie2kernel.maxpat", "jit.mxform2d-slippage.maxpat", "jit.mxform2d-videocube.maxpat", "jit.noise-repos-rgb.maxpat", "jit.noise-repos.maxpat", "jit.repos-blotch.maxpat", "jit.repos-car2pol.maxpat", "jit.repos-car2polxfade.maxpat", "jit.repos-distortquad.maxpat", "jit.repos-linedisplace.maxpat", "jit.repos-lpnoise-fb.maxpat", "jit.repos-lpnoise.maxpat", "jit.repos-multi.maxpat", "jit.repos-pinch-squares.maxpat", "jit.repos-pinch.maxpat", "jit.repos-pow.maxpat", "jit.repos-powdither.maxpat", "jit.repos-sinewaves.maxpat", "jit.repos-triggy.maxpat", "jit.rota-bgcolor.maxpat", "jit.rota-feedback.maxpat", "jit.rota-flowers.maxpat", "jit.rota-pile.maxpat" ]
															}
, 															{
																"name" : "uyvy",
																"contents" : [ "uyvy-2dv-vidplane.maxpat", "uyvy-4dv-vidplane.maxpat", "uyvy-color-explorer.maxpat", "uyvy-op-composite.maxpat" ]
															}
 ]
													}
 ]
											}
, 											{
												"name" : "legacy-examples",
												"contents" : [ 													{
														"name" : "5-point-1-fun",
														"contents" : [ "5-point-1-panning.maxpat", 															{
																"name" : "lib",
																"contents" : [ "5-point-1-panner.maxpat", "5-point-1-record-monitor.maxpat", "panmodule2.maxpat" ]
															}
 ]
													}
, 													{
														"name" : "effects",
														"contents" : [ 															{
																"name" : "reverb",
																"contents" : [ "reverb_example_old.maxpat", "yafr.maxpat" ]
															}
, 															{
																"name" : "signal-limiter",
																"contents" : [ 																	{
																		"name" : "lib",
																		"contents" : [ "squirrelcomp.maxpat" ]
																	}
, "squirrelcomp-help.maxpat", "squirrelcomp-link.maxpat" ]
															}
 ]
													}
, 													{
														"name" : "modsquad-history",
														"contents" : [ "modsquad-old-school.maxpat", "modsquad-seq.maxpat" ]
													}
, 													{
														"name" : "old-school-fft",
														"contents" : [ "convolution-workshop-old.maxpat", "forbidden-planet1997.maxpat", 															{
																"name" : "lib",
																"contents" : [ "fft-spect1024.maxpat", "fft-window1024.maxpat", "fft-xmult1024.maxpat" ]
															}
, "old-school-polar.maxpat" ]
													}
, 													{
														"name" : "recycler-folder",
														"contents" : [ "drumLoop.mid", "recycler.maxpat" ]
													}
, 													{
														"name" : "repeated notes",
														"contents" : [ "repnote.maxhelp", "repnote.maxpat" ]
													}
, 													{
														"name" : "synths",
														"contents" : [ 															{
																"name" : "fm-surfer-folder",
																"contents" : [ "fm-surfer.maxpat", 																	{
																		"name" : "lib",
																		"contents" : [ "100ths.maxpat", "2143poly.maxpat", "4213poly.maxpat", "auto-delay.maxpat", "carrier.maxpat", "display-edit.maxpat", "fm2143.maxpat", "fm4213.maxpat", "glide.maxpat", "jitter.maxpat", "LFOmodulator.maxpat", "LFOwaveform.maxpat", "manual-voice-edits.maxpat", "modulator.maxpat", "new-random.maxpat", "rand-carrier-env1.maxpat", "rand-carrier-env3.maxpat", "rand-envs.maxpat", "rand-modulator-env2.maxpat", "rand-modulator-env4.maxpat", "rand-voice-data.maxpat", "rand-voice-definition.maxpat", "rand-voice.maxpat", "re-random.maxpat", "save-envs.maxpat", "save-voices.maxpat", "unpack-env.maxpat", "unpack-voice.maxpat", 																			{
																				"name" : "waveforms",
																				"contents" : [ "saw.aif", "sin.aif", "sinoff.aif", "sqr.aif", "tri.aif" ]
																			}
 ]
																	}
 ]
															}
, "oscsync.maxpat" ]
													}
 ]
											}
, 											{
												"name" : "max-tricks",
												"contents" : [ "buttonflower.maxpat", 													{
														"name" : "notes-and-pitch",
														"contents" : [ 															{
																"name" : "pitch-to-freq-ratio",
																"contents" : [ "transratio.maxhelp", "transratio.maxpat" ]
															}
, "scaler.maxpat" ]
													}
, 													{
														"name" : "random_with_no_repeat",
														"contents" : [ "urn-jb.maxhelp", "urn-jb.maxpat" ]
													}
, 													{
														"name" : "send-receive-tricks",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "sw.maxpat", "var.maxpat", "X.inappropriate-behaviour.maxpat", "X.multi-space.maxpat", "X.ourspace.maxpat", "X.send-receive-poly.maxpat", "X.some-abstraction.maxpat", "X.theirspace.maxpat" ]
															}
, "send-receive-hoard-#0.maxpat", "send-receive-hoard-#1.maxpat", "send-receive-share.maxpat" ]
													}
 ]
											}
, 											{
												"name" : "pitch and time",
												"contents" : [ "Max7 M4L Presentation.maxpat", "Retune Automation example.maxpat" ]
											}
, 											{
												"name" : "sampling",
												"contents" : [ 													{
														"name" : "granular",
														"contents" : [ "granularized.maxpat", 															{
																"name" : "lib",
																"contents" : [ "rchoose.maxpat", "rgrain.maxpat", "rgrano.maxpat" ]
															}
 ]
													}
, "groove-sync.maxpat", "pitch-looper.maxpat", 													{
														"name" : "sampling_with_adsr",
														"contents" : [ "adsr_advanced.maxpat", "adsr_intro.maxpat", 															{
																"name" : "lib",
																"contents" : [ "clickless-voice-01.maxpat", "clickless-voice-02.maxpat", "clickless-voice-03.maxpat", "clickless-voice-05.maxpat" ]
															}
 ]
													}
, "scrub-sampler.maxpat", 													{
														"name" : "SoundPlayer",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "X.player~.maxpat", "X.plr~.maxhelp", "X.plr~.maxpat" ]
															}
, "X.player~.maxhelp" ]
													}
, 													{
														"name" : "wavefade-folder",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "wavefade.maxpat", "wavefaderms.maxpat" ]
															}
, "wavefade-bts.maxpat", "wavefade.maxhelp", "wavefaderms.maxhelp" ]
													}
 ]
											}
, 											{
												"name" : "sequencing-looping",
												"contents" : [ 													{
														"name" : "audio-rate-sequencing-looping",
														"contents" : [ "0-README.txt", "1-phasor-metronome.maxpat", "2-phasor-step-sequencer.maxpat", "3-two-metronomes.maxpat", "4-line-graph.maxpat", "grooveduck.maxhelp", "grooveduck2.maxhelp", 															{
																"name" : "lib",
																"contents" : [ "grooveduck.maxpat", "grooveduck2.maxpat" ]
															}
 ]
													}
, 													{
														"name" : "CyclistMusic",
														"contents" : [ "01-X.Generation.maxpat", "02-X.Groover.maxpat", "03-X.Midinote.maxpat", "04-X.Music1.maxpat", 															{
																"name" : "lib",
																"contents" : [ 																	{
																		"name" : "abstractions",
																		"contents" : [ "X.convert.maxpat", "X.fun.maxpat", "X.groove.maxpat", "X.list.maxpat", "X.note.maxpat", "X.timepoint.maxpat", "X.translate.maxpat", "X.transport.maxpat" ]
																	}
, 																	{
																		"name" : "others",
																		"contents" : [ "X.groove-matrix1.psd", "X.note2number-C3.txt", "X.number2note-C3.txt" ]
																	}
, 																	{
																		"name" : "presets",
																		"contents" : [ "X.Generation.xml", "X.Groover.xml", "X.Midinote.xml", "X.Music1.xml" ]
																	}
 ]
															}
 ]
													}
, 													{
														"name" : "modsquad",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "transposer-poly.maxpat" ]
															}
, "ModSquad.maxpat", "read-me.txt" ]
													}
, "phasor-to-midi-sync.maxpat" ]
											}
, 											{
												"name" : "spatialization",
												"contents" : [ "doppler.maxpat", "ms-matrix.maxpat", 													{
														"name" : "panning",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "pan2.maxpat", "pan2S.maxpat", "pan4S.maxpat" ]
															}
, "pan2.maxhelp", "pan2S.maxhelp", "pan4S.maxhelp" ]
													}
, 													{
														"name" : "quad-spatializer-folder",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "spat4.maxpat" ]
															}
, "note.txt", "quad-spatializer.maxpat" ]
													}
, "speaker-test.maxpat" ]
											}
, 											{
												"name" : "synths",
												"contents" : [ "cheby.maxpat", "dialer.maxpat", 													{
														"name" : "FMSynth",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "X.FM-doc.maxpat", "X.FM-voice~.maxpat", "X.FM.xml", "X.noise.aif", "X.pulse.aif", "X.sawdown.aif", "X.sawup.aif", "X.sine.aif", "X.square.aif", "X.triangle.aif" ]
															}
, "X.FM~.maxpat" ]
													}
, 													{
														"name" : "ohm",
														"contents" : [ "60hz-meditation.maxpat", 															{
																"name" : "lib",
																"contents" : [ "sinuzoid-log.maxpat" ]
															}
 ]
													}
, "oscsync-advanced.maxpat", 													{
														"name" : "very-special-guest",
														"contents" : [ 															{
																"name" : "lib",
																"contents" : [ "aqua_toggle.png", "Background_1024x768.png", "Background_800x600.png", "grid.png", "mixture.maxpat", "Pane.png", "sinuzoid.maxpat", "SliderBG.png", "studie-line.png", "topSliderKnob.png" ]
															}
, "note.txt", "stockhausen-studie-II.maxpat" ]
													}
 ]
											}
, 											{
												"name" : "utilities",
												"contents" : [ "buffer-writer.maxpat", 													{
														"name" : "input_output IO",
														"contents" : [ "IO.maxhelp", 															{
																"name" : "lib",
																"contents" : [ "IO.maxpat" ]
															}
 ]
													}
, "latency-test.maxpat", "launcher.maxpat", "pattr-helper.maxpat", "profile.maxpat" ]
											}
 ]
									}
,
									"prefix" : "",
									"style" : "",
									"text" : "gen~.computed_sine.maxpat"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpdetails.js",
									"id" : "obj-2",
									"ignoreclick" : 1,
									"jsarguments" : [ "pmenu" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 620.0, 125.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 10.0, 85.0, 51.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p basic",
					"varname" : "basic_tab"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpname.js",
					"id" : "obj-7",
					"ignoreclick" : 1,
					"jsarguments" : [ "pmenu" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 10.0, 150.284927, 57.567627 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 26.0, 897.0, 524.0 ],
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
						"showontab" : 1,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 153.0, 88.0, 50.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p ?",
					"varname" : "q_tab"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "helpname.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "helpdetails.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "helpstarter.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "pmenu.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
