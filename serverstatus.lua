local DISCORD_NAME = "StreetLifeRp - Status"

function sendToDiscord(title, description, color, fields, footer, thumbnail)
    local embed = {
          {
            ["title"] = "[StreetLifeRP] -  Status",
            ["description"] = "Serveren er på vej op bare vent et sekund og så er den oppe!\nHusk at joine serveren når ipen bliver udsendt!",
            ["color"] = 2475211, -- Her kan du ændre farverne på teksten/botten. På den her hjemmesidde https://htmlcolorcodes.com/color-picker/
            ["fields"] = {
              {
                ["name"] = "*Discord*",
                ["value"] = "Discord Perm link: https://discord.gg/Yy52R5PUEq",
                ["inline"] = true
              },
              {
                ["name"] = "*Website*",
                ["value"] = "Kommer Snart!!"
              },
              {
                ["name"] = "*Server IP*",
                ["value"] = "Vores Server ip : Connect cfx.re/join/aoldo3"
              }
            },
            ["footer"] = {
              ["text"] = "Tak fordi valgte StreetLifeRP",
              ["icon_url"] = "https://cdn.discordapp.com/attachments/942433867262996501/942530551565406208/Discord_logo_Streetlife.png"
            },
            ["thumbnail"] = {
              ["url"] = "https://cdn.discordapp.com/attachments/942433867262996501/942530551565406208/Discord_logo_Streetlife.png"
              },
          }
      }
  
    PerformHttpRequest('https://discord.com/api/webhooks/942529510912430090/NNBOa933TJS6Zi9d2ga8UJ1szHkBNLNJaJge-jG-1UyAklpI0xjSEZcCj6b2LQXW7f0b', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end


-- Dette skal være der ellers kan den ikke sende beskeden!
sendToDiscord()


--------------------------------------------------------------------------

AddEventHandler('onResourceStop', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print('The resource ' .. resourceName .. ' was stopped.')
  print('The resource ' .. resourceName .. ' was stopped.')
  print('The resource ' .. resourceName .. ' was stopped.')
  print('The resource ' .. resourceName .. ' was stopped.')
end)

--------------------------------------------------------------------------

AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print('The resource ' .. resourceName .. ' was started.')
  print('The resource ' .. resourceName .. ' was started.')
  print('The resource ' .. resourceName .. ' was started.')
  print('The resource ' .. resourceName .. ' was started.')
end)

--------------------------------------------------------------------------

AddEventHandler('onResourceStarting', function(resourceName)
  if resourceName == 'Snulle-Status' then
    CancelEvent()
  end
end)