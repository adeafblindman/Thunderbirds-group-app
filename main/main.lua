---------------------------- DRAWN2CODE GENERATED CODE -------------------------
-- This code is automatically generated by Drawn2Code Designer (version 1.464). 
-- As you make changes to your design, the code here will update automatically! 
--> * Edits you make in THIS CODE WINDOW ARE NOT SYNCED to your D2C design * <--
-- Notes:
-- Set the project folder with the "folder" button in the generated code window.
-- Save this code to a "main.lua" file (in the project folder) using the "save"
--   button in the generated code window.
-- Simple "config.lua" & "build.settings" files are created if not present.
-- Design File: "/Users/seankilgore/Desktop/main/FinalGameEdit1.d2c"
--------------------------------------------------------------------------------

local widget = require "widget"

-- image "Level_test.jpg"
Obj1 = display.newImageRect( "Level_test.jpg", 573, 573 )
Obj1.x = 158
Obj1.y = 237
Obj1.id = "Obj1"
Obj1.isVisible = false

-- image "street.jpg"
Obj43 = display.newImageRect( "street.jpg", 417, 657 )
Obj43.x = 160
Obj43.y = 240
Obj43.id = "Obj43"

-- image "tavern.jpg"
Obj44 = display.newImageRect( "tavern.jpg", 379, 606 )
Obj44.x = 160
Obj44.y = 240
Obj44.id = "Obj44"
Obj44.isVisible = false

-- image "cave tunnel.jpg"
Obj45 = display.newImageRect( "cave tunnel.jpg", 568, 531 )
Obj45.x = 160
Obj45.y = 240
Obj45.id = "Obj45"
Obj45.isVisible = false

-- image "cellar.jpg"
Obj46 = display.newImageRect( "cellar.jpg", 600, 556 )
Obj46.x = 160
Obj46.y = 240
Obj46.id = "Obj46"
Obj46.isVisible = false

-- image "tunnel room.jpg"
Obj47 = display.newImageRect( "tunnel room.jpg", 619, 568 )
Obj47.x = 160
Obj47.y = 240
Obj47.id = "Obj47"
Obj47.isVisible = false

Obj17_options = {
  text = "You happen upon a small town, weary from your travels. As you walk down the dimly lit street, you notice how silent the town is.",
  x = 159,
  y = 137,
  width = 313,
  height = 267,
  font = "HelveticaNeue",
  fontSize = 14,
  align = "center",
}
Obj17 = display.newEmbossedText( Obj17_options )
Obj17.id = "Obj17"
Obj17:setTextColor(1.0, 1.0, 0.2, 1.0)

-------PLAY---------
-- new snippet parked here, waiting for you instructions

-- fn to handle button press on Obj3
-- https://docs.coronalabs.com/api/library/widget/newButton.html
-- note: this fn must be positioned in the stack above Obj3
function Obj3OnPressHandler( event )

  -- Obj5: Play Button
  -- Starts the game

end


-- fn for widget onRelease event
-- note: this fn must be positioned in the stack above Obj3
function Obj3OnReleaseHandler( event )

  -- Obj11: default onRelease support
  -- starts the first scene after pushing button
  print( "You released the widget Obj3" )
  Obj1:toFront()
  Obj17:toFront()
  Obj19:toFront()

end


-------PLAY End-------
-- new snippet parked here, waiting for you instructions

-------Scene 1--------
-- new snippet parked here, waiting for you instructions

-- fn to handle taps on Obj31
-- https://docs.coronalabs.com/api/event/tap/index.html
-- note: this fn must be positioned in the stack above Obj31
function Obj31TapHandler( event )

  -- Obj41: choiceA
  -- information about the tap:
  if event.target.id ~= nil then print("Tap on id "..event.target.id ); end
  if event.target.name ~= nil then print("Tap on name "..event.target.name ); end
  print("Tap at x, y = "..event.target.x..", "..event.target.y )
  print("numTaps = "..event.numTaps )
  
  if choiceA.text == "You whistle out loud to break the silence." then
  narration.text = "Even as you whistle you can’t help but feel something is wrong. You begin to hear movement all around you from the shadows."
  choiceA.text = "You panic and start to run."
  choiceB.text = "Aware of the danger, you move faster towards the nearest building."
  choiceC.text = "Stricken with fear, you freeze in place."
  Obj43.isVisible = true -- street --
  
  elseif choiceA.text == "You panic and start to run." then
  narration.text = "A group of shadowy figures jumps out in front of you, blocking your path. You quickly turn around to escape, and immediately feel the crack of a club on your forehead. As the world begins to go dark, you hear shouting, and the shadowy figure flee. Your eyes slowly come into focus as you faintly hear the town guards tell you how lucky you were to survive the encounter. Although all of your possessions were taken by the figures, you are relatively unharmed." 
  choiceA.text = "Ask the guards who attacked you."
  choiceB.text = "Thank the guards and leave."
  choiceC.text = " "
  Obj43.isVisible = true -- street --
  
  elseif choiceA.text == "Ask the guards who attacked you." then
  narration.text = "You ask the guards if they knew who attacked you, but they do not know for sure. They mention that they were most likely members of the Forsaken—a demonic cult who has been ravaging the city. The guards know they have been using the sewers as a way to quickly move throughout the city, but no one dares follow them. The guards say it is best to stay off the streets after dark, and suggest you go to the local inn to rest."
  choiceA.text = "Head toward the inn."
  choiceB.text = "Head towards the sewers."
  choiceC.text = " "
  
  elseif choiceA.text == "Head toward the inn." then
  narration.text = "You stumble along the street, weary from the blow. You look down the road and hear chatter from the inn. As you walk through the doors, the room goes silent. All the eyes from the inn are upon you."
  choiceA.text = "You quietly move to the nearest table and sit down."
  choiceB.text = "You move to the bar and demand to know about the Forsaken."
  choiceC.text = " "
  Obj43.isVisible = false -- street --
  Obj44.isVisible = true -- tavern --
  
  elseif choiceA.text == "You quietly move to the nearest table and sit down." then
  narration.text = "As you sit down, the patrons carry on their conversations. An elderly man walks up to your table and sits down. He buys you a drink and asks about your head."
  choiceA.text = "You tell him the truth."
  choiceB.text = "You remain silent."
  choiceC.text = " "
  Obj44.isVisible = true -- tavern --
  Obj43.isVisible = false -- street --
  
  elseif choiceA.text == "You tell him the truth." then
  narration.text = "Shocked that you survived the attack, he tells you about the evil behind the cult. The group has been dragging people from the streets into the sewers below the city for weeks. No one knows what they are doing to them or where they are going, but someone has to stop them. He tells you that the Lord of the keep has offered 200 gold coins to anyone brave enough to stop them."
  choiceA.text = "Ask the man where you can find the cult."
  choiceB.text = "Remain silent."
  choiceC.text = " "
  
  elseif choiceA.text == "Ask the man where you can find the cult." then
  narration.text = "Unaware of their actual location, he tells you that he only knows that they use the sewers to move quickly around the city. He tells you that there is a secret entrance to the sewers in the cellars below the tavern, and that you should start there."
  choiceA.text = "You get up from the table and walk down the stairs towards the cellar."
  choiceB.text = "Unwilling to continue the journey, you rent a room and plan to leave at first light."
  choiceC.text = " "
  
  elseif choiceA.text == "You get up from the table and walk down the stairs towards the cellar." then
  narration.text = "At the bottom of the stairs, there is a wooden door leading to the cellars. You push and the door creaks open. The room is dark and dingy. On the walls next to the door are two flickering torches that provide very little light. As you look around, you notice that the room is full of wine barrels and old wooden crates."
  choiceA.text = "Search the room for the secret entrance."
  choiceB.text = "Search the room for anything useful."
  choiceC.text = " "
  Obj44.isVisible = false -- tavern --
  Obj46.isVisible = true -- cellar --
  
  elseif choiceA.text == "Search the room for the secret entrance." then
  narration.text = "You pick up one of the torches and slowly walk through the rows of barrels and crates looking for the secret entrance the man talked about. The walls are covered in spider webs and the crates look like they haven’t been moved in ages. At the end of the room you notice a large, hand woven rug on the cellar floor and a rotting wooden shelf pushed against the far wall."
  choiceA.text = "Move the rug."
  choiceB.text = "Move the shelf."
  choiceC.text = " "
  Obj46.isVisible = true -- cellar --
  
  
  elseif choiceA.text == "Move the rug." then
  narration.text = "You pull the heavy rug from the floor, but to your disappointment, nothing but stone and moss lie underneath."
  choiceA.text = "Move the shelf."
  choiceB.text = " "
  choiceC.text = " "
  
  elseif choiceA.text == "Move the shelf." then
  narration.text = "You set the torch on the stone floor and use all your strength to push the shelf from the wall. It slowly inches away from the wall revealing a small wooden door behind it."
  choiceA.text = "Push open the hidden door."
  choiceB.text = "You realize what you you’re getting yourself into and quickly leave the cellar."
  choiceC.text = " "
  
  elseif choiceA.text == "Push open the hidden door." then
  narration.text = "The wooden door creaks open, and you take a step into an abandoned stone tunnel. Besides the dim light being emitted from your torch, you cannot see much more than ten feet in front of you."
  choiceA.text = "Keep walking down the tunnel."
  choiceB.text = "Throw your torch down the tunnel."
  choiceC.text = " "
  Obj46.isVisible = false -- cellar --
  Obj45.isVisible = true -- cave -- 
  
  elseif choiceA.text == "Keep walking down the tunnel." then
  narration.text = "As you’re walking down the passage, you notice a wire running across the width of the tunnel. Convinced that someone set a trip wire, you carefully avoid it, and keep moving down the tunnel. At the end of the passage, you see a heavy, double wooden door."
  choiceA.text = "Pull open the wooden doors."
  choiceB.text = "Put your ear against the wood to listen."
  choiceC.text = " "
  Obj45.isVisible = true -- cave --
  
  elseif choiceA.text == "Pull open the wooden doors." then
  narration.text = "You pull open the wooden doors to find a room filled with chains and cages. A masked man quickly looks over to you and draws his sword."
  choiceA.text = "Run back down the tunnel."
  choiceB.text = "Stand your ground."
  choiceC.text = " "
  Obj45.isVisible = false -- cave --
  Obj47.isVisible = true -- tunnel room --
  
  elseif choiceA.text == "Run back down the tunnel." then
  narration.text = "Desperately trying to avoided the masked man, you sprint back down the tunnel. In the rush of thing, you drop your torch. You can see the door leading back into the cellar, and run as fast as you can. Because of your panic, you forget all about the wire and run right over it. You hear a sharp click and a you hear something whiz in the air behind you. A sharp pain fills your chest as you fall to your knees. You look down at the arrow piercing your chest, grasp it in agony, and collapse. GAME OVER- You died."
  choiceA.text = " "
  choiceB.text = " "
  choiceC.text = " "
  Obj45.isVisible = false -- cave --
  
  elseif choiceA.text == " " then
  narration.text = " "
  choiceA.text = " "
  choiceB.text = " "
  choiceC.text = " "
  
  end
  
  -- tap has been handled (optional final statement):

end


Obj31_options = {
  text = "You whistle out loud to break the silence.",
  x = 163,
  y = 313,
  width = 220,
  height = 53,
  font = "HelveticaNeue",
  fontSize = 14,
  align = "center",
}
Obj31 = display.newEmbossedText( Obj31_options )
Obj31.id = "Obj31"
Obj31:setTextColor(1.0, 1.0, 0.0, 1.0)
Obj31:addEventListener( "tap", Obj31TapHandler )

-- fn to handle taps on Obj32
-- https://docs.coronalabs.com/api/event/tap/index.html
-- note: this fn must be positioned in the stack above Obj32
function Obj32TapHandler( event )

  -- Obj38: choiceB
  -- information about the tap:
  if event.target.id ~= nil then print("Tap on id "..event.target.id ); end
  if event.target.name ~= nil then print("Tap on name "..event.target.name ); end
  print("Tap at x, y = "..event.target.x..", "..event.target.y )
  print("numTaps = "..event.numTaps )
  
  if choiceB.text == "You stop in the middle of the road to look around." then
  narration.text = "You stop in the middle of the road and listen. You begin to hear movement all around you from the shadows."
  choiceA.text = "You panic and start to run."
  choiceB.text = "Aware of the danger, you move faster towards the nearest building."
  choiceC.text = "Stricken with fear, you freeze in place."
  
  elseif choiceB.text == "Aware of the danger, you move faster towards the nearest building." then
  narration.text = "A group of shadowy figures jumps out in front of you, blocking your path. You quickly turn around to escape, and immediately feel the crack of a club on your forehead. As the world begins to go dark, you hear shouting, and the shadowy figures flee. Your eyes slowly come into focus as you faintly hear the town guards tell you how lucky you were to survive the encounter. Although all of your possessions were taken by the figures, you are relatively unharmed."
  choiceA.text = "Ask the guards who attacked you."
  choiceB.text = "Thank the guards and leave."
  choiceC.text = " "
  
  elseif choiceB.text == "Thank the guards and leave." then
  narration.text = "The guards notice you are weak from the blow, and suggest you go to the local inn to rest. As you leave, the guards warn you that the streets are no longer safe after dark. The group that attacked you moves throughout the city like shadows, using the sewers as a way to move around undetected. The guards suggest you avoid them at all costs."
  choiceA.text = "Head toward the inn."
  choiceB.text = "Head towards the sewers."
  choiceC.text = " "
  
  elseif choiceB.text == "Head towards the sewers." then
  narration.text = "Wanting revenge, you move towards an entrance of the sewers. You peer inside the depths and see nothing but pitch blackness. You take a single step towards the darkness, and an overwhelming feeling of evil surrounds you. A voice calls to you from within and the ground begins to shake. Rats begin to flood out of the entrance, desperately trying to escape whatever is within."
  choiceA.text = "Quickly turn around and run."
  choiceB.text = "Follow the voice calling to you."
  choiceC.text = " "
  
  elseif choiceB.text == "Follow the voice calling to you." then
  narration.text = "You move towards the voice, seemingly unable to be drawn away from its call. As you walk, the murky water at your feet grows higher until it is almost waist deep. The voice grows louder and louder until it is as though it is right in front of you. All of a sudden the tunnel falls deathly silent. You feel an enormous hand wrap around your legs and drag you under water towards the depths. GAME OVER—You died."
  choiceA.text = " "
  choiceB.text = " "
  choiceC.text = " "
  
  elseif choiceB.text == " " then
  narration.text = " "
  choiceA.text = " "
  choiceB.text = " "
  choiceC.text = " "
  
  end
  
  -- tap has been handled (optional final statement):
  -- return true

end


Obj32_options = {
  text = "You stop in the middle of the road to look around.",
  x = 162,
  y = 383,
  width = 220,
  height = 60,
  font = "HelveticaNeue",
  fontSize = 14,
  align = "center",
}
Obj32 = display.newEmbossedText( Obj32_options )
Obj32.id = "Obj32"
Obj32:setTextColor(1.0, 1.0, 0.0, 1.0)
Obj32:addEventListener( "tap", Obj32TapHandler )

-- fn to handle taps on Obj33
-- https://docs.coronalabs.com/api/event/tap/index.html
-- note: this fn must be positioned in the stack above Obj33
function Obj33TapHandler( event )

  -- Obj35: choiceC
  -- information about the tap:
  if event.target.id ~= nil then print("Tap on id "..event.target.id ); end
  if event.target.name ~= nil then print("Tap on name "..event.target.name ); end
  print("Tap at x, y = "..event.target.x..", "..event.target.y )
  print("numTaps = "..event.numTaps )
  
  if choiceC.text == "You start to walk toward the nearest building." then
  narration.text = "You start to move towards the nearest building, but as you walk down the road, you begin to hear movement all around you from the shadows."
  choiceA.text = "You panic and start to run."
  choiceB.text = "Aware of the danger, you move quickly towards the nearest building."
  choiceC.text = "Stricken with fear, you freeze in place."
  
  elseif choiceC.text == "Stricken with fear, you freeze in place." then
  narration.text = "A group of shadowy figures surrounds you. You quickly turn around to escape, and immediately feel the crack of a club on your forehead. As the world begins to go dark, you hear shouting, and the shadowy figures flee."
  choiceA.text = " "
  choiceB.text = " "
  choiceC.text = " "
  
  end
  -- tap has been handled (optional final statement):
  -- return true

end


Obj33_options = {
  text = "You start to walk toward the nearest building.",
  x = 162,
  y = 461,
  width = 220,
  height = 60,
  font = "HelveticaNeue",
  fontSize = 14,
  align = "center",
}
Obj33 = display.newEmbossedText( Obj33_options )
Obj33.id = "Obj33"
Obj33:setTextColor(1.0, 1.0, 0.0, 1.0)
Obj33:addEventListener( "tap", Obj33TapHandler )

------Scene 2------
-- new snippet parked here, waiting for you instructions

-- Variables
narration = Obj17
choiceA = Obj31
choiceB = Obj32
choiceC = Obj33
