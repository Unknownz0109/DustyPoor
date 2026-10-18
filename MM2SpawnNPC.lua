print("Dusty Gramophone NPC Spawner")
-- CLEANUP PREVIOUS RUN
if type(_G.DustyNPCShutdown) == "function" then
    pcall(_G.DustyNPCShutdown)
end

DustyDB = DustyDB or {}
DustyDB.Visuals = {
    ["Flowerwood Gun"] = {
        Type = "Gun",
        MeshId = "rbxassetid://16895099893",
        TextureId = "rbxassetid://16895448237",
        Scale = Vector3.new(0.05, 0.05, 0.05),
        Offset = Vector3.new(0, 0, 0),
        Placement = "WaistRight",
    },

    ["Lightbringer"] = {
        Type = "Gun",
        MeshId = "rbxassetid://4730813852",
        TextureId = "http://www.roblox.com/asset/?id=4728487789",
        Scale = Vector3.new(0.05, 0.05, 0.05),
        Offset = Vector3.new(0, 0, 0),
        Placement = "WaistRight",
    },

    ["Snowcannon"] = {
        Type = "Gun",
        MeshId = "rbxassetid://99836890880541",
        TextureId = "http://www.roblox.com/asset/?id=122392330922281",
        Scale = Vector3.new(0.05, 0.05, 0.05),
        Offset = Vector3.new(0, 0, 0),
        Placement = "WaistRight",
    },

    ["Gingerscythe"] = {
        Type = "Knife",
        MeshId = "rbxassetid://15395668244",
        TextureId = "http://www.roblox.com/asset/?id=15409195246",
        Scale = Vector3.new(0.06, 0.06, 0.06),
        Offset = Vector3.new(0, 0, 0),
        Placement = "Back",
    },

    ["Luger"] = {
        Type = "Gun",
        MeshId = "rbxassetid://95356090",
        TextureId = "http://www.roblox.com/asset/?id=126534866",
        Scale = Vector3.new(1.7999999523162842, 1.7999999523162842, 1.7999999523162842),
        Offset = Vector3.new(0, 0, 0),
        Placement = "WaistRight",
    },

    ["Darkbringer"] = {
        Type = "Gun",
        MeshId = "rbxassetid://4730813852",
        TextureId = "http://www.roblox.com/asset/?id=4728494788",
        Scale = Vector3.new(0.05, 0.05, 0.05),
        Offset = Vector3.new(0, 0, 0),
        Placement = "WaistRight",
    },

    ["Eternalcane"] = {
        Type = "Knife",
        MeshId = "rbxassetid://3132923779",
        TextureId = "http://www.roblox.com/asset/?id=4488374804",
        Scale = Vector3.new(0.949999988079071, 0.949999988079071, 0.949999988079071),
        Offset = Vector3.new(0, 0, 0),
        Placement = "WaistLeft",
    },

    ["Gingermint"] = {
        Type = "Gun",
        MeshId = "rbxassetid://11866444071",
        TextureId = "rbxassetid://11866444253",
        Scale = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806),
        Offset = Vector3.new(0, 0, 0),
        Placement = "WaistRight",
    },
	["Elderwood Scythe"] = {
    Type = "Knife",
    MeshId = "rbxassetid://4217523241",
    TextureId = "http://www.roblox.com/asset/?id=4210044808",
    Scale = Vector3.new(0.07000000029802322, 0.07000000029802322, 0.07000000029802322),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
	Placement = "WaistLeft",
},
["Batwing"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset/?id=305826272",
    TextureId = "rbxassetid://2511673515",
    Scale = Vector3.new(1, 1, 1),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
},
["Heartblade"] = {
    Type = "Knife",
    MeshId = "rbxassetid://6404140078",
    TextureId = "http://www.roblox.com/asset/?id=6413074818",
    Scale = Vector3.new(1, 1, 1),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
	Placement = "WaistLeft",
},
["Candleflame"] = {
    Type = "Knife",
    MeshId = "rbxassetid://7791364860",
    TextureId = "rbxassetid://7791364988",
    Scale = Vector3.new(0.05999999865889549, 0.05999999865889549, 0.05999999865889549),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
	Placement = "WaistLeft",
},
["Makeshift"] = {
    Type = "Gun",
    MeshId = "rbxassetid://11158364935",
    TextureId = "http://www.roblox.com/asset/?id=11274360089",
    Scale = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
},
["Plasmablade"] = {
    Type = "Knife",
    MeshId = "rbxassetid://9702732853",
    TextureId = "rbxassetid://10015130416",
    Scale = Vector3.new(0.0020000000949949026, 0.0020000000949949026, 0.0020000000949949026),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
},
["Plasmabeam"] = {
    Type = "Gun",
    MeshId = "rbxassetid://9702755186",
    TextureId = "rbxassetid://10015208201",
    Scale = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
    AttachmentPosition = Vector3.new(0.06429433822631836, 0.05646803602576256, 0.19186615943908691),
    AttachmentOrientation = Vector3.new(-73.00315856933594, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.2923188805580139, -0.9563208818435669),
},
["Harvester"] = {
    Type = "Gun",
    Placement = "WaistRight",
    MeshId = "rbxassetid://7775027413",
    TextureId = "http://www.roblox.com/asset/?id=7775245551",
    Scale = Vector3.new(0.05999999865889549, 0.05999999865889549, 0.05999999865889549),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
    AttachmentPosition = Vector3.new(0.1299028992652893, 0.000002229222218375071, 0.07500199228525162),
    AttachmentOrientation = Vector3.new(-0.0026997302193194628, -60, 90.00231170654297),
    AttachmentAxis = Vector3.new(0.000020563602447509766, 1, -0.00005862116813659668),
    AttachmentSecondaryAxis = Vector3.new(-0.5, -0.00004048561822855845, -0.8660253882408142),
},
["Bat"] = {
    Type = "Knife",
    MeshId = "rbxassetid://11182796403",
    TextureId = "rbxassetid://11192090515",
    Scale = Vector3.new(0.07000000029802322, 0.07000000029802322, 0.07000000029802322),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    Chroma = false,
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
},
["ChromaLightbringer"] = {
    Type = "Gun",
    MeshId = "rbxassetid://4730813852",
    TextureId = "http://www.roblox.com/asset/?id=4728487789",
    Scale = Vector3.new(0.039000000804662704, 0.039000000804662704, 0.039000000804662704),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(5.4977863522831256e-15, -0.1866021752357483, 0.12320592254400253),
    AttachmentOrientation = Vector3.new(-80.00140380859375, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.17362435162067413, -0.9848120212554932),
    Chroma = true,
    ChromaTexture = "rbxassetid://4751498862",
    ChromaStaticLayer = "rbxassetid://18364488166",
},
["ChromaCandleflame"] = {
    Type = "Knife",
    MeshId = "rbxassetid://7791364860",
    TextureId = "rbxassetid://7791364988",
    Scale = Vector3.new(0.039000000804662704, 0.039000000804662704, 0.039000000804662704),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
	Placement = "WaistLeft",
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(5.4977863522831256e-15, -0.1866021752357483, 0.12320592254400253),
    AttachmentOrientation = Vector3.new(-80.00140380859375, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.17362435162067413, -0.9848120212554932),
    Chroma = true,
    ChromaTexture = "rbxassetid://4751498862",
    ChromaStaticLayer = "rbxassetid://18364488166",
},
["Vampire's Gun"] = {
    Type = "Gun",
    MeshId = "rbxassetid://126591885289479",
    TextureId = "rbxassetid://104946799389637",
    Scale = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Slate,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, -0.20000000298023224, 0.08990859985351562),
    AttachmentOrientation = Vector3.new(-50.001827239990234, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.6427633166313171, -0.7660649418830872),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Raygun"] = {
    Type = "Gun",
    MeshId = "rbxassetid://115447220952926",
    TextureId = "rbxassetid://127881437685243",
    Scale = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Slate,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, -0.20000000298023224, 0.08990859985351562),
    AttachmentOrientation = Vector3.new(-50.001827239990234, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.6427633166313171, -0.7660649418830872),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Nightblade"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset/?id=103838505",
    TextureId = "http://www.roblox.com/asset/?id=103838996",
    Scale = Vector3.new(0.699999988079071, 0.44999998807907104, 0.5),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.38823530077934265, 0.37254902720451355, 0.3843137323856354),
    Material = Enum.Material.Plastic,
    Transparency = 0,
	Placement = "WaistLeft",
    Reflectance = 0,
    VertexColor = Vector3.new(0.4000000059604645, 0.4000000059604645, 0.4000000059604645),
    AttachmentPosition = Vector3.new(0.006067206151783466, 0.15098965167999268, 0.04653354361653328),
    AttachmentOrientation = Vector3.new(4.996701717376709, -0.15615952014923096, -0.17513397336006165),
    AttachmentAxis = Vector3.new(0.999992311000824, -0.0030450436752289534, 0.002459252253174782),
    AttachmentSecondaryAxis = Vector3.new(0.00281926360912621, 0.9961950778961182, 0.08710600435733795),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Icebreaker"] = {
    Type = "Knife",
    MeshId = "rbxassetid://6124173614",
    TextureId = "rbxassetid://6124173821",
    Scale = Vector3.new(1, 1, 1),
	Placement = "WaistLeft",
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Hallow's Edge"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset?id=179155055",
    TextureId = "http://www.roblox.com/asset?id=179155105",
    Scale = Vector3.new(0.550000011920929, 0.550000011920929, 0.5550000071525574),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Eternal IV"] = {
    Type = "Knife",
    MeshId = "rbxassetid://3132923779",
    TextureId = "http://www.roblox.com/asset/?id=4999951444",
    Scale = Vector3.new(0.949999988079071, 0.949999988079071, 0.949999988079071),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Icewing"] = {
    Type = "Knife",
    Placement = "WaistLeft",
    MeshId = "rbxassetid://3183449780",
    TextureId = "rbxassetid://2279588369",
    Scale = Vector3.new(0.08500000089406967, 0.08500000089406967, 0.08500000089406967),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0.00309753674082458, -0.009521819651126862, 0.20591194927692413),
    AttachmentOrientation = Vector3.new(-19.19320297241211, 179.1589813232422, 1.235748291015625),
    AttachmentAxis = Vector3.new(-0.9997638463973999, 0.02036745660007, -0.007585207931697369),
    AttachmentSecondaryAxis = Vector3.new(0.01673959381878376, 0.9441957473754883, 0.32895931601524353),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Peppermint"] = {
    Type = "Knife",
    MeshId = "rbxassetid://6085025295",
    TextureId = "http://www.roblox.com/asset/?id=6074789360",
    Scale = Vector3.new(0.05999999865889549, 0.05999999865889549, 0.05999999865889549),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Rainbow"] = {
    Type = "Knife",
    MeshId = "rbxassetid://12921240966",
    TextureId = "rbxassetid://12921241867",
    Scale = Vector3.new(0.05999999865889549, 0.05999999865889549, 0.05999999865889549),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
	Placement = "WaistLeft",
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Spirit"] = {
    Type = "Knife",
    MeshId = "rbxassetid://112444333460928",
    TextureId = "rbxassetid://131787177447081",
    Scale = Vector3.new(0.07999999821186066, 0.07999999821186066, 0.07999999821186066),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Slate,
    Transparency = 0,
    Reflectance = 0,
	Placement = "WaistLeft",
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["SeerChroma"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset?id=156092238",
    TextureId = "rbxassetid://3184059718",
    Scale = Vector3.new(0.699999988079071, 0.9100000262260437, 1),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0.20000000298023224,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = true,
    ChromaTexture = "rbxassetid://3184061374",
    ChromaStaticLayer = "rbxassetid://18364485783",
},
["Swirly Gun"] = {
    Type = "Gun",
    MeshId = "rbxassetid://8310911339",
    TextureId = "rbxassetid://8293539377",
    Scale = Vector3.new(0.8999999761581421, 0.8999999761581421, 0.8999999761581421),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Fang"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset/?id=117500241",
    TextureId = "http://www.roblox.com/asset/?id=117500388",
    Scale = Vector3.new(0.4000000059604645, 0.3700000047683716, 0.3700000047683716),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.38823530077934265, 0.37254902720451355, 0.3843137323856354),
    Material = Enum.Material.Concrete,
    Transparency = 0,
    Reflectance = 0,
		Placement = "WaistLeft",
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(-9.536782954455703e-07, -9.536768175166799e-07, -9.536794323139475e-07),
    AttachmentOrientation = Vector3.new(0.06901711970567703, -92.26690673828125, 1.0130547285079956),
    AttachmentAxis = Vector3.new(-0.039569735527038574, 0.017680207267403603, 0.9990603923797607),
    AttachmentSecondaryAxis = Vector3.new(-0.0005041101248934865, 0.9998430609703064, -0.01771402359008789),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Cookieblade"] = {
    Type = "Knife",
    MeshId = "rbxassetid://6123168377",
    TextureId = "rbxassetid://6123168583",
    Scale = Vector3.new(1.2999999523162842, 1.2999999523162842, 1.2999999523162842),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0.20000000298023224,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Slasher"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset/?id=283709822",
    TextureId = "http://www.roblox.com/asset/?id=313894904",
    Scale = Vector3.new(0.6000000238418579, 0.6000000238418579, 0.6000000238418579),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Icepiercer"] = {
    Type = "Gun",
    Placement = "WaistRight",
    MeshId = "rbxassetid://11868991644",
    TextureId = "rbxassetid://11869075814",
    Scale = Vector3.new(0.05999999865889549, 0.05999999865889549, 0.05999999865889549),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0.1299028992652893, 0.000002229222218375071, 0.07500199228525162),
    AttachmentOrientation = Vector3.new(-0.0026997302193194628, -60, 90.00231170654297),
    AttachmentAxis = Vector3.new(0.000020563602447509766, 1, -0.00005862116813659668),
    AttachmentSecondaryAxis = Vector3.new(-0.5, -0.00004048561822855845, -0.8660253882408142),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Purple Seer"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset?id=156092238",
    TextureId = "rbxassetid://3184063317",
    Scale = Vector3.new(0.699999988079071, 0.9100000262260437, 1),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
	Placement = "WaistLeft",
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Snowstorm"] = {
    Type = "Knife",
    MeshId = "rbxassetid://86944837615327",
    TextureId = "rbxassetid://84853425379784",
    Scale = Vector3.new(0.07000000029802322, 0.07000000029802322, 0.07000000029802322),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Slate,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Blizzard"] = {
    Type = "Gun",
    MeshId = "rbxassetid://77235373292363",
    TextureId = "rbxassetid://131115493735176",
    Scale = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, -0.20000000298023224, 0.08990859985351562),
    AttachmentOrientation = Vector3.new(-50.001827239990234, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.6427633166313171, -0.7660649418830872),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Iceblaster"] = {
    Type = "Gun",
    MeshId = "rbxassetid://6125828567",
    TextureId = "rbxassetid://6120563948",
    Scale = Vector3.new(1, 1, 1),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 1, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Ice Shard"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset/?id=188539751 ",
    TextureId = "http://www.roblox.com/asset/?id=188539820 ",
    Scale = Vector3.new(1.2000000476837158, 1.2000000476837158, 1.2000000476837158),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(-0.0099992910400033, -0.13704271614551544, -0.17640718817710876),
    AttachmentOrientation = Vector3.new(-85.05686950683594, -175.63331604003906, 179.4180908203125),
    AttachmentAxis = Vector3.new(0.9978162050247192, 0.0008751153945922852, -0.06604611873626709),
    AttachmentSecondaryAxis = Vector3.new(-0.06572528928518295, -0.08616232872009277, -0.9941107630729675),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Candy"] = {
    Type = "Knife",
    MeshId = "http://www.roblox.com/asset/?id=19040337",
    TextureId = "http://www.roblox.com/asset/?id=19040326",
    Scale = Vector3.new(1.100000023841858, 1.399999976158142, 1.100000023841858),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.8039215803146362, 0.8039215803146362, 0.8039215803146362),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Waves"] = {
    Type = "Knife",
    MeshId = "rbxassetid://13916938702",
    TextureId = "rbxassetid://13916939964",
    Scale = Vector3.new(0.09000000357627869, 0.09000000357627869, 0.09000000357627869),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Logchopper"] = {
    Type = "Knife",
    MeshId = "rbxassetid://4535643726",
    TextureId = "rbxassetid://4535641077",
    Scale = Vector3.new(1, 1, 1),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.06666667014360428, 0.06666667014360428, 0.06666667014360428),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
	Placement = "WaistLeft",
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Turkey"] = {
    Type = "Knife",
    MeshId = "rbxassetid://15320557481",
    TextureId = "rbxassetid://15320558272",
    Scale = Vector3.new(0.0560000017285347, 0.0560000017285347, 0.0560000017285347),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
},
["Evergun"] = {
    Type = "Gun",
    MeshId = "rbxassetid://15408863676",
    TextureId = "rbxassetid://15408849730",
    Scale = Vector3.new(0.019999999552965164, 0.019999999552965164, 0.019999999552965164),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    SurfaceColorMap = "",
    SurfaceMetalnessMap = "",
    SurfaceNormalMap = "",
    SurfaceRoughnessMap = "",
    SurfaceAlphaMode = Enum.AlphaMode.Overlay,
    AttachmentPosition = Vector3.new(0, -0.20000000298023224, 0.08990859985351562),
    AttachmentOrientation = Vector3.new(-50.001827239990234, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.6427633166313171, -0.7660649418830872),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
    ChromaFace = Enum.NormalId.Back,
    CloneVisualChildrenFromPlayer = "caribbeansseas",
},
["Celestial"] = {
    Type = "Knife",
    MeshId = "rbxassetid://109711282082830",
    TextureId = "rbxassetid://79010754957272",
    Scale = Vector3.new(0.07, 0.07, 0.07),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    SurfaceColorMap = "rbxassetid://120904608273443",
    SurfaceMetalnessMap = "rbxassetid://95735363537147",
    SurfaceNormalMap = "",
    SurfaceRoughnessMap = "rbxassetid://115560145086368",
    SurfaceAlphaMode = Enum.AlphaMode.Overlay,
    UseSurfaceAppearance = false,
    Placement = "Back",
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
    ChromaFace = Enum.NormalId.Back,
},
["Bauble"] = {
    Type = "Gun",
    MeshId = "rbxassetid://107813118898769",
    TextureId = "rbxassetid://137012201908941",
    Scale = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    SurfaceColorMap = "",
    SurfaceMetalnessMap = "",
    SurfaceNormalMap = "",
    SurfaceRoughnessMap = "",
    SurfaceAlphaMode = Enum.AlphaMode.Overlay,
    UseSurfaceAppearance = false,
    Placement = "WaistRight",
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
    ChromaFace = Enum.NormalId.Back,
},
["Heart Wand"] = {
    Type = "Knife",
    MeshId = "rbxassetid://77738838473091",
    TextureId = "rbxassetid://76246633927299",
    Scale = Vector3.new(0.07, 0.07, 0.07),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.5607843399047852, 0.13333334028720856, 0.13333334028720856),
    Material = Enum.Material.Brick,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    SurfaceColorMap = "rbxassetid://76246633927299",
    SurfaceMetalnessMap = "",
	    Placement = "WaistLeft",
    SurfaceNormalMap = "",
    SurfaceRoughnessMap = "",
    SurfaceAlphaMode = Enum.AlphaMode.Overlay,
    AttachmentPosition = Vector3.new(0, 0, 0),
    AttachmentOrientation = Vector3.new(-0, 0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(0, 1, 0),
    Chroma = false,
    ChromaTexture = "",
    ChromaStaticLayer = "",
    ChromaFace = Enum.NormalId.Back,
},
["Sunrise"] = {
    Type = "Gun",
    MeshId = "rbxassetid://109742397574153",
    TextureId = "rbxassetid://71731808219690",
    Scale = Vector3.new(0.04584595561027527, 0.04584595561027527, 0.04584595561027527),
    Offset = Vector3.new(0, 0, 0),
    Color = Color3.new(0.6392157077789307, 0.6352941393852234, 0.6470588445663452),
    Material = Enum.Material.Plastic,
    Transparency = 0,
    Reflectance = 0,
    VertexColor = Vector3.new(1, 1, 1),
    SurfaceColorMap = "",
    SurfaceMetalnessMap = "",
    SurfaceNormalMap = "",
    SurfaceRoughnessMap = "",
    SurfaceAlphaMode = Enum.AlphaMode.Overlay,
    AttachmentPosition = Vector3.new(0, -0.20000000298023224, 0.08990859985351562),
    AttachmentOrientation = Vector3.new(-50.001827239990234, -0, 0),
    AttachmentAxis = Vector3.new(1, 0, 0),
    AttachmentSecondaryAxis = Vector3.new(-0, 0.6427633166313171, -0.7660649418830872),
    Chroma = true,
    ChromaTexture = "rbxassetid://122480499480858",
    ChromaStaticLayer = "",
    ChromaFace = Enum.NormalId.Left,
},
}

DustyDB.Catalog = {
    ["AmericaSword"] = {["ModelId"]="473570051",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,0.6,3.05),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=262027449",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.6,0.6,0.6),["TextureId"]="https://www.roblox.com/asset/?id=445805934",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Part",["Name"]="EffectFull",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,0,1,0,-1,0),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,3,0.65),["Transparency"]=1},["Children"]={}},{["Class"]="Part",["Name"]="EffectHalf",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0.60001,1,0,0,0,0,1,0,-1,0),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,1.8,0.65),["Transparency"]=1},["Children"]={}},{["Class"]="Part",["Name"]="EffectCenter",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0.07498,0.39996,1,0,0,0,0,1,0,-1,0),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,0.2,0.4),["Transparency"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.01773,0.08072,-0.12479,0.99918,0.00772,0.03986,-0.04038,0.08672,0.99542,0.00423,-0.9962,0.08696)},["Children"]={}}}}},
    ["Amerilaser"] = {["ModelId"]="446050753",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.11666666376921876,0.6708332927690628,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.7,0.7,0.7),["HeldGripSize"]=Vector3.new(0.6,1,1.8),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.6,1,1.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=116657254",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.7,0.7),["TextureId"]="https://www.roblox.com/asset/?id=445884341",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["AuroraGun"] = {["ModelId"]="108635848059846",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.046926531097719736,0.046934514322992976,0.046925999999999995),["HeldGripSize"]=Vector3.new(0.45911,1.35493,2.3463),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://16070198638",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.45911,1.35493,2.3463),["TextureID"]="rbxassetid://107873598804292",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["AuroraKnife"] = {["ModelId"]="101343256002049",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://16025287191",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.22988,3.76599,1.15339),["TextureID"]="rbxassetid://97521579968070",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["BattleAxe"] = {["ModelId"]="1133237368",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://1084767698",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.56,0.56,0.56),["TextureId"]="rbxassetid://1084767901",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["BattleAxe2"] = {["ModelId"]="2513535503",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://2397016406",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.37879,3.6555,1.67011),["TextureID"]="rbxassetid://2513526862",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Bauble"] = {["ModelId"]="84481559639371",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.0471,0.0471,0.0471),["HeldGripSize"]=Vector3.new(0.48417,1.37511,2.08516),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.48417,1.37511,2.08516),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://107813118898769",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.0471,0.0471,0.0471),["TextureId"]="rbxassetid://137012201908941",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.23862,0.10727,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["BaubleChroma"] = {["ModelId"]="84481559639371",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.0471,0.0471,0.0471),["HeldGripSize"]=Vector3.new(0.48417,1.37511,2.08516),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.48417,1.37511,2.08516),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://107813118898769",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.0471,0.0471,0.0471),["TextureId"]="rbxassetid://137012201908941",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,0,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://129391884956433",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.23862,0.10727,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["BaubleKnife"] = {["ModelId"]="111092946728824",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://116508096109443",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.49288,3.65592,0.83005),["TextureID"]="rbxassetid://135843404105980",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["BaubleKnifeChroma"] = {["ModelId"]="111092946728824",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.46874,3.47609,0.78916),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://101916509598198",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://116508096109443",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07326,0.07326,0.07326),["TextureId"]="rbxassetid://135843404105980",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Beachy"] = {["ModelId"]="120888453565511",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["Reflectance"]=0,["Color"]=Color3.fromRGB(163,162,165),["MeshId"]="rbxassetid://88652423673547",["RelCF"]=CFrame.new(0,0,0,1.0000003576278687,4.284083843231201e-8,0,4.284083843231201e-8,1.000000238418579,-7.450580596923828e-8,0,-7.450580596923828e-8,1.0000003576278687),["Transparency"]=0,["TextureID"]="",["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.3693559169769287,3.5047643184661865,1.259381890296936)},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}},{["Class"]="SurfaceAppearance",["Name"]="SurfaceAppearance",["Props"]={["MetalnessMap"]="",["NormalMap"]="",["RoughnessMap"]="",["AlphaMode"]=Enum.AlphaMode.Overlay,["ColorMap"]="rbxassetid://128146857850145"},["Children"]={}}}}},
    ["BeachyChroma"] = {["ModelId"]="120888453565511",["Type"]="Knife",["Chroma"]=true,["Placement"]="WaistLeft",["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["Size"]=Vector3.new(0.71876,2.041385,3.095477),["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Color"]=Color3.fromRGB(163.00000350000002,161.99999549999998,164.99999400000002),["Material"]=Enum.Material.Plastic,["Shape"]=Enum.PartType.Block,["Reflectance"]=0,["Transparency"]=0,["CastShadow"]=true},["Children"]={{["Class"]="SpecialMesh",["Name"]="ChromaScanV2Mesh",["Props"]={["MeshType"]=Enum.MeshType.FileMesh,["MeshId"]="rbxassetid://88652423673547",["TextureId"]="rbxassetid://73559105239250",["Scale"]=Vector3.new(0.069919,0.069919,0.069919),["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1)},["Attributes"]={["CartiHubChromaMesh"]=true},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.354261,0.159256,1,0,0,0,0.642763,0.766065,0,-0.766065,0.642763)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Texture"]="rbxassetid://73559105239250",["Transparency"]=0,["Face"]=Enum.NormalId.Front,["Color3"]=Color3.fromRGB(255,255,255)},["Children"]={}}}}},
    ["Bioblade"] = {["ModelId"]="4751539262",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://4662600017",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.31064,3.42103,1.08776),["TextureID"]="http://www.roblox.com/asset/?id=4751538400",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Blaster"] = {["ModelId"]="386277381",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.07499999813735493,0.6249999751647324,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.4,0.45,0.5),["HeldGripSize"]=Vector3.new(0.8,2,3.1),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.8,2,3.1),["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.15,0.05489,0.2049,1,0,0,0,0.17362,0.98481,0,-0.98481,0.17362)},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=92656610",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.4,0.45,0.5),["TextureId"]="https://www.roblox.com/asset/?id=386269992",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}}}}},
    ["BlizzardChroma"] = {["ModelId"]="88928894807422",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.04334,0.04334,0.04334),["HeldGripSize"]=Vector3.new(0.4211,1.43482,2.0708),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4211,1.43482,2.0708),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,19,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://110354859513948",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://77235373292363",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.04334,0.04334,0.04334),["TextureId"]="rbxassetid://97280881789656",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19272,0.08664,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Bloom"] = {["ModelId"]="128553215441980",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=true,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://73266355643345",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.46137,3.7,1.03854),["TextureID"]="rbxassetid://103489229144925",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Blossom_G"] = {["ModelId"]="12339377105",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.31280793586645206,0.7682833857952468,1,-3.874311573781597e-7,9.83475501925568e-7,3.8742990682294476e-7,1,0.0000012665974509218358,-9.83475956672919e-7,-0.0000012665971098613227,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.04763,0.04413,0.04382),["HeldGripSize"]=Vector3.new(0.60612,0.26582,1.16242),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.60612,0.26582,1.16242),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://12322809632",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.04763,0.04413,0.04382),["TextureId"]="rbxassetid://12322809917",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.0899,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["BlueSeer"] = {["ModelId"]="3184125087",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.5,3.1,1),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=156092238",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.91,1),["TextureId"]="rbxassetid://3184062977",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Boneblade"] = {["ModelId"]="2513505477",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://1857106669",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.7,0.7),["TextureId"]="rbxassetid://2516324337",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["BonebladeChroma"] = {["ModelId"]="2513598419",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://2513578115",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://1857106669",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.73,0.73,0.73),["TextureId"]="rbxassetid://2513576265",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Candleflame"] = {["ModelId"]="7805833970",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://7791364860",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.44978,3.33759,1.10873),["TextureID"]="rbxassetid://7791364988",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["CandleflameChroma"] = {["ModelId"]="7806121918",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://7791364860",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.06,0.06,0.06),["TextureId"]="rbxassetid://7806078587",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://7806088865",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Candy"] = {["ModelId"]="332021011",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(205,205,205),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.6),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=19040337",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.1,1.4,1.1),["TextureId"]="http://www.roblox.com/asset/?id=19040326",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Celestial"] = {["ModelId"]="136673966529736",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://109711282082830",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.39762,2.66487,2.364),["TextureID"]="rbxassetid://79010754957272",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Chill"] = {["ModelId"]="332022166",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=105329941",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.5,0.5,0.5),["TextureId"]="http://www.roblox.com/asset/?id=105978218",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["ChromaDarkbringer"] = {["ModelId"]="4751501078",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0.02948054025446046,-0.37930106955212756,0.46498870651641616,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.03639,0.035,0.035),["HeldGripSize"]=Vector3.new(0.42663,1.37,1.65),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.42663,1.37,1.65),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://4730813852",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.03639,0.035,0.035),["TextureId"]="rbxassetid://4728494788",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Back,["Texture"]="rbxassetid://5278766434",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.18665,0.12321,1,0,0,0,0.17362,0.98481,0,-0.98481,0.17362)},["Children"]={}}}}},
    ["ChromaLightbringer"] = {["ModelId"]="4751500761",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0.02948054025446046,-0.37930106955212756,0.46498870651641616,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.03639,0.035,0.035),["HeldGripSize"]=Vector3.new(0.42663,1.37,1.65),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.42663,1.37,1.65),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://4730813852",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.03639,0.035,0.035),["TextureId"]="rbxassetid://5278764604",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Back,["Texture"]="rbxassetid://5278766434",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.18661,0.12323,1,0,0,0,0.17362,0.98481,0,-0.98481,0.17362)},["Children"]={}}}}},
    ["Clockwork"] = {["ModelId"]="473570519",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,0.65,3),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=352571495",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.1,1.6,1.2),["TextureId"]="http://www.roblox.com/asset/?id=352570357",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.00151,-0.12701,-0.15448,-0.99867,0.03727,0.03568,-0.04098,-0.15276,-0.98741,-0.03135,-0.98756,0.15409)},["Children"]={}}}}},
    ["Constellation"] = {["ModelId"]="114197436469014",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.10066326301777069,0.10066229282358304,0.1006623332327568),["HeldGripSize"]=Vector3.new(0.53716,1.58302,2.36713),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://124598402927958",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.53716,1.58302,2.36713),["TextureID"]="rbxassetid://79010754957272",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08991,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["ConstellationChroma"] = {["ModelId"]="114197436469014",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.10123,0.10123,0.10123),["HeldGripSize"]=Vector3.new(0.537,1.583,2.367),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.537,1.583,2.367),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://124598402927958",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.10123,0.10123,0.10123),["TextureId"]="rbxassetid://123603327635244",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://97672028439457",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.51294,0.23058,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Cookieblade"] = {["ModelId"]="6125733703",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://6123168377",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.233,2.64,0.89999),["TextureID"]="rbxassetid://6123168583",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Darkbringer"] = {["ModelId"]="4749071819",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0.03111699783385068,-0.37930106955212756,0.46498870651641616,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.03841,0.035,0.035),["HeldGripSize"]=Vector3.new(0.45,1.26,1.7),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.45,1.26,1.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://4730813852",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.03841,0.035,0.035),["TextureId"]="rbxassetid://4728494788",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.18661,0.12323,1,0,0,0,0.17362,0.98481,0,-0.98481,0.17362)},["Children"]={}}}}},
    ["Darkshot"] = {["ModelId"]="15080280688",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(2.682209014892578e-7,-0.4587898254394531,0.6163902282714844,1,1.0279497786314096e-7,-5.81144320221938e-7,-1.0279489970344002e-7,1,1.3969771828215016e-7,5.81144320221938e-7,-1.396976614387313e-7,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.04000000283122063,0.04000000283122063,0.04000000283122063),["HeldGripSize"]=Vector3.new(0.3999999761581421,0.7999999523162842,2),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="Handle",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Transparency"]=0,["Reflectance"]=0,["Shape"]=Enum.PartType.Block,["Color"]=Color3.fromRGB(17.00000088661909,17.00000088661909,17.00000088661909),["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.3999999761581421,0.7999999523162842,2)},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1),["MeshType"]=Enum.MeshType.FileMesh,["Scale"]=Vector3.new(0.04000000283122063,0.04000000283122063,0.04000000283122063),["MeshId"]="rbxassetid://15027451531",["TextureId"]="rbxassetid://15027451643"},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08994,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Darksword"] = {["ModelId"]="15080267070",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://15020899066",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.08,0.08,0.08),["TextureId"]="rbxassetid://15020899218",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Deathshard"] = {["ModelId"]="196750305",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(99,95,98),["Material"]=Enum.Material.Concrete,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.55,2.39,0.2),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=62275962 ",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.75,0.75,0.75),["TextureId"]="http://www.roblox.com/asset/?id=192567360",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,-0.0446,-0.00031,-0.99901,0.03549,0.99937,-0.00189,0.99837,-0.03553,-0.04456)},["Children"]={}}}}},
    ["DeathshardChroma"] = {["ModelId"]="3187390667",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(99,95,98),["Material"]=Enum.Material.Concrete,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.55,2.39,0.2),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://62275962",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.8,0.8,0.8),["TextureId"]="rbxassetid://3167029738",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,18,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://3167033529",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,0.00003,0,-0.0446,-0.00031,-0.999,0.03549,0.99937,-0.00189,0.99837,-0.03553,-0.04456)},["Children"]={}}}}},
    ["Eggblade"] = {["ModelId"]="6607277825",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://6596834762",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.72136,3.43189,0.91195),["TextureID"]="http://www.roblox.com/asset/?id=6596824396",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["ElderwoodGun"] = {["ModelId"]="4211142894",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.35,-0.3,0,0,0,-1,0,1,0,1,0,0),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.0298,0.029799871802029813,0.029800105834668945),["HeldGripSize"]=Vector3.new(1.49,1.13204,0.3587),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://4210029922",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(1.49,1.13204,0.3587),["TextureID"]="http://www.roblox.com/asset/?id=4210038158",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.22989,0.09821,0.1,0.00001,0.98481,-0.17362,-0.00001,0.17362,0.98481,1,-0.00001,0.00001)},["Children"]={}}}}},
    ["ElderwoodKnife"] = {["ModelId"]="11262771067",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.276,3.531,1.041),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://11238166013",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07,0.07,0.07),["TextureId"]="rbxassetid://11238176757",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["ElderwoodKnifeChroma"] = {["ModelId"]="11254975176",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.276,3.531,1.041),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://11238166013",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07,0.07,0.07),["TextureId"]="http://www.roblox.com/asset/?id=11370088878",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Right,["Texture"]="rbxassetid://11370095395",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["ElderwoodScythe"] = {["ModelId"]="4211148191",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://4217523241",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.28809,3.82182,2.61529),["TextureID"]="http://www.roblox.com/asset/?id=4210044808",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.10158,0.15964,0.15613,0.999,-0.02982,-0.03345,0.04003,0.92926,0.36726,0.02013,-0.36823,0.92952)},["Children"]={}}}}},
    ["Eternal"] = {["ModelId"]="619605312",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(16,42,220),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.23,2.7,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://532155954",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.45,0.45,0.45),["TextureId"]="rbxassetid://532156041",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Eternal2"] = {["ModelId"]="2545253030",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,255,0),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.23,2.7,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://532155954",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.45,0.45,0.45),["TextureId"]="rbxassetid://2585776718",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Eternal3"] = {["ModelId"]="3279011390",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,3.24,0.77),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://532155954",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.47,0.47,0.47),["TextureId"]="rbxassetid://5238664918",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Eternal4"] = {["ModelId"]="4999958740",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,3.24,0.77),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://532155954",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.47,0.47,0.47),["TextureId"]="rbxassetid://5222717744",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["EternalCane"] = {["ModelId"]="4488391411",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(16,42,220),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.23,2.7,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://3132923779",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.95,0.95,0.95),["TextureId"]="rbxassetid://4488374804",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Fang"] = {["ModelId"]="198442811",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.75,3,0.42),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=117500241",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.4,0.4,0.4),["TextureId"]="http://www.roblox.com/asset/?id=117500388",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,-0.03957,-0.0005,-0.99922,0.01768,0.99984,-0.0012,0.99906,-0.01771,-0.03955)},["Children"]={}}}}},
    ["FangChroma"] = {["ModelId"]="3187392501",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(231,231,236),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.99,3,0.23),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,0,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://3167057391",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://117500241",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.4,0.37,0.37),["TextureId"]="",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,-0.03957,-0.0005,-0.99922,0.01768,0.99984,-0.0012,0.99906,-0.01771,-0.03955)},["Children"]={}}}}},
    ["Flames"] = {["ModelId"]="585873746",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,0.7,2.85),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=238314098",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.6,0.8,0.73),["TextureId"]="http://www.roblox.com/asset/?id=238314124",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Part",["Name"]="EffectCenter",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0.52496,1,0,0,0,0,1,0,-1,0),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,0.2,0.2),["Transparency"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.00653,0.08929,-0.12036,1,0.00227,-0.00214,0.00189,0.10443,0.99453,0.00248,-0.99453,0.10442)},["Children"]={}}}}},
    ["Flora"] = {["ModelId"]="138204709945147",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0.000032425129708658286,-0.4806722573338291,0.6787832236264311,1,8.49550929160614e-7,-2.345491800781474e-9,-8.494814096593473e-7,0.9999467134475708,0.010325612500309944,1.111749980964305e-8,-0.010325612500309944,0.9999467134475708),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.045705114181727347,0.045704772138556,0.0457048),["HeldGripSize"]=Vector3.new(0.58906,1.56705,2.28524),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=true,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://108253816085047",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.58906,1.56705,2.28524),["TextureID"]="rbxassetid://116621225933096",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08992,1,0,0,0,0.64276,0.76607,0,-0.76606,0.64276)},["Children"]={}}}}},
    ["FlowerwoodGun"] = {["ModelId"]="16963894455",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.051891136561108164,0.05186750601638605,0.0518898),["HeldGripSize"]=Vector3.new(0.66524,1.54,2.59449),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://16895099893",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.66524,1.54,2.59449),["TextureID"]="rbxassetid://16895448237",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.18661,0.12323,1,0,0,0,0.17362,0.98481,0,-0.98481,0.17362)},["Children"]={}}}}},
    ["FlowerwoodKnife"] = {["ModelId"]="16963860501",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=true,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://16883629972",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.44447,3.95816,1.07334),["TextureID"]="rbxassetid://16895441338",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Frostbite"] = {["ModelId"]="4528484880",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,2.6,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=4528435571",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.1,1.1,1.1),["TextureId"]="rbxassetid://5211130051",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Frostsaber"] = {["ModelId"]="1269580035",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.3,0.85,3.05),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://1192795322",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.55,0.55,0.6),["TextureId"]="rbxassetid://1192795941",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.00214,0.01834,-0.04645,1,0,0,0,-0.15645,0.98769,0,-0.98769,-0.15645)},["Children"]={}}}}},
    ["Gemstone"] = {["ModelId"]="3183598040",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3.15,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://1626714161",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(25,25,25),["TextureId"]="rbxassetid://3183579677",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["GemstoneChroma"] = {["ModelId"]="3183597816",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(159,243,233),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://1626714161",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(25,25,25),["TextureId"]="rbxassetid://3183577898",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://3183578044",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Ghostblade"] = {["ModelId"]="4221789003",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.605,1.65,1.01),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://4217554208",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.05,0.05,0.05),["TextureId"]="rbxassetid://5007736173",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Gingerblade"] = {["ModelId"]="2669336659",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,248,248),["Material"]=Enum.Material.Fabric,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,3,0.5),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://2682453204",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.61,0.61,0.61),["TextureId"]="rbxassetid://2682446647",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["GingerbladeChroma"] = {["ModelId"]="2672349340",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,248,248),["Material"]=Enum.Material.Fabric,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,3,0.5),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://2682453204",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.61,0.61,0.61),["TextureId"]="rbxassetid://2672327402",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://2672332704",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://2672332700",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["GingerLuger"] = {["ModelId"]="2674983099",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.003082275390625,-0.2084674835205078,0.564697265625,0.9986512064933777,-0.027241254225373268,-0.04420004040002823,0.03103393316268921,0.9956790208816528,0.08752333372831345,0.041624803096055984,-0.08877698332071304,0.9951815009117126),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(1.8,1.8,1.8),["HeldGripSize"]=Vector3.new(0.51,1.18,1.35),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.51,1.18,1.35),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=95356090",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.8,1.8,1.8),["TextureId"]="rbxassetid://2702668339",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.14999,0.03833,0.33319,1,0,0,0,0,1,0,-1,0)},["Children"]={}}}}},
    ["Gingermint_G"] = {["ModelId"]="11872179646",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.04606,0.04606,0.04606),["HeldGripSize"]=Vector3.new(0.39795,1.02803,2.37765),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.SmoothPlastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.39795,1.02803,2.37765),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://11866444071",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.04606,0.04606,0.04606),["TextureId"]="rbxassetid://11866444253",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.09469,-0.09924,0.23668,0.99179,0.11365,0.05858,-0.11578,0.60394,0.78857,0.05425,-0.78888,0.61214)},["Children"]={}}}}},
    ["Gingermint_K"] = {["ModelId"]="11855306927",["Type"]="Knife",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-1.1977958679199219,2.384185791015625e-7,1,5.239035316684237e-10,-1.2665985593685036e-7,-5.238759426262618e-10,1,2.1792938298403897e-7,1.2665985593685036e-7,-2.1792938298403897e-7,1),["HeldGripCalibrated"]=false,["Model"]={["Class"]="Part",["Name"]="Handle",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Transparency"]=0,["Reflectance"]=0,["Shape"]=Enum.PartType.Block,["Color"]=Color3.fromRGB(17.00000088661909,17.00000088661909,17.00000088661909),["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.4000000059604645,3,0.800000011920929)},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1),["MeshType"]=Enum.MeshType.FileMesh,["Scale"]=Vector3.new(0.057604461908340454,0.05760447308421135,0.057604461908340454),["MeshId"]="rbxassetid://11837984324",["TextureId"]="rbxassetid://11837984504"},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Gingermint_KChroma"] = {["ModelId"]="11873640255",["Type"]="Knife",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-1.192178726196289,-5.960464477539063e-8,1,1.6996628104948286e-8,-1.0430808572436945e-7,-1.6996631657661965e-8,1,-2.6077017878378683e-8,1.0430808572436945e-7,2.6077019654735523e-8,1),["HeldGripCalibrated"]=false,["Model"]={["Class"]="Part",["Name"]="Handle",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Transparency"]=0,["Reflectance"]=0,["Shape"]=Enum.PartType.Block,["Color"]=Color3.fromRGB(17.00000088661909,17.00000088661909,17.00000088661909),["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.4000000059604645,3,0.800000011920929)},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1),["MeshType"]=Enum.MeshType.FileMesh,["Scale"]=Vector3.new(0.057604461908340454,0.05760447308421135,0.057604461908340454),["MeshId"]="rbxassetid://11837984324",["TextureId"]="rbxassetid://11885808526"},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(0,255,247),["Face"]=Enum.NormalId.Back,["Texture"]="rbxassetid://11883888650",["Transparency"]=0,["ZIndex"]=1},["Children"]={}}}}},
    ["Gingerscope"] = {["ModelId"]="15666469505",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.399998993,0.899999976,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.08417284818623448,0.08419816229712668,0.0841742),["HeldGripSize"]=Vector3.new(0.2697,1.25815,4.20871),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://15374602183",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.2697,1.25815,4.20871),["TextureID"]="rbxassetid://15409041564",["Transparency"]=0},["Children"]={{["Class"]="MeshPart",["Name"]="Scope",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(129,181,204),["DoubleSided"]=false,["Material"]=Enum.Material.Glass,["MeshId"]="rbxassetid://15374679651",["Reflectance"]=1,["RelCF"]=CFrame.new(0,0.48315,0.20723,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.18712,0.18712,1.41355),["TextureID"]="",["Transparency"]=0.35},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.12991,-0.00003,0.075,1,0,0,0,0.70713,0.70708,0,-0.70708,0.70713)},["Children"]={}}}}},
    ["Gingerscythe_Ancient"] = {["ModelId"]="15683188776",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="Handle",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Transparency"]=0,["Reflectance"]=0,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.3672752380371094,0.09181880950927734,0.1836376190185547)},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1),["MeshType"]=Enum.MeshType.FileMesh,["Scale"]=Vector3.new(0.09181880950927734,0.09181880950927734,0.09181880950927734),["MeshId"]="rbxassetid://15395668244",["TextureId"]="rbxassetid://15409146285"},["Children"]={}}}}},
    ["Gingerscythe_Godly"] = {["ModelId"]="15683175970",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="Handle",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Transparency"]=0,["Reflectance"]=0,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.3672752380371094,0.09181880950927734,0.1836376190185547)},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1),["MeshType"]=Enum.MeshType.FileMesh,["Scale"]=Vector3.new(0.09181880950927734,0.09181880950927734,0.09181880950927734),["MeshId"]="rbxassetid://15397282571",["TextureId"]="rbxassetid://15397286194"},["Children"]={}}}}},
    ["GreenLuger"] = {["ModelId"]="332044679",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.003082275390625,-0.2084674835205078,0.564697265625,0.9986512064933777,-0.027241254225373268,-0.04420004040002823,0.03103393316268921,0.9956790208816528,0.08752333372831345,0.041624803096055984,-0.08877698332071304,0.9951815009117126),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(1.8,1.8,1.8),["HeldGripSize"]=Vector3.new(0.2,1.83,1.03),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.SmoothPlastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.2,1.83,1.03),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=95356090",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.8,1.8,1.8),["TextureId"]="http://www.roblox.com/asset/?id=126534866",["VertexColor"]=Vector3.new(0,1,0)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.14999,0.03836,0.33319,1,0,0,0,0,1,0,-1,0)},["Children"]={}}}}},
    ["Hallow"] = {["ModelId"]="531878205",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=179155055",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.57,0.57,0.57),["TextureId"]="http://www.roblox.com/asset?id=179155105",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Hallowgun"] = {["ModelId"]="5878721461",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.00001556396519163173,-1.32679099994764,0.02689422194998226,-0.012200922705233097,9.103000309096387e-8,0.9999256134033203,1.0430826336005339e-7,1,-8.97640290986601e-8,-0.9999256134033203,1.0320530918761506e-7,-0.012200922705233097),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.0408,0.0407998184257822,0.04079952986847695),["HeldGripSize"]=Vector3.new(2.04,1.07989,0.37193),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://5841866437",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(2.04,1.07989,0.37193),["TextureID"]="http://www.roblox.com/asset/?id=5841868338",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.22485,0.04465,0,0,0.99619,-0.08719,0,0.08719,0.99619,1,0,0)},["Children"]={}}}}},
    ["HallowsBlade"] = {["ModelId"]="1132775323",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=179155055",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.55,0.55,0.555),["TextureId"]="rbxassetid://1132750758",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Hallowscythe"] = {["ModelId"]="5877016863",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://5841877975",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.39243,3.54155,2.9425),["TextureID"]="http://www.roblox.com/asset/?id=5841879647",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.00824,0.0546,0.62405,-0.99868,0.04691,0.02085,0.04573,0.99751,-0.05374,-0.02332,-0.05271,-0.99834)},["Children"]={}}}}},
    ["Harvester"] = {["ModelId"]="7800847534",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,0,1.029893258642575,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.05072520013275003,0.050725523183177225,0.05069168059223831),["HeldGripSize"]=Vector3.new(2.24476,0.65492,2.88),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://7775027413",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(2.24476,0.65492,2.88),["TextureID"]="http://www.roblox.com/asset/?id=7775245551",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.12991,0,0.07501,0.00002,-0.5,-0.86603,1,-0.00004,0.00005,-0.00006,-0.86603,0.5)},["Children"]={}}}}},
    ["Heartblade"] = {["ModelId"]="6413145922",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://6404140078",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.27948,3.29,1.14654),["TextureID"]="http://www.roblox.com/asset/?id=6413074818",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["HeartWand"] = {["ModelId"]="118334707962654",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=true,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://77738838473091",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.43272,3.35869,1.91866),["TextureID"]="rbxassetid://76246633927299",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["HeartWandChroma"] = {["ModelId"]="78479059410850",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.80402,2.28355,3.46268),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://77738838473091",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07821,0.07821,0.07821),["TextureId"]="rbxassetid://78842905206144",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://106915560132163",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Heat"] = {["ModelId"]="201238541",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(196,40,28),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,2.9,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=105333894",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.3,0.3,0.3),["TextureId"]="http://www.roblox.com/asset/?id=105334003",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["HeatChroma"] = {["ModelId"]="3187395238",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(16,42,220),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=105333894",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.33,0.33,0.33),["TextureId"]="http://www.roblox.com/asset/?id=105334003",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://3171194830",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Icebeam"] = {["ModelId"]="8311005531",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.7,-0.3,1,0,0,0,0,-1,0,1,0),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.9999999723783362,1.0000000537769993,1.0001835197368603),["HeldGripSize"]=Vector3.new(0.328,2.199,1.09),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://8310908064",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.328,2.199,1.09),["TextureID"]="rbxassetid://8231066536",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Iceblaster"] = {["ModelId"]="6125814417",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.008469562389662061,-0.700000510159269,-0.5460059487973289,1,0,0,0,0,-1,0,1,0),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.9999977313705984,0.9999999794834368,0.9999999716452806),["HeldGripSize"]=Vector3.new(0.4432,1.92998,1.02381),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://6125828567",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.4432,1.92998,1.02381),["TextureID"]="rbxassetid://6120563948",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Forward",["Props"]={["RelCF"]=CFrame.new(0,1,0.00003,1,0,0,0,1,0,0,0,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Up",["Props"]={["RelCF"]=CFrame.new(-0.00002,0,1.00003,1,0,0,0,1,0,0,0,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Icebreaker"] = {["ModelId"]="6125729383",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://6124173614",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.41062,3.07429,1.95539),["TextureID"]="rbxassetid://6124173821",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Icecream"] = {["ModelId"]="87189663191639",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["Reflectance"]=0,["Color"]=Color3.fromRGB(163.00000548362732,162.00000554323196,165.00000536441803),["MeshId"]="rbxassetid://82044527712515",["RelCF"]=CFrame.new(0,0,0,1.0000003576278687,-2.9802322387695312e-8,5.960464477539063e-8,-2.9802322387695312e-8,1.000000238418579,-7.450580596923828e-8,5.960464477539063e-8,-7.450580596923828e-8,1.0000003576278687),["Transparency"]=0,["TextureID"]="",["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.8022343516349792,3.3766095638275146,0.9747558832168579)},["Children"]={{["Class"]="SurfaceAppearance",["Name"]="SurfaceAppearance",["Props"]={["MetalnessMap"]="",["NormalMap"]="",["RoughnessMap"]="",["Color"]=Color3.fromRGB(255,255,255),["AlphaMode"]=Enum.AlphaMode.Overlay,["ColorMap"]="rbxassetid://133533169721039"},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["IcecreamChroma"] = {["ModelId"]="87189663191639",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,1.862645149230957e-8,0,1.000000238418579,5.587935447692871e-8,1.862645149230957e-8,5.587935447692871e-8,1.0000003576278687),["Transparency"]=0,["Reflectance"]=0,["Shape"]=Enum.PartType.Block,["Color"]=Color3.fromRGB(163.00000548362732,162.00000554323196,165.00000536441803),["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.5002673864364624,1.4208340644836426,2.1544973850250244)},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1),["MeshType"]=Enum.MeshType.FileMesh,["Scale"]=Vector3.new(0.6960147023200989,0.6960147023200989,0.6960147023200989),["MeshId"]="rbxassetid://82044527712515",["TextureId"]="rbxassetid://133533169721039"},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.24657118320465088,0.11084433645009995,1,0,0,0,0.6427633166313171,0.7660649418830872,0,-0.7660649418830872,0.6427633166313171)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Transparency"]=0,["Color3"]=Color3.fromRGB(0,153.35207998752594,255),["Face"]=Enum.NormalId.Left,["ZIndex"]=1,["Texture"]="rbxassetid://98918130519475"},["Children"]={}}}}},
    ["IceDragon"] = {["ModelId"]="585872642",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(99,95,98),["Material"]=Enum.Material.Plastic,["Reflectance"]=0.4,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.35,0.72,2.98),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=165708869 ",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.5,0.5,0.5),["TextureId"]="http://www.roblox.com/asset/?id=165708903 ",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.00896,-0.12686,-0.15436,-0.99993,-0.00781,0.00911,-0.00781,-0.15308,-0.98818,0.00911,-0.98818,0.15301)},["Children"]={}}}}},
    ["Iceflake"] = {["ModelId"]="8304818186",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://8231045240",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.18449,3.37688,0.82576),["TextureID"]="rbxassetid://8231046270",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["IceHammer_Ancient"] = {["ModelId"]="11855274019",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="Handle",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,0.9999999403953552,0,0,0,0.9999999403953552),["Transparency"]=0,["Reflectance"]=0,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(1.024999976158142,3.680999994277954,2.4100000858306885)},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1),["MeshType"]=Enum.MeshType.FileMesh,["Scale"]=Vector3.new(0.075628861784935,0.07389488071203232,0.07326991111040115),["MeshId"]="rbxassetid://11848711686",["TextureId"]="rbxassetid://11850483027"},["Children"]={}}}}},
    ["Icepiercer"] = {["ModelId"]="11874071041",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(1.1920908645904036e-7,-0.5193492067341179,0.7164066131086604,1,-2.689194822380614e-8,-1.3411037969035533e-7,2.6891960658304015e-8,1,9.499466813167601e-8,1.3411037969035533e-7,-9.499467523710337e-8,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.05476696915799317,0.05476679637840489,0.054767),["HeldGripSize"]=Vector3.new(2.46939,0.75263,2.73835),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://11868991644",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(2.46939,0.75263,2.73835),["TextureID"]="rbxassetid://11869075814",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.12988,0,0.07498,0.00002,-0.5,-0.86603,1,-0.00004,0.00005,-0.00006,-0.86603,0.5)},["Children"]={}}}}},
    ["IceShard"] = {["ModelId"]="1268710824",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=188539751",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.85,0.85,0.85),["TextureId"]="http://www.roblox.com/asset/?id=188539820",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.01,-0.13699,-0.17639,0.99782,-0.06573,-0.00656,0.00088,-0.08616,0.99628,-0.06605,-0.99411,-0.08592)},["Children"]={}}}}},
    ["Icewing"] = {["ModelId"]="3183085102",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.40003,4.05,1.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://3183449780",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.085,0.085,0.085),["TextureId"]="rbxassetid://2279588369",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.0031,-0.00953,0.2059,-0.99976,0.01674,0.01386,0.02037,0.9442,0.32875,-0.00759,0.32896,-0.94431)},["Children"]={}}}}},
    ["Jinglegun"] = {["ModelId"]="6125742758",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.7,-0.3,1,0,0,0,0,-1,0,1,0),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(1,1,1),["HeldGripSize"]=Vector3.new(0.751,1.799,1.175),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.751,1.799,1.175),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://6125843704",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1,1,1),["TextureId"]="rbxassetid://6125843755",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Laser"] = {["ModelId"]="238546983",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.10000000149011612,0.699999988079071,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.5,0.5,0.5),["HeldGripSize"]=Vector3.new(0.51,1.18,1.35),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.51,1.18,1.35),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=130099641",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.5,0.5,0.5),["TextureId"]="http://www.roblox.com/asset?id=161254231",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["LaserChroma"] = {["ModelId"]="3187395952",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.10000000149011612,0.699999988079071,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.5,0.5,0.5),["HeldGripSize"]=Vector3.new(0.51,1.18,1.35),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.51,1.18,1.35),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://130099641",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.5,0.5,0.5),["TextureId"]="",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://3171220436",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Lightbringer"] = {["ModelId"]="4749070432",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0.03159497306743495,-0.4226497632152278,0.5181302729754351,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.039,0.039,0.039),["HeldGripSize"]=Vector3.new(0.398,1.62,1.964),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.398,1.62,1.964),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://4730813852",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.039,0.039,0.039),["TextureId"]="http://www.roblox.com/asset/?id=4728487789",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.1866,0.12323,1,0,0,0,0.17362,0.98481,0,-0.98481,0.17362)},["Children"]={}}}}},
    ["Logchopper"] = {["ModelId"]="4535644282",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=4535643726",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.96,0.96,0.96),["TextureId"]="rbxassetid://5211110240",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Luger"] = {["ModelId"]="198042673",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.003082275390625,-0.2084674835205078,0.564697265625,0.9986512064933777,-0.027241254225373268,-0.04420004040002823,0.03103393316268921,0.9956790208816528,0.08752333372831345,0.041624803096055984,-0.08877698332071304,0.9951815009117126),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(1.8,1.8,1.8),["HeldGripSize"]=Vector3.new(0.51,1.18,1.35),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.51,1.18,1.35),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=95356090",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.8,1.8,1.8),["TextureId"]="http://www.roblox.com/asset/?id=126534866",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.15,0.03836,0.33322,1,0,0,0,0,1,0,-1,0)},["Children"]={}}}}},
    ["Lugercane"] = {["ModelId"]="4535482609",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.003082275390625,-0.2084674835205078,0.564697265625,0.9986512064933777,-0.027241254225373268,-0.04420004040002823,0.03103393316268921,0.9956790208816528,0.08752333372831345,0.041624803096055984,-0.08877698332071304,0.9951815009117126),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(1.8,1.8,1.8),["HeldGripSize"]=Vector3.new(0.51,1.18,1.35),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.51,1.18,1.35),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://95356090",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.8,1.8,1.8),["TextureId"]="rbxassetid://4835358188",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.18655,0.12321,1,0,0,0,0.17362,0.98481,0,-0.98481,0.17362)},["Children"]={}}}}},
    ["LugerChroma"] = {["ModelId"]="3187395551",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(-0.003082275390625,-0.2084674835205078,0.564697265625,0.9986512064933777,-0.027241254225373268,-0.04420004040002823,0.03103393316268921,0.9956790208816528,0.08752333372831345,0.041624803096055984,-0.08877698332071304,0.9951815009117126),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(1.8,1.8,1.8),["HeldGripSize"]=Vector3.new(0.51,1.18,1.35),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.51,1.18,1.35),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://95356090",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.8,1.8,1.8),["TextureId"]="",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Back,["Texture"]="rbxassetid://3171206966",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.15,0.03835,0.33322,1,0,0,0,0,1,0,-1,0)},["Children"]={}}}}},
    ["Makeshift"] = {["ModelId"]="11229837140",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.4075697280761122,1.0676403278216942,1,5.441189543375913e-8,-2.469291189299838e-7,-5.4411874117477055e-8,1,8.940691742509443e-8,2.469291189299838e-7,-8.940690321423972e-8,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.05462963650952727,0.05461925952299158,0.054628995832138386),["HeldGripSize"]=Vector3.new(0.58832,1.25,2.73145),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://11158364935",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.58832,1.25,2.73145),["TextureID"]="http://www.roblox.com/asset/?id=11274360089",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19998,0.08992,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Minty"] = {["ModelId"]="4535408229",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,0.35,0.7,-1,0,0,0,-1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(1.119044817204301,1.1190461058678443,1.1190482862099345),["HeldGripSize"]=Vector3.new(0.33348,1.35042,1.88001),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://4528424409",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.33348,1.35042,1.88001),["TextureID"]="rbxassetid://4528424475",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.05,-0.07257,0.23923,-1,0,0,0,0,-1,0,-1,0)},["Children"]={}}}}},
    ["Nebula"] = {["ModelId"]="6598123521",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://6596839942",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.31685,3.4062,1.15913),["TextureID"]="http://www.roblox.com/asset/?id=6256756879",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Nightblade"] = {["ModelId"]="475478854",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(99,95,98),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.2,3.1,0.6),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=103838505",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.45,0.5),["TextureId"]="http://www.roblox.com/asset/?id=103838996",["VertexColor"]=Vector3.new(0.4,0.4,0.4)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.00607,0.15098,0.04654,0.99999,0.00282,-0.00272,-0.00304,0.9962,-0.0871,0.00246,0.08711,0.9962)},["Children"]={}}}}},
    ["NikKnife"] = {["ModelId"]="2533351841",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=305826272",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1,1,1),["TextureId"]="rbxassetid://2533345412",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Ocean_G"] = {["ModelId"]="13945898892",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.020199707482748647,-0.15266264420952433,0.5821669053112432,1,-1.3436870460736827e-7,-7.619339044140361e-7,1.3436870460736827e-7,1,4.436212286407226e-9,7.619339044140361e-7,-4.4363148710147016e-9,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.07872,0.04308,0.04678),["HeldGripSize"]=Vector3.new(0.03,0.23,0.05387),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.03,0.23,0.05387),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://13928587755",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07872,0.04308,0.04678),["TextureId"]="rbxassetid://13928590054",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19999,0.08994,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["OrangeSeer"] = {["ModelId"]="3184124504",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.5,3.1,1),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=156092238",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.91,1),["TextureId"]="rbxassetid://3184063179",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Pearl_G"] = {["ModelId"]="18322646152",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.043096294599435,0.04309630319989786,0.0430964),["HeldGripSize"]=Vector3.new(0.56846,1.38161,2.15482),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://18280804203",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.56846,1.38161,2.15482),["TextureID"]="rbxassetid://18280805635",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08991,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Pearl_K"] = {["ModelId"]="18322621319",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://18276861801",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.22011,3.48599,0.80767),["TextureID"]="rbxassetid://18276866373",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Peppermint"] = {["ModelId"]="6085035357",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://6085025295",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0.3,-0.1),["Scale"]=Vector3.new(0.07,0.07,0.07),["TextureId"]="rbxassetid://6074789360",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Pixel"] = {["ModelId"]="473573054",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=361629844",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(3,3,3),["TextureId"]="http://www.roblox.com/asset/?id=361630114",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.00634,0.03519,-0.22073,0.99817,-0.06049,-0.00075,0.00608,0.08798,0.9961,-0.06019,-0.99428,0.08818)},["Children"]={}}}}},
    ["Plasmabeam"] = {["ModelId"]="10014717343",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.23204932054387503,0.6156195055121017,1,7.798573165018752e-7,1.920627141771547e-7,-7.798569185979431e-7,1,-0.0000019371491362107918,-1.9206422052775451e-7,0.0000019371489088371163,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.04235,0.04632,0.04392),["HeldGripSize"]=Vector3.new(0.36561,1.17183,2.1575),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.36561,1.17183,2.1575),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://9702755186",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.04235,0.04632,0.04392),["TextureId"]="rbxassetid://10015208201",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.06429,0.05646,0.19186,1,0,0,0,0.29232,0.95632,0,-0.95632,0.29232)},["Children"]={}}}}},
    ["Prismatic"] = {["ModelId"]="5360359935",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.425,1.90227,1.21),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://5355753728",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.06,0.06917,0.06),["TextureId"]="rbxassetid://5355747943",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Pumpking"] = {["ModelId"]="1138143590",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,4.5,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=94840342",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.4,0.4,0.4),["TextureId"]="rbxassetid://1164426571",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["PurpleSeer"] = {["ModelId"]="3184125244",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.5,3.1,1),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=156092238",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.91,1),["TextureId"]="rbxassetid://3184063317",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Rainbow_G"] = {["ModelId"]="12966354606",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.36191759316,0.9062288386,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.05187686881846597,0.05189273375449638,0.051892796040893856),["HeldGripSize"]=Vector3.new(0.42839,1.21989,2.59464),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://12921221200",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.42839,1.21989,2.59464),["TextureID"]="rbxassetid://12921231088",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19998,0.08991,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Rainbow_K"] = {["ModelId"]="12966184630",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://12921240966",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.26142,3.2611,1.00893),["TextureID"]="rbxassetid://12921241867",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Raygun"] = {["ModelId"]="139431943195380",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.04710763181685582,0.04710768302054529,0.04710760359402493),["HeldGripSize"]=Vector3.new(0.69024,1.64298,2.35538),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Slate,["MeshId"]="rbxassetid://115447220952926",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.69024,1.64298,2.35538),["TextureID"]="rbxassetid://127881437685243",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08994,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["RaygunChroma"] = {["ModelId"]="139431943195380",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.0472,0.0472,0.0472),["HeldGripSize"]=Vector3.new(0.69,1.643,2.355),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Glass,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.69,1.643,2.355),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://115447220952926",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.0472,0.0472,0.0472),["TextureId"]="rbxassetid://127881437685243",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://73231950532216",["Transparency"]=0,["ZIndex"]=0},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20004,0.08991,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Reaver_Ancient"] = {["ModelId"]="7791640819",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="Reaver (Ancient) MM2",["Props"]={["Reflectance"]=0,["Color"]=Color3.fromRGB(163,162,165),["MeshId"]="rbxassetid://7774148738",["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Transparency"]=0,["TextureID"]="rbxassetid://7774148967",["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(1.033421516418457,4.225603103637695,4.082431316375732)},["Children"]={}}},
    ["RedLuger"] = {["ModelId"]="332044583",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.003082275390625,-0.2084674835205078,0.564697265625,0.9986512064933777,-0.027241254225373268,-0.04420004040002823,0.03103393316268921,0.9956790208816528,0.08752333372831345,0.041624803096055984,-0.08877698332071304,0.9951815009117126),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(1.8,1.8,1.8),["HeldGripSize"]=Vector3.new(0.51,1.18,1.35),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(0,143,156),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.51,1.18,1.35),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=95356090",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1.8,1.8,1.8),["TextureId"]="http://www.roblox.com/asset/?id=126534866",["VertexColor"]=Vector3.new(1,0.2,0.3)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.15,0.03833,0.33322,1,0,0,0,0,1,0,-1,0)},["Children"]={}}}}},
    ["RedSeer"] = {["ModelId"]="3184122829",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.5,3.1,1),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=156092238",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.91,1),["TextureId"]="rbxassetid://3184063443",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Sakura_K"] = {["ModelId"]="12339366064",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://12307707430",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.52985,3.70591,0.52184),["TextureID"]="rbxassetid://12307707797",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Sands"] = {["ModelId"]="119213058412452",["Type"]="Gun",["Chroma"]=false,["Placement"]="WaistRight",["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.037926,0.037926,0.037926),["HeldGripSize"]=Vector3.new(0.389873,1.107298,1.679064),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["Size"]=Vector3.new(0.389873,1.107298,1.679064),["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Color"]=Color3.fromRGB(163.00000350000002,161.99999549999998,164.99999400000002),["Material"]=Enum.Material.Plastic,["Shape"]=Enum.PartType.Block,["Reflectance"]=0,["Transparency"]=0,["CastShadow"]=true},["Children"]={{["Class"]="SpecialMesh",["Name"]="ChromaScanV2Mesh",["Props"]={["MeshType"]=Enum.MeshType.FileMesh,["MeshId"]="rbxassetid://104658283027428",["TextureId"]="rbxassetid://138720590976364",["Scale"]=Vector3.new(0.037926,0.037926,0.037926),["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19216,0.086384,1,0,0,0,0.642763,0.766065,0,-0.766065,0.642763)},["Children"]={}}}}},
    ["SandsChroma"] = {["ModelId"]="119213058412452",["Type"]="Gun",["Chroma"]=true,["Placement"]="WaistRight",["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.037926,0.037926,0.037926),["HeldGripSize"]=Vector3.new(0.389873,1.107298,1.679064),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["Size"]=Vector3.new(0.389873,1.107298,1.679064),["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Color"]=Color3.fromRGB(163.00000350000002,161.99999549999998,164.99999400000002),["Material"]=Enum.Material.Plastic,["Shape"]=Enum.PartType.Block,["Reflectance"]=0,["Transparency"]=0,["CastShadow"]=true},["Children"]={{["Class"]="SpecialMesh",["Name"]="ChromaScanV2Mesh",["Props"]={["MeshType"]=Enum.MeshType.FileMesh,["MeshId"]="rbxassetid://104658283027428",["TextureId"]="rbxassetid://92831262223446",["Scale"]=Vector3.new(0.037926,0.037926,0.037926),["Offset"]=Vector3.new(0,0,0),["VertexColor"]=Vector3.new(1,1,1)},["Attributes"]={["CartiHubChromaMesh"]=true},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19216,0.086384,1,0,0,0,0.642763,0.766065,0,-0.766065,0.642763)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Texture"]="rbxassetid://92831262223446",["Transparency"]=0,["Face"]=Enum.NormalId.Front,["Color3"]=Color3.fromRGB(255,255,255)},["Children"]={}}}}},
    ["Saw"] = {["ModelId"]="235381341",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=168119698",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.5,0.5,0.5),["TextureId"]="http://www.roblox.com/asset?id=168119736",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SawChroma"] = {["ModelId"]="3187392992",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,3.08,1),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://168119698",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.5,0.5,0.55),["TextureId"]="rbxassetid://3171086347",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://3171091036",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Scythe"] = {["ModelId"]="2511791893",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.25,2.9,1.6),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=305826272",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1,1,1),["TextureId"]="rbxassetid://2511673515",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SeerChroma"] = {["ModelId"]="3184125538",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://156092238",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.91,1),["TextureId"]="rbxassetid://3184059718",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://3184061374",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Shark"] = {["ModelId"]="203858533",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.1,0.75,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.44,0.44,0.44),["HeldGripSize"]=Vector3.new(0.58,1.34,2.48),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.58,1.34,2.48),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=118269783",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.44,0.44,0.44),["TextureId"]="rbxassetid://1106696354",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.00634,0.03519,-0.22076,0.99817,-0.06049,-0.00075,0.00608,0.08798,0.9961,-0.06019,-0.99428,0.08818)},["Children"]={}}}}},
    ["SharkChroma"] = {["ModelId"]="3187395738",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.1,0.75,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.44,0.44,0.44),["HeldGripSize"]=Vector3.new(0.8,1.02,2.07),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.8,1.02,2.07),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://118269783",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.44,0.44,0.44),["TextureId"]="rbxassetid://3171214838",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,18,0),["Face"]=Enum.NormalId.Back,["Texture"]="rbxassetid://3171214969",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.15,-0.24356,0.23059,1,0,0,0,0,1,0,-1,0)},["Children"]={}}}}},
    ["Slasher"] = {["ModelId"]="315506122",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3.17,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=283709822",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.45,0.45,0.45),["TextureId"]="http://www.roblox.com/asset/?id=313894904",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SlasherChroma"] = {["ModelId"]="3187393285",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3.17,0.7),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://283709822",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.45,0.45,0.45),["TextureId"]="rbxassetid://3171107559",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Back,["Texture"]="rbxassetid://3171107715",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Snowcannon"] = {["ModelId"]="129186939023729",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.049990993984320414,0.049991411960399426,0.0499914),["HeldGripSize"]=Vector3.new(0.55858,1.35489,2.49957),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.SmoothPlastic,["MeshId"]="rbxassetid://99836890880541",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.55858,1.35489,2.49957),["TextureID"]="rbxassetid://122392330922281",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,0.00003,0.0899,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}},{["Class"]="MeshPart",["Name"]="Glass",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,248,248),["DoubleSided"]=false,["Material"]=Enum.Material.SmoothPlastic,["MeshId"]="rbxassetid://127037890709284",["Reflectance"]=0,["RelCF"]=CFrame.new(-915.88696,1985.51025,2664.40527,-0.88933,-0.25869,-0.37707,-0.25617,-0.40121,0.87944,-0.37879,0.8787,0.29054),["Size"]=Vector3.new(0.46142,0.46142,1.40329),["TextureID"]="",["Transparency"]=0.8},["Children"]={}}}}},
    ["SnowcannonChroma"] = {["ModelId"]="129186939023729",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.04964,0.04964,0.04964),["HeldGripSize"]=Vector3.new(0.559,1.355,2.5),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.559,1.355,2.5),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,0,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://84894022221722",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.25153,0.11305,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://99836890880541",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.04964,0.04964,0.04964),["TextureId"]="rbxassetid://122392330922281",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}}}}},
    ["SnowDagger"] = {["ModelId"]="95328449981238",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://140633396635861",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.36039,2.99009,0.71375),["TextureID"]="rbxassetid://77812964601215",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SnowDaggerChroma"] = {["ModelId"]="95328449981238",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.33126,2.75126,0.65699),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://109403096491788",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://140633396635861",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.05978,0.05978,0.05978),["TextureId"]="rbxassetid://77812964601215",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Snowflake"] = {["ModelId"]="1268932977",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(16,42,220),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3.79,0.86),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://582120569",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.6,0.6,0.6),["TextureId"]="rbxassetid://582120836",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SnowstormChroma"] = {["ModelId"]="70973050894155",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.26,3.852,0.958),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://86944837615327",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07705,0.07705,0.07705),["TextureId"]="rbxassetid://86253759560362",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,0,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://118939212650553",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Spectre2022"] = {["ModelId"]="11229779932",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.05246,0.05246,0.05246),["HeldGripSize"]=Vector3.new(0.2,1.83,1.03),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.SmoothPlastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.2,1.83,1.03),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://11165536294",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.05246,0.05246,0.05246),["TextureId"]="rbxassetid://11165715120",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Spider"] = {["ModelId"]="473571549",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=302165984",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.6,0.6,0.6),["TextureId"]="rbxassetid://7596177341",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.00147,0.08734,-0.12192,0.99817,-0.06049,-0.00075,0.00608,0.08798,0.9961,-0.06019,-0.99428,0.08818)},["Children"]={}}}}},
    ["Sugar"] = {["ModelId"]="332848695",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(-0.08333331595,0.4467787842,0.8990923564,-1,0,0,0,-1,0,0,0,1),["HeldGripCalibrated"]=false,["HeldGripScale"]=Vector3.new(0.5,0.5,0.5),["HeldGripSize"]=Vector3.new(0.2,1,1.9),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(196,40,28),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.2,1,1.9),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=101086719",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.5,0.5,0.5),["TextureId"]="http://www.roblox.com/asset/?id=101086650",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.1,0.28233,0.30722,-1,0,0,0,-0.08713,-0.9962,0,-0.9962,0.08713)},["Children"]={}}}}},
    ["SunsetGun"] = {["ModelId"]="129480661108374",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.04585,0.04585,0.04585),["HeldGripSize"]=Vector3.new(0.459,1.355,2.346),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.459,1.355,2.346),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://109742397574153",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.04585,0.04585,0.04585),["TextureId"]="rbxassetid://71731808219690",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(2555,2322,200),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://122480499480858",["Transparency"]=1,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19998,0.0899,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["SunsetGunChroma"] = {["ModelId"]="129480661108374",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.0471,0.0471,0.0471),["HeldGripSize"]=Vector3.new(0.48417,1.37511,2.08516),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.48417,1.37511,2.08516),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://109742397574153",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.0471,0.0471,0.0471),["TextureId"]="rbxassetid://71731808219690",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19998,0.08992,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://87234234470516",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Decal",["Name"]="Glow",["Props"]={["Color3"]=Color3.fromRGB(2555,2322,200),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://122480499480858",["Transparency"]=1,["ZIndex"]=2},["Children"]={}}}}},
    ["SunsetKnife"] = {["ModelId"]="103526268515240",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.23611,3.866,1.18362),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(2555,2322,200),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://95001575076131",["Transparency"]=1,["ZIndex"]=1},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://137082284051764",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07391,0.07391,0.07391),["TextureId"]="rbxassetid://93782017269677",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SunsetKnifeChroma"] = {["ModelId"]="103526268515240",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.276,3.531,1.041),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://137082284051764",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07,0.07,0.07),["TextureId"]="rbxassetid://93782017269677",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,0,0),["Face"]=Enum.NormalId.Right,["Texture"]="rbxassetid://70538223885127",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Decal",["Name"]="Glow",["Props"]={["Color3"]=Color3.fromRGB(2555,2322,200),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://95001575076131",["Transparency"]=1,["ZIndex"]=2},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SweetChroma"] = {["ModelId"]="126937716954396",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.71067,2.0184,3.06062),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://87741741305052",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://88250692342609",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.06913,0.06913,0.06913),["TextureId"]="rbxassetid://120707737118924",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SwirlyAxe"] = {["ModelId"]="8304801000",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://8293463844",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.51346,2.89648,2.66),["TextureID"]="rbxassetid://8293464070",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SwirlyBlade"] = {["ModelId"]="8304805693",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://8302964090",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.46908,3.34704,0.85579),["TextureID"]="rbxassetid://8302965681",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SwirlyGun"] = {["ModelId"]="8305264097",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.7,-0.3,1,0,0,0,0,-1,0,1,0),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.9999999750905968,0.9999999864780328,1.0000000115948247),["HeldGripSize"]=Vector3.new(0.469,2.539,1.1515),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://8310911339",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.469,2.539,1.1515),["TextureID"]="rbxassetid://8293539377",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["SwirlyGunChroma"] = {["ModelId"]="8311393414",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.7,-0.3,1,0,0,0,0,-1,0,1,0),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(1,1,1),["HeldGripSize"]=Vector3.new(1.04973,3.2087,1.6),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(1.04973,3.2087,1.6),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://8310911339",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(1,1,1),["TextureId"]="rbxassetid://10044501316",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://10044507532",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["TheSeer"] = {["ModelId"]="198441783",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.5,3.1,1),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=156092238",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.91,1),["TextureId"]="http://www.roblox.com/asset?id=156092253 ",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Tides"] = {["ModelId"]="473569625",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=238314382",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.9,0.7),["TextureId"]="http://www.roblox.com/asset/?id=238314431",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.0034,0.12729,-0.21518,0.99799,-0.06327,-0.00357,0.00363,0.00083,0.99999,-0.06326,-0.998,0.00106)},["Children"]={}}}}},
    ["TidesChroma"] = {["ModelId"]="3187394934",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.45,0.7,3.05),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://238314382",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.9,0.7),["TextureId"]="rbxassetid://3171168641",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,18,0),["Face"]=Enum.NormalId.Back,["Texture"]="rbxassetid://3171161741",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.0034,0.12729,-0.21515,0.99799,-0.06327,-0.00357,0.00363,0.00083,0.99999,-0.06326,-0.998,0.00106)},["Children"]={}}}}},
    ["TravelerAxe"] = {["ModelId"]="15070870271",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://15057341638",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.60441,3.406,2.18736),["TextureID"]="rbxassetid://15057460725",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["TravelerGun"] = {["ModelId"]="15091442039",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.04912499489722157,0.04910123309043079,0.0491010037461093),["HeldGripSize"]=Vector3.new(0.48155,1.26318,2.45505),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://15090814396",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.48155,1.26318,2.45505),["TextureID"]="rbxassetid://15090814672",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["TravelerGunChroma"] = {["ModelId"]="15097897227",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.04839,0.0491,0.04924),["HeldGripSize"]=Vector3.new(0.57198,0.52873,2.52),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.57198,0.52873,2.52),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://15090814396",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.04839,0.0491,0.04924),["TextureId"]="rbxassetid://15090814672",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Top,["Texture"]="rbxassetid://138224985315804",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Treat"] = {["ModelId"]="131626924640663",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.05389931065615046,0.05389929675547244,0.053899325964599815),["HeldGripSize"]=Vector3.new(0.4485287070274353,1.34443199634552,1.8994859457015991),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["Reflectance"]=0,["Color"]=Color3.fromRGB(163.00000548362732,162.00000554323196,165.00000536441803),["MeshId"]="rbxassetid://135790480817772",["RelCF"]=CFrame.new(0,0,0,1.000000238418579,0,-2.9802322387695312e-8,0,1.0000003576278687,1.043081283569336e-7,-2.9802322387695312e-8,1.043081283569336e-7,1.0000004768371582),["Transparency"]=0,["TextureID"]="",["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["CastShadow"]=true,["Size"]=Vector3.new(0.4485287070274353,1.34443199634552,1.8994859457015991)},["Children"]={{["Class"]="SurfaceAppearance",["Name"]="SurfaceAppearance",["Props"]={["MetalnessMap"]="",["NormalMap"]="",["RoughnessMap"]="",["Color"]=Color3.fromRGB(255,255,255),["AlphaMode"]=Enum.AlphaMode.Overlay,["ColorMap"]="rbxassetid://108067764674565"},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20000000298023224,0.08990859985351562,1,0,0,0,0.6427633166313171,0.7660649418830872,0,-0.7660649418830872,0.6427633166313171)},["Children"]={}}}}},
    ["TreatChroma"] = {["ModelId"]="131626924640663",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.05384,0.05384,0.05384),["HeldGripSize"]=Vector3.new(0.55352,1.57208,2.38384),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.55352,1.57208,2.38384),["Transparency"]=0},["Children"]={{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://71260815789113",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20004,0.08987,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}},{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://135790480817772",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.05384,0.05384,0.05384),["TextureId"]="rbxassetid://86649236464456",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}}}}},
    ["TreeGun2023"] = {["ModelId"]="15682703596",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.020457305441424312,0.020457329202621093,0.020457280401776454),["HeldGripSize"]=Vector3.new(0.83339,1.38372,2.5195),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://15408863676",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.83339,1.38372,2.5195),["TextureID"]="rbxassetid://15408849730",["Transparency"]=0},["Children"]={{["Class"]="MeshPart",["Name"]="Lights",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864622",["Reflectance"]=0,["RelCF"]=CFrame.new(-0.08533,0.1557,-0.32174,0.99472,0.0493,0.08997,-0.04759,0.99865,-0.02099,-0.09088,0.0166,0.99572),["Size"]=Vector3.new(0.72726,0.83294,1.26788),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="Lights",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864712",["Reflectance"]=0,["RelCF"]=CFrame.new(-0.04137,0.15601,-0.25344,0.99472,0.0493,0.08997,-0.04759,0.99865,-0.02099,-0.09088,0.0166,0.99572),["Size"]=Vector3.new(0.64613,0.7764,1.10341),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="Lights",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864833",["Reflectance"]=0,["RelCF"]=CFrame.new(0.00167,0.06058,-1.00051,0.99472,0.0493,0.08997,-0.04759,0.99865,-0.02099,-0.09088,0.0166,0.99572),["Size"]=Vector3.new(0.05203,0.09871,0.06772),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="Lights",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864925",["Reflectance"]=0,["RelCF"]=CFrame.new(0.0848,0.10629,-0.45204,0.99472,0.0493,0.08997,-0.04759,0.99865,-0.02099,-0.09088,0.0166,0.99572),["Size"]=Vector3.new(0.5964,0.87543,1.30518),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="Lights",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864995",["Reflectance"]=0,["RelCF"]=CFrame.new(0.00178,0.1181,-0.08321,0.99472,0.0493,0.08997,-0.04759,0.99865,-0.02099,-0.09088,0.0166,0.99572),["Size"]=Vector3.new(0.6152,0.84724,0.67052),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0.00001,-0.20001,0.0899,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["TreeGun2023Chroma"] = {["ModelId"]="15682703596",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.021,0.021,0.0205),["HeldGripSize"]=Vector3.new(0.833,1.384,2.519),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,37,0),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.833,1.384,2.519),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://15408863676",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.021,0.021,0.0205),["TextureId"]="",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19998,0.08992,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}},{["Class"]="Decal",["Name"]="Decal",["Props"]={["Color3"]=Color3.fromRGB(255,255,255),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://15694616343",["Transparency"]=0.8,["ZIndex"]=1},["Children"]={}},{["Class"]="Decal",["Name"]="Decal",["Props"]={["Color3"]=Color3.fromRGB(255,255,255),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://15694615445",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Model",["Name"]="LightParts",["Props"]={},["Children"]={{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864622",["Reflectance"]=0,["RelCF"]=CFrame.new(-0.08643,0.19989,-0.21362,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.72726,0.83294,1.26788),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864925",["Reflectance"]=0,["RelCF"]=CFrame.new(0.0957,0.15671,-0.32687,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.5964,0.87543,1.30518),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864995",["Reflectance"]=0,["RelCF"]=CFrame.new(-0.02002,0.17044,0.03246,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.6152,0.84724,0.67052),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864712",["Reflectance"]=0,["RelCF"]=CFrame.new(-0.05078,0.20337,-0.14159,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.64613,0.7764,1.10341),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408864833",["Reflectance"]=0,["RelCF"]=CFrame.new(0.06543,0.09778,-0.87988,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.05203,0.09871,0.06772),["TextureID"]="",["Transparency"]=0},["Children"]={}}}}}}},
    ["TreeKnife2023"] = {["ModelId"]="15667157715",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,0,0),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.41435,4.1435,1.02114),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://15408280573",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.0046,0.0046,0.0046),["TextureId"]="rbxassetid://15408244684",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Model",["Name"]="LightParts",["Props"]={},["Children"]={{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281396",["Reflectance"]=0,["RelCF"]=CFrame.new(0.00953,-0.00206,-0.15921,0.99954,0.01412,-0.02691,-0.01402,0.9999,0.00364,0.02695,-0.00326,0.99963),["Size"]=Vector3.new(1.0546,2.20523,0.84565),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281127",["Reflectance"]=0,["RelCF"]=CFrame.new(0.05166,-0.19347,0.10281,0.99954,0.01412,-0.02691,-0.01402,0.9999,0.00364,0.02695,-0.00326,0.99963),["Size"]=Vector3.new(1.00342,2.14222,1.0312),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281298",["Reflectance"]=0,["RelCF"]=CFrame.new(-0.03924,1.17226,-0.05783,0.99954,0.01412,-0.02691,-0.01402,0.9999,0.00364,0.02695,-0.00326,0.99963),["Size"]=Vector3.new(0.11299,0.13324,0.06312),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281195",["Reflectance"]=0,["RelCF"]=CFrame.new(0.05583,-0.31531,0.05017,0.99954,0.01412,-0.02691,-0.01402,0.9999,0.00364,0.02695,-0.00326,0.99963),["Size"]=Vector3.new(0.93531,1.86433,0.91616),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(248,217,109),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281466",["Reflectance"]=0,["RelCF"]=CFrame.new(0.0132,-0.6091,0.00861,0.99954,0.01412,-0.02691,-0.01402,0.9999,0.00364,0.02695,-0.00326,0.99963),["Size"]=Vector3.new(1.02064,1.13292,0.87231),["TextureID"]="",["Transparency"]=0},["Children"]={}}}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["TreeKnife2023Chroma"] = {["ModelId"]="15694110573",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,9,0),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.41435,4.1435,1.02114),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://15408280573",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.0046,0.0046,0.0046),["TextureId"]="",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Decal",["Props"]={["Color3"]=Color3.fromRGB(255,255,255),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://15693337518",["Transparency"]=0.6,["ZIndex"]=1},["Children"]={}},{["Class"]="Decal",["Name"]="Decal",["Props"]={["Color3"]=Color3.fromRGB(255,255,255),["Face"]=Enum.NormalId.Front,["Texture"]="rbxassetid://15693352412",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Model",["Name"]="LightParts",["Props"]={},["Children"]={{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281396",["Reflectance"]=0,["RelCF"]=CFrame.new(0.0249,0.00073,-0.13696,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(1.0546,2.20523,0.84565),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281127",["Reflectance"]=0,["RelCF"]=CFrame.new(0.07666,-0.19095,0.12332,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(1.00342,2.14222,1.0312),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281298",["Reflectance"]=0,["RelCF"]=CFrame.new(-0.0376,1.17355,-0.03003,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.11299,0.13324,0.06312),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281195",["Reflectance"]=0,["RelCF"]=CFrame.new(0.08155,-0.31226,0.07007,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.93531,1.86433,0.91616),["TextureID"]="",["Transparency"]=0},["Children"]={}},{["Class"]="MeshPart",["Name"]="LightPart",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(255,255,255),["DoubleSided"]=false,["Material"]=Enum.Material.Neon,["MeshId"]="rbxassetid://15408281466",["Reflectance"]=0,["RelCF"]=CFrame.new(0.0415,-0.60669,0.02859,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(1.02064,1.13292,0.87231),["TextureID"]="",["Transparency"]=0},["Children"]={}}}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Turkey2023"] = {["ModelId"]="15413149176",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(1.099,2.812,1.072),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://15320557481",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.056,0.056,0.056),["TextureId"]="rbxassetid://15320558272",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Part",["Name"]="BiteLoad",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(1.099,2.812,1.072),["Transparency"]=0.999},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://15414904040",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.056,0.056,0.056),["TextureId"]="rbxassetid://15414905407",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}}}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["UFOKnife"] = {["ModelId"]="77607127867154",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://86649405964534",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.93289,3.79124,1.0541),["TextureID"]="rbxassetid://94763497877100",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["UFOKnifeChroma"] = {["ModelId"]="77607127867154",["Type"]="Knife",["Chroma"]=true,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Glass,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.933,3.791,1.054),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://86649405964534",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.07697,0.07697,0.07697),["TextureId"]="rbxassetid://94763497877100",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,0,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://138018131999412",["Transparency"]=0,["ZIndex"]=0},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["VampireAxe"] = {["ModelId"]="130837676383567",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Slate,["MeshId"]="rbxassetid://92263601594064",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.31198,3.62749,1.92278),["TextureID"]="rbxassetid://73008954478338",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["VampireGun"] = {["ModelId"]="90274872705656",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.0482537655304126,0.04825445687384121,0.048254200000000004),["HeldGripSize"]=Vector3.new(0.42254,1.29266,2.41271),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Slate,["MeshId"]="rbxassetid://126591885289479",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.42254,1.29266,2.41271),["TextureID"]="rbxassetid://104946799389637",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08992,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["VampireGunChroma"] = {["ModelId"]="90274872705656",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.05,0.05,0.05),["HeldGripSize"]=Vector3.new(0.422,1.292,2.412),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.422,1.292,2.412),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://126591885289479",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.05,0.05,0.05),["TextureId"]="rbxassetid://104946799389637",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,9,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://126923923696531",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08989,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["VampiresEdge"] = {["ModelId"]="5873256998",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://5841895234",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.39547,3.35145,1.01441),["TextureID"]="http://www.roblox.com/asset/?id=5842343736",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Virtual"] = {["ModelId"]="386276987",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=130101214",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.6,0.6,0.7),["TextureId"]="https://www.roblox.com/asset/?id=386250868",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Watergun"] = {["ModelId"]="18351388416",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.03947,0.03947,0.03947),["HeldGripSize"]=Vector3.new(0.448,1.365,2),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.448,1.365,2),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://18280999342",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.03947,0.03947,0.03947),["TextureId"]="rbxassetid://18281003313",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20001,0.08992,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["WatergunChroma"] = {["ModelId"]="18351401528",["Type"]="Gun",["Chroma"]=true,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.03947,0.03947,0.03947),["HeldGripSize"]=Vector3.new(0.448,1.365,2),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="Part",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.448,1.365,2),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://18280999342",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.03947,0.03947,0.03947),["TextureId"]="rbxassetid://18281003313",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Decal",["Name"]="Chroma",["Props"]={["Color3"]=Color3.fromRGB(255,10,0),["Face"]=Enum.NormalId.Left,["Texture"]="rbxassetid://18335602807",["Transparency"]=0,["ZIndex"]=1},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.20004,0.0899,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["Waves_K"] = {["ModelId"]="13945892398",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["DoubleSided"]=false,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://13916938702",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.30452,3.96204,1.26561),["TextureID"]="rbxassetid://13916939964",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["WintersEdge"] = {["ModelId"]="1268708987",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(4,175,236),["Material"]=Enum.Material.Plastic,["Reflectance"]=0.4,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.66,3,0.38),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset/?id=93108071",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.45,0.45,0.45),["TextureId"]="http://www.roblox.com/asset/?id=93112631",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(-0.05109,0.08594,-0.00051,-0.03483,-0.00184,-0.99939,0.03474,0.99939,-0.00305,0.99879,-0.03482,-0.03474)},["Children"]={}}}}},
    ["WraithGun"] = {["ModelId"]="75233248021696",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.0443864175623734,0.04438604951015915,0.0443862),["HeldGripSize"]=Vector3.new(0.45523,1.37271,2.21931),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Slate,["MeshId"]="rbxassetid://79527507796407",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.45523,1.37271,2.21931),["TextureID"]="rbxassetid://80102752403085",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19998,0.0899,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["WraithKnife"] = {["ModelId"]="107190526940939",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Slate,["MeshId"]="rbxassetid://112444333460928",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.22556,3.56844,0.95248),["TextureID"]="rbxassetid://131787177447081",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["XenoGun"] = {["ModelId"]="79722325448464",["Type"]="Gun",["Chroma"]=false,["HeldGrip"]=CFrame.new(0,-0.35,0.7,1,0,0,0,1,0,0,0,1),["HeldGripCalibrated"]=true,["HeldGripScale"]=Vector3.new(0.05334999939462598,0.053350279442404204,0.0533504),["HeldGripSize"]=Vector3.new(0.28155,1.31834,2.66752),["HeldGripOffset"]=Vector3.new(0,0,0),["Model"]={["Class"]="MeshPart",["Name"]="GunDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(143,34,34),["DoubleSided"]=true,["Material"]=Enum.Material.Brick,["MeshId"]="rbxassetid://96867436912658",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.28155,1.31834,2.66752),["TextureID"]="rbxassetid://103568875118220",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,-0.19998,0.0899,1,0,0,0,0.64276,0.76607,0,-0.76607,0.64276)},["Children"]={}}}}},
    ["XenoKnife"] = {["ModelId"]="100576599313371",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://136619680236977",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.20411,3.91908,0.74307),["TextureID"]="rbxassetid://113651973865393",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["Xmas"] = {["ModelId"]="473572568",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(17,17,17),["Material"]=Enum.Material.DiamondPlate,["Reflectance"]=0.01,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.4,3,0.8),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="rbxassetid://187852667",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.6,0.6,0.6),["TextureId"]="rbxassetid://187852629",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="CustomAttachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,0.99799,-0.06327,-0.00357,0.00363,0.00083,0.99999,-0.06326,-0.998,0.00106)},["Children"]={}}}}},
    ["YellowSeer"] = {["ModelId"]="3184124768",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="Part",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["Material"]=Enum.Material.Plastic,["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Shape"]=Enum.PartType.Block,["Size"]=Vector3.new(0.5,3.1,1),["Transparency"]=0},["Children"]={{["Class"]="SpecialMesh",["Name"]="Mesh",["Props"]={["MeshId"]="http://www.roblox.com/asset?id=156092238",["MeshType"]=Enum.MeshType.FileMesh,["Offset"]=Vector3.new(0,0,0),["Scale"]=Vector3.new(0.7,0.91,1),["TextureId"]="rbxassetid://3184063623",["VertexColor"]=Vector3.new(1,1,1)},["Children"]={}},{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
    ["ZombieBat"] = {["ModelId"]="11229814357",["Type"]="Knife",["Chroma"]=false,["Model"]={["Class"]="MeshPart",["Name"]="KnifeDisplay",["Props"]={["CastShadow"]=true,["Color"]=Color3.fromRGB(163,162,165),["DoubleSided"]=false,["Material"]=Enum.Material.Plastic,["MeshId"]="rbxassetid://11182796403",["Reflectance"]=0,["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1),["Size"]=Vector3.new(0.78195,3.70306,0.78373),["TextureID"]="rbxassetid://11192090515",["Transparency"]=0},["Children"]={{["Class"]="Attachment",["Name"]="Attachment",["Props"]={["RelCF"]=CFrame.new(0,0,0,1,0,0,0,1,0,0,0,1)},["Children"]={}}}}},
}

if not DustyDB.Visuals or not DustyDB.Catalog then
    error("[Dusty] Weapon data belum di-paste! Baca instruksi di atas.")
end

local DustyDB_Visuals = DustyDB.Visuals
local DustyDB_Catalog = DustyDB.Catalog

-- RUNTIME
local Players           = game:GetService("Players")
local CollectionService = game:GetService("CollectionService")
local PhysicsService    = game:GetService("PhysicsService")
local PathfindingService = game:GetService("PathfindingService")
local AssetService      = game:GetService("AssetService")
local ContentProvider   = game:GetService("ContentProvider")
local TweenService      = game:GetService("TweenService")
local localPlayer = Players.LocalPlayer
local rng         = Random.new()

-- Collision group
local DUSTY_COLLISION_GROUP = "DustyNPCs"
pcall(function()
    PhysicsService:RegisterCollisionGroup(DUSTY_COLLISION_GROUP)
end)
pcall(function()
    PhysicsService:CollisionGroupSetCollidable(
        DUSTY_COLLISION_GROUP, DUSTY_COLLISION_GROUP, false
    )
end)
local DustyRuntime = {
    Active = true,
    Connections = {},
    Jobs = {},
    ScreenGuis = {},
}

function DustyRuntime.connect(signal, callback)
    if not DustyRuntime.Active then return end
    local conn = signal:Connect(function(...)
        if DustyRuntime.Active then callback(...) end
    end)
    table.insert(DustyRuntime.Connections, conn)
    return conn
end

function DustyRuntime.spawnJob(fn)
    if not DustyRuntime.Active then return end
    local thread = task.spawn(function()
        local ok, err = pcall(fn)
        DustyRuntime.Jobs[coroutine.running()] = nil
    end)
    DustyRuntime.Jobs[thread] = true
    return thread
end

function DustyRuntime.ownGui(gui)
    if not DustyRuntime.Active then gui:Destroy(); return gui end
    DustyRuntime.ScreenGuis[gui] = true
    return gui
end

function DustyRuntime.shutdown()
    if not DustyRuntime.Active then return end
    DustyRuntime.Active = false
    if _G.DustyNPC then
        pcall(function() _G.DustyNPC:Shutdown() end)
        _G.DustyNPC = nil
    end
    for _, conn in ipairs(DustyRuntime.Connections) do
        pcall(function() conn:Disconnect() end)
    end
    table.clear(DustyRuntime.Connections)
    for thread in pairs(DustyRuntime.Jobs) do
        if thread ~= coroutine.running() then
            pcall(task.cancel, thread)
        end
    end
    table.clear(DustyRuntime.Jobs)
    for gui in pairs(DustyRuntime.ScreenGuis) do
        pcall(function() gui:Destroy() end)
    end
    table.clear(DustyRuntime.ScreenGuis)

    pcall(function()
        local pg = localPlayer:FindFirstChild("PlayerGui")
        local old = pg and pg:FindFirstChild("DustyNPCUI")
        if old then old:Destroy() end
        local folder = workspace:FindFirstChild("DustyNPCs")
        if folder then folder:Destroy() end
    end)
    _G.DustyNPCShutdown = nil
end

_G.DustyNPCShutdown = DustyRuntime.shutdown

-- DATA NPC
local DustyAnimationSets = {
    {Name="Classic",   Idle=507766666, Idle2=507766951, Walk=507777826},
    {Name="Stylish",   Idle=616136790, Idle2=616138447, Walk=616146177},
    {Name="Superhero", Idle=616111295, Idle2=616113536, Walk=616122287},
    {Name="Toy",       Idle=782841498, Idle2=782845736, Walk=782843345},
    {Name="Ninja",     Idle=656117400, Idle2=656118341, Walk=656121766},
    {Name="Pirate",    Idle=750781874, Idle2=750782770, Walk=750785693},
}

local DustySharedAnims = {
    Jump=507765000, Fall=507767968,
    Wave=507770239, Point=507770453,
    Cheer=507770677, Laugh=507770818,
}

local DustyProfiles = {
    {Name="Relaxed",   Speed=11.8, Reaction=.65, Acceleration=20, Turn=5.5, Social=.55},
    {Name="Curious",   Speed=13.2, Reaction=.38, Acceleration=25, Turn=6.5, Social=.8},
    {Name="Energetic", Speed=14.6, Reaction=.24, Acceleration=30, Turn=7.5, Social=.7},
}

local DustyRandomNames = {
    "Livio1177559", "thequeenloIa7", "ridney123499", "Babs17_209", "SalmanBlox16", "samu_030422", "YujiXD16", "1lilkz",
    "insanodel25", "Maresoo11k", "RealDealLex", "itsmePicoy27", "purplecat0078", "DavidValguti", "chicopro041", "janiasiuuu", "Sdrt1323",
    "Nikiicool132", "lewi_yo3", "vhxfffhjf", "italomourareis2016", "tonyhim0", "Allenmo2018", "eyromeo777", "Gatitoperrito177", "Stacy34585",
    "hssn_175", "secret_67511", "Kohen808", "17_kaykayy9", "prachit2798", "Darellthagoat83", "ioipkokpo", "107wpfhx3", "Aylahope2016", "LuisCr7558", "9h_zErvic",
    "asfi3737sp", "Angieluz_16", "yoshi_msh", "noezrael18", "juleslikesblue8474", "Ivan74cm283", "jungjung2018", "tom116714",
}

local DustyChatLines = {
    "hey!", "Nigger", "SuperNigger", "Dont Like Nigger", "I am Niggerman", "suck my dick",
}

-- BODY ANCHORS
local DUSTY_BODY_ANCHORS = {
    KnifeBack = {
        Part = "UpperTorso",
        CFrame = CFrame.new(-0.10000, -0.20000, 0.65001,
            -0.08719, -0.70441, 0.70442,
            -0.00001, 0.70711, 0.70710,
            -0.99619, 0.06165, -0.06166),
    },
    KnifeBelt = {
        Part = "LowerTorso",
        CFrame = CFrame.new(-1.08698, -0.58522, 0.25826,
            -0.99900, 0.02982, 0.03346,
            0.01363, -0.50911, 0.86059,
            0.04270, 0.86018, 0.50819),
    },
    GunBelt = {
        Part = "LowerTorso",
        CFrame = CFrame.new(1.19473, -0.29272, 0.00098,
            1.00000, 0.00000, 0.00000,
            0.00000, -0.93970, -0.34200,
            0.00000, 0.34200, -0.93970),
    },
}

-- HELPER
local function DustyFlat(v) return Vector3.new(v.X, 0, v.Z) end
local function DustyUnit(v) return v.Magnitude > .001 and v.Unit or Vector3.zero end
local function DustyClip(str, count)
    str = tostring(str or ""):gsub("[%c]", " "):match("^%s*(.-)%s*$")
    if not utf8.len(str) then str = str:gsub("[\128-\255]", "?") end
    local idx = utf8.offset(str, count + 1)
    return idx and str:sub(1, idx - 1) or str
end
local function DustyShuffle(list)
    for i = #list, 2, -1 do
        local j = rng:NextInteger(1, i)
        list[i], list[j] = list[j], list[i]
    end
    return list
end

-- WEAPON BUILDER
local function DustyBuildCatalogModel(entry)
    if not entry or not entry.Model then return nil end
    local created = {}
    local function build(node, parent)
        local obj
        if node.Class == "MeshPart" then
            local ok, meshPart = pcall(function()
                return AssetService:CreateMeshPartAsync(
                    Content.fromUri(node.Props.MeshId),
                    {CollisionFidelity = Enum.CollisionFidelity.Box}
                )
            end)
            if not ok then
                obj = Instance.new("Part")
                obj.Size = node.Props.Size or Vector3.new(1,1,1)
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = Enum.MeshType.FileMesh
                mesh.MeshId = node.Props.MeshId or ""
                mesh.TextureId = node.Props.TextureID or ""
                mesh.Parent = obj
            else
                obj = meshPart
            end
        elseif node.Class == "Part" then
            obj = Instance.new("Part")
        elseif node.Class == "MeshPart" then
            obj = Instance.new("Part")
        elseif node.Class == "SpecialMesh" then
            obj = Instance.new("SpecialMesh")
        elseif node.Class == "Attachment" then
            obj = Instance.new("Attachment")
        elseif node.Class == "Decal" then
            obj = Instance.new("Decal")
        elseif node.Class == "SurfaceAppearance" then
            obj = Instance.new("SurfaceAppearance")
        elseif node.Class == "Model" then
            obj = Instance.new("Model")
        else
            obj = Instance.new("Folder")
        end

        table.insert(created, obj)
        obj.Name = node.Name or obj.Name

        if node.Props then
            for prop, value in pairs(node.Props) do
                local lower = string.lower(prop)

                if prop == "RelCF" then
                    if obj:IsA("Attachment") or obj:IsA("BasePart") then
                        obj.CFrame = value
                    end

                elseif prop == "MeshId" and obj:IsA("MeshPart") then

                elseif prop == "MeshId" and obj:IsA("SpecialMesh") then
                    obj.MeshId = value

                elseif lower == "textureid" then
                    pcall(function()
                        if obj:IsA("SpecialMesh") then
                            obj.TextureId = value
                        elseif obj:IsA("MeshPart") then
                            if value ~= "" then
                                obj.TextureID = value
                            end
                        end
                    end)

                else
                    pcall(function() obj[prop] = value end)
                end
            end
        end

        if parent then obj.Parent = parent end
        for _, child in ipairs(node.Children or {}) do
            build(child, obj)
        end
        return obj
    end

    local ok, root = pcall(build, entry.Model, nil)
    if not ok then
        for _, obj in ipairs(created) do pcall(function() obj:Destroy() end) end
        return nil
    end

    for _, obj in ipairs(root:GetDescendants()) do
        if obj:IsA("BasePart") then
            obj.Anchored = false
            obj.CanCollide = false
            obj.CanTouch = false
            obj.CanQuery = false
            obj.Massless = true
        elseif obj:IsA("LuaSourceContainer") or obj:IsA("Tool") then
            obj:Destroy()
        end
    end
    if root:IsA("BasePart") then
        root.Anchored = false
        root.CanCollide = false
        root.CanTouch = false
        root.CanQuery = false
        root.Massless = true
    end
    return root
end

-- Build from Visual
local function DustyBuildVisualsModel(entry)
    if not entry then return nil end
    local part = Instance.new("Part")
    part.Size = Vector3.new(0.4, 3, 0.8)
    part.Color = entry.Color or Color3.fromRGB(163,162,165)
    part.Material = entry.Material or Enum.Material.Plastic
    part.Transparency = entry.Transparency or 0
    part.Reflectance = entry.Reflectance or 0
    part.Anchored = false
    part.CanCollide = false
    part.CanTouch = false
    part.CanQuery = false
    part.Massless = true
    part.Name = entry.Type == "Knife" and "KnifeDisplay" or "GunDisplay"

    local mesh = Instance.new("SpecialMesh")
    mesh.MeshType = Enum.MeshType.FileMesh
    mesh.MeshId = entry.MeshId or ""
    mesh.TextureId = entry.TextureId or ""
    mesh.Scale = entry.Scale or Vector3.new(1, 1, 1)
    mesh.Offset = entry.Offset or Vector3.new(0, 0, 0)
    mesh.VertexColor = entry.VertexColor or Vector3.new(1, 1, 1)
    mesh.Parent = part

    local attach = Instance.new("Attachment")
    attach.Name = "CustomAttachment"
    if entry.AttachmentPosition or entry.AttachmentOrientation then
        local pos = entry.AttachmentPosition or Vector3.zero
        local orient = entry.AttachmentOrientation or Vector3.zero
        attach.CFrame = CFrame.new(pos) * CFrame.fromOrientation(
            math.rad(orient.X), math.rad(orient.Y), math.rad(orient.Z)
        )
    end
    attach.Parent = part
    return part
end

-- Resolve weapon by ID > {Model, Type, Source}
local function DustyResolveWeapon(itemId)
    local catalog = DustyDB_Catalog[itemId]
    if catalog then
        local model = DustyBuildCatalogModel(catalog)
        if model then
            return {Model = model, Type = catalog.Type, Source = "catalog", ItemId = itemId}
        end
    end

    local visuals = DustyDB_Visuals[itemId]
    if visuals then
        local model = DustyBuildVisualsModel(visuals)
        if model then
            return {Model = model, Type = visuals.Type, Source = "visuals", ItemId = itemId}
        end
    end
    return nil
end

-- Cache pool weapon
local DustyWeaponPools = {Knives = {}, Guns = {}, _built = false}
local function DustyBuildWeaponPools()
    if DustyWeaponPools._built then return end
    DustyWeaponPools._built = true
    DustyWeaponPools.Knives = {}
    DustyWeaponPools.Guns = {}
    local seenKnives, seenGuns = {}, {}

    for itemId, entry in pairs(DustyDB_Catalog) do
        if entry.Type == "Knife" and not seenKnives[itemId] then
            seenKnives[itemId] = true
            table.insert(DustyWeaponPools.Knives, itemId)
        elseif entry.Type == "Gun" and not seenGuns[itemId] then
            seenGuns[itemId] = true
            table.insert(DustyWeaponPools.Guns, itemId)
        end
    end

    for itemId, entry in pairs(DustyDB_Visuals) do
        if entry.Type == "Knife" and not seenKnives[itemId] then
            seenKnives[itemId] = true
            table.insert(DustyWeaponPools.Knives, itemId)
        elseif entry.Type == "Gun" and not seenGuns[itemId] then
            seenGuns[itemId] = true
            table.insert(DustyWeaponPools.Guns, itemId)
        end
    end
end

-- BODY ATTACH
local function DustyAttachToBody(weaponRoot, bodyPart, anchorCFrame)
    if not weaponRoot or not weaponRoot:IsA("BasePart") or not bodyPart then
        return false
    end

    local customAttach = weaponRoot:FindFirstChild("CustomAttachment")
        or weaponRoot:FindFirstChildWhichIsA("Attachment", true)

    local attachCFrame = customAttach and customAttach.CFrame or CFrame.new()
    local targetCFrame = bodyPart.CFrame * anchorCFrame * attachCFrame:Inverse()

    local delta = targetCFrame * weaponRoot.CFrame:Inverse()
    weaponRoot.CFrame = targetCFrame
    for _, child in ipairs(weaponRoot:GetDescendants()) do
        if child:IsA("BasePart") then
            child.CFrame = delta * child.CFrame
        end
    end

    local weld = Instance.new("WeldConstraint")
    weld.Part0 = bodyPart
    weld.Part1 = weaponRoot
    weld.Parent = weaponRoot

    for _, child in ipairs(weaponRoot:GetDescendants()) do
        if child:IsA("BasePart") then
            local childWeld = Instance.new("WeldConstraint")
            childWeld.Part0 = weaponRoot
            childWeld.Part1 = child
            childWeld.Parent = child
        end
    end
    return true
end

-- Attach weapon to NPC
local function DustyAttachWeaponToNPC(record, weaponResult)
    if not record or not record.Model or not weaponResult then return false end
    local weaponType = weaponResult.Type
    local anchorCfg = nil

    if weaponType == "Knife" then
        anchorCfg = DUSTY_BODY_ANCHORS.KnifeBack
    elseif weaponType == "Gun" then
        anchorCfg = DUSTY_BODY_ANCHORS.GunBelt
    else
        return false
    end

    local bodyPart = record.Model:FindFirstChild(anchorCfg.Part)
    if not bodyPart then
        return false
    end

    weaponResult.Model.Parent = record.Model
    weaponResult.Model:SetAttribute("DustyWeapon", true)
    weaponResult.Model:SetAttribute("DustyWeaponType", weaponType)

    return DustyAttachToBody(weaponResult.Model, bodyPart, anchorCfg.CFrame)
end

-- AUTO ASSIGN WEAPON
local function DustyAutoAssignWeapons(record)
    DustyBuildWeaponPools()
    if #DustyWeaponPools.Knives == 0 and #DustyWeaponPools.Guns == 0 then
        return
    end

    record.Weapons = record.Weapons or {}

    if #DustyWeaponPools.Knives > 0 then
        local knifeId = DustyWeaponPools.Knives[rng:NextInteger(1, #DustyWeaponPools.Knives)]
        local knifeResult = DustyResolveWeapon(knifeId)
        if knifeResult then
            DustyAttachWeaponToNPC(record, knifeResult)
            record.Weapons.Knife = knifeId
        end
    end

    if #DustyWeaponPools.Guns > 0 then
        local gunId = DustyWeaponPools.Guns[rng:NextInteger(1, #DustyWeaponPools.Guns)]
        local gunResult = DustyResolveWeapon(gunId)
        if gunResult then
            DustyAttachWeaponToNPC(record, gunResult)
            record.Weapons.Gun = gunId
        end
    end
end

-- NPC CLASS
local DustyNPCClass = {}
DustyNPCClass.__index = DustyNPCClass
function DustyNPCClass.new()
    local self = setmetatable({}, DustyNPCClass)
    self.Active = true
    self.Records = {}
    self.Pending = {}
    self.Templates = {}
    self.TemplateOrder = {}
    self.Sequence = 0
    self.Generation = 0
    self.PendingCount = 0
    self.Limit = 12
    self.Mode = "Follow"
    self.Spread = 5
    self.ChatEnabled = true
    self.NamesEnabled = true
    self.Paused = false
    self.AnimationBag = {}
    self.ChatNext = os.clock() + 8
    self.PlayerPositions = {}
    self.Folder = Instance.new("Folder")
    self.Folder.Name = "DustyNPCs"
    self.Folder:SetAttribute("DustyClientOnly", true)
    self.Folder.Parent = workspace
    return self
end

function DustyNPCClass:Count()
    local n = 0
    for _ in pairs(self.Records) do n += 1 end
    return n
end

function DustyNPCClass:List()
    local list = {}
    for _, r in pairs(self.Records) do table.insert(list, r) end
    table.sort(list, function(a, b) return a.Id < b.Id end)
    return list
end

function DustyNPCClass:HasUserId(userId)
    if not userId then return false end
    for _, r in pairs(self.Records) do
        if r.UserId == userId then return true end
    end
    for r in pairs(self.Pending) do
        if r.UserId == userId then return true end
    end
    return false
end

function DustyNPCClass:GetUsedUserIds()
    local ids = {}
    for _, r in pairs(self.Records) do
        if r.UserId then ids[r.UserId] = true end
    end
    for r in pairs(self.Pending) do
        if r.UserId then ids[r.UserId] = true end
    end
    return ids
end

function DustyNPCClass:RayParams()
    local now = os.clock()
    if self.QueryParams and now < (self.QueryExpires or 0) then
        return self.QueryParams
    end
    local ignored = {self.Folder}
    for _, p in ipairs(Players:GetPlayers()) do
        if p.Character then table.insert(ignored, p.Character) end
    end
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = ignored
    params.RespectCanCollide = true
    params.IgnoreWater = true
    self.QueryParams, self.QueryExpires = params, now + .2
    return params
end

function DustyNPCClass:Ground(position, drop)
    local hit = workspace:Raycast(
        position + Vector3.new(0, 5, 0),
        Vector3.new(0, -(drop or 18), 0),
        self:RayParams()
    )
    if hit and hit.Normal.Y > 0.55 then return hit.Position end
end

function DustyNPCClass:SafePosition(origin, radius)
    for attempt = 1, 24 do
        local angle = rng:NextNumber(0, math.pi * 2)
        local r = attempt <= 16
            and rng:NextNumber(math.max(3, radius * 0.6), radius)
            or rng:NextNumber(2.5, math.max(3, radius * .65))
        local floor = self:Ground(
            origin + Vector3.new(math.cos(angle) * r, 0, math.sin(angle) * r), 22
        )
        if floor and math.abs(floor.Y - origin.Y) < 11 then
            local free = true
            for _, other in pairs(self.Records) do
                if DustyFlat(other.Root.Position - floor).Magnitude < 4.2 then
                    free = false; break
                end
            end
            if free then
                local ceiling = workspace:Raycast(
                    floor + Vector3.new(0, 0.3, 0),
                    Vector3.new(0, 5.5, 0),
                    self:RayParams()
                )
                if not ceiling then return floor end
            end
        end
    end
end

function DustyNPCClass:PlayerRoot()
    local char = localPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    return hum and hum.Health > 0 and char:FindFirstChild("HumanoidRootPart") or nil
end

function DustyNPCClass:TakeAnimationSet()
    if #self.AnimationBag == 0 then
        for _, set in ipairs(DustyAnimationSets) do
            table.insert(self.AnimationBag, set)
        end
        DustyShuffle(self.AnimationBag)
    end
    return table.remove(self.AnimationBag)
end

function DustyNPCClass:Connect(signal, callback)
    return DustyRuntime.connect(signal, function(...)
        if self.Active then callback(...) end
    end)
end

function DustyNPCClass:ResolveAvatar(value)
    local str = tostring(value or ""):match("^%s*(.-)%s*$")
    if str == "" then
        str = DustyRandomNames[rng:NextInteger(1, #DustyRandomNames)]
    end
    local id = tonumber(str)
    if id then
        assert(id > 0 and id % 1 == 0, "Enter a valid positive user ID.")
        return id
    end
    assert(str:match("^[%w_]+$") and #str <= 20, "Enter a username or user ID.")
    return Players:GetUserIdFromNameAsync(str)
end

function DustyNPCClass:LoadAvatar(userId, record)
    local template = self.Templates[userId]
    if template then return template:Clone() end
    local description = Players:GetHumanoidDescriptionFromUserIdAsync(userId)
    if record.Disposed or not self.Active then
        description:Destroy(); error("Spawn cancelled.")
    end
    local ok, model = pcall(function()
        return Players:CreateHumanoidModelFromDescriptionAsync(
            description, Enum.HumanoidRigType.R15
        )
    end)
    description:Destroy()

    if not ok then error("Avatar could not load: " .. tostring(model)) end
    if record.Disposed or not self.Active then
        model:Destroy(); error("Spawn cancelled.")
    end

    for _, item in ipairs(model:GetDescendants()) do
        for _, tag in ipairs(CollectionService:GetTags(item)) do
            CollectionService:RemoveTag(item, tag)
        end
        if item:IsA("LuaSourceContainer") or item:IsA("Tool") then
            item:Destroy()
        end
    end
    model.Archivable = true
    if self.Templates[userId] then
        model:Destroy()
        return self.Templates[userId]:Clone()
    end
    self.Templates[userId] = model
    table.insert(self.TemplateOrder, userId)
    if #self.TemplateOrder > 12 then
        local evicted = table.remove(self.TemplateOrder, 1)
        self.Templates[evicted]:Destroy()
        self.Templates[evicted] = nil
    end
    return model:Clone()
end

local function DustyLoadTrack(record, id, priority, looped)
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://" .. id
    local ok, track = pcall(function()
        return record.Animator:LoadAnimation(anim)
    end)
    anim:Destroy()
    if ok and track then
        track.Priority, track.Looped = priority, looped
        return track
    end
end

function DustyNPCClass:Spawn(avatar, displayName)
    if not self.Active then return false, "Controller closed." end
    if self:Count() + self.PendingCount >= self.Limit then
        return false, "CANNOT SPAWN 12+, MAX 12"
    end
    if not self:PlayerRoot() then
        return false, "Wait for your character to spawn."
    end
    self.Sequence += 1
    self.PendingCount += 1
    local generation = self.Generation
    local record = {
        Id = self.Sequence,
        Connections = {},
        Tracks = {},
        Generation = generation,
    }
    self.Pending[record] = true
    local ok, err = xpcall(function()
        record.UserId = self:ResolveAvatar(avatar)
        
        if type(avatar) == "string" and avatar ~= "" and not tonumber(avatar) then
            record.Username = avatar
        end
        assert(generation == self.Generation and not record.Disposed and self.Active,
            "Spawn cancelled.")
        local model = self:LoadAvatar(record.UserId, record)
        if generation ~= self.Generation or record.Disposed or not self.Active then
            model:Destroy(); error("Spawn cancelled.")
        end
        record.Model    = model
        record.Root     = assert(model:FindFirstChild("HumanoidRootPart"), "No root.")
        record.Humanoid = assert(model:FindFirstChildOfClass("Humanoid"), "No humanoid.")
        record.Head     = assert(model:FindFirstChild("Head"), "No head.")
        local playerRoot = assert(self:PlayerRoot(), "Wait for your character.")
        local floor = assert(
            self:SafePosition(playerRoot.Position, 8 + self:Count() * 0.45),
            "No safe floor nearby."
        )

        record.Name = DustyClip(displayName, 24)
        if record.Name == "" then
            record.Name = DustyRandomNames[rng:NextInteger(1, #DustyRandomNames)]
                .. tostring(rng:NextInteger(10, 99))
        end
        record.Profile      = DustyProfiles[(record.Id - 1) % #DustyProfiles + 1]
        record.AnimationSet = self:TakeAnimationSet()
        record.Speed          = record.Profile.Speed + rng:NextNumber(-0.5, 0.5)
        record.Phase          = rng:NextNumber(0, 10)
        record.Side           = (record.Id % 2 == 0 and 1 or -1) * rng:NextNumber(.45, 1.1)
        record.Back           = rng:NextNumber(.5, .9)
        record.Deadzone       = rng:NextNumber(2, 3.5)
        record.Velocity       = Vector3.zero
        record.AnimationsEnabled = true
        record.FollowActive   = false
        record.LastGoalPos    = nil
        record.NextGaze       = os.clock() + rng:NextNumber(.5, 2)
        record.NextIdleStyle  = os.clock() + rng:NextNumber(8, 15)
        record.NextDecision   = os.clock() + rng:NextNumber(.2, 1)
        record.NextIdle       = os.clock() + rng:NextNumber(3, 8)
        record.LastProgress   = floor
        record.LastProgressAt = os.clock()
        record.Home           = floor
        record.Mode           = self.Mode
        record.Height         = record.Humanoid.HipHeight + record.Root.Size.Y / 2
        record.BodyRadius     = math.clamp(
            math.max(record.Root.Size.X, record.Root.Size.Z) * .55, .75, 1.3
        )
        record.NextJump, record.Airborne, record.VerticalVelocity = 0, false, 0
        record.Gesture, record.GestureUntil = nil, 0
        record.Animation, record.IdleVariant = nil, nil
        model.Name = record.Name
        model.PrimaryPart = record.Root
        model:SetAttribute("DustyNPC", true)
        model:SetAttribute("AvatarUserId", record.UserId)
        record.Humanoid.DisplayName          = record.Name
        record.Humanoid.DisplayDistanceType  = Enum.HumanoidDisplayDistanceType.Viewer
        record.Humanoid.NameDisplayDistance  = self.NamesEnabled and 100 or 0
        record.Humanoid.HealthDisplayType    = Enum.HumanoidHealthDisplayType.AlwaysOff
        record.Humanoid.NameOcclusion = Enum.NameOcclusion.NoOcclusion
        record.Humanoid.BreakJointsOnDeath   = false
        record.Humanoid.AutoRotate           = true
        record.Humanoid.WalkSpeed            = record.Speed

        for _, part in ipairs(model:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Anchored = false
                part.CanTouch = false
                part.CanQuery = false
                part.Massless = true
                part.CanCollide = false
                pcall(function()
                    part.CollisionGroup = DUSTY_COLLISION_GROUP
                end)
            end
        end
        record.Root.Massless = false
        record.Root.CanCollide = true
        record.Root.Anchored = true
        model:PivotTo(
            CFrame.new(floor + Vector3.new(0, record.Height + 0.1, 0))
            * playerRoot.CFrame.Rotation
        )
        model.Parent = self.Folder
        record.Animator = record.Humanoid:FindFirstChildOfClass("Animator")
            or Instance.new("Animator", record.Humanoid)

        record.Tracks.Idle  = DustyLoadTrack(record, record.AnimationSet.Idle,  Enum.AnimationPriority.Idle, true)
        record.Tracks.Idle2 = DustyLoadTrack(record, record.AnimationSet.Idle2, Enum.AnimationPriority.Idle, true)
        record.Tracks.Walk  = DustyLoadTrack(record, record.AnimationSet.Walk,  Enum.AnimationPriority.Movement, true)
        record.Tracks.Jump  = DustyLoadTrack(record, DustySharedAnims.Jump,  Enum.AnimationPriority.Movement, false)
        record.Tracks.Fall  = DustyLoadTrack(record, DustySharedAnims.Fall,  Enum.AnimationPriority.Movement, true)
        record.Tracks.Wave  = DustyLoadTrack(record, DustySharedAnims.Wave,  Enum.AnimationPriority.Action, false)
        record.Tracks.Point = DustyLoadTrack(record, DustySharedAnims.Point, Enum.AnimationPriority.Action, false)
        record.Tracks.Cheer = DustyLoadTrack(record, DustySharedAnims.Cheer, Enum.AnimationPriority.Action, false)
        record.Tracks.Laugh = DustyLoadTrack(record, DustySharedAnims.Laugh, Enum.AnimationPriority.Action, false)
        record.Footsteps = Instance.new("Sound", record.Root)
        record.Footsteps.Name = "DustyFootsteps"
        record.Footsteps.SoundId = "rbxasset://sounds/action_footsteps_plastic.mp3"
        record.Footsteps.Looped = true
        record.Footsteps.Volume = 0.12
        record.Footsteps.RollOffMinDistance = 3
        record.Footsteps.RollOffMaxDistance = 28
        record.Footsteps.RollOffMode = Enum.RollOffMode.InverseTapered

        record.Neck = model:FindFirstChild("Neck", true)
        if record.Neck and record.Neck:IsA("Motor6D") then
            record.NeckC0 = record.Neck.C0
        else
            record.Neck = nil
        end

        record.NameTag = self:MakeNameTag(record)
        DustyAutoAssignWeapons(record)
        record.Root.Anchored = false

        pcall(function()
            record.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            record.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
            record.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
            record.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
        end)

        self.Records[record.Id] = record
        self.Pending[record] = nil

        record.MovementThread = DustyRuntime.spawnJob(function()
            self:RunMovement(record)
        end)

        table.insert(record.Connections, self:Connect(model.Destroying, function()
            self:Remove(record)
        end))
        table.insert(record.Connections, self:Connect(record.Humanoid.Died, function()
            self:Remove(record)
        end))
    end, debug.traceback)

    if generation == self.Generation then
        self.PendingCount = math.max(0, self.PendingCount - 1)
    end

    if not ok then
        self:Remove(record)
        return false, tostring(err)
    end
    return true, record
end

function DustyNPCClass:SpawnGroup(count, avatar, name)
    count = math.clamp(math.floor(tonumber(count) or 5), 1, self.Limit)
    DustyRuntime.spawnJob(function()
        for _ = 1, count do
            if not self.Active or not DustyRuntime.Active then break end
            local ok = self:Spawn(avatar, name)
            if not ok then break end
            task.wait(.15)
        end
    end)
    return true
end

-- Cache name
local DustyUserIdCache = {}

local function DustyResolveNameCached(name)
    if DustyUserIdCache[name] ~= nil then
        return DustyUserIdCache[name]
    end
    local ok, uid = pcall(function()
        local id = tonumber(name)
        return id or Players:GetUserIdFromNameAsync(name)
    end)
    if ok and uid then
        DustyUserIdCache[name] = uid
        return uid
    end
    DustyUserIdCache[name] = false
    return false
end

function DustyNPCClass:SpawnRandom()
    if not self.Active then return false, "Controller closed." end
    if self:Count() + self.PendingCount >= self.Limit then
        return false, "CANNOT SPAWN 12+, MAX 12"
    end

    local used = self:GetUsedUserIds()
    local pool = {}
    for _, name in ipairs(DustyRandomNames) do
        table.insert(pool, name)
    end

    DustyShuffle(pool)
    local lastErr
    local tries = math.min(10, #pool)
    for i = 1, tries do
        local name = pool[i]
        local uid = DustyResolveNameCached(name)

        if uid and not used[uid] then
            local ok, res, err = pcall(function()
                return self:Spawn(name, name)
            end)
            if ok and res == true then
                return true, err
            end
            lastErr = err or (not ok and res) or "unknown"
        end
    end
    return false, "Gagal spawn random: " .. tostring(lastErr or "no unique name found")
end

function DustyNPCClass:Remove(record)
    if type(record) == "number" then record = self.Records[record] end
    if not record or record.Disposed then return end
    record.Disposed = true

    self.Records[record.Id] = nil
    self.Pending[record] = nil

    if record.MovementThread then
        pcall(task.cancel, record.MovementThread)
        record.MovementThread = nil
    end
    for _, conn in ipairs(record.Connections or {}) do
        pcall(function() conn:Disconnect() end)
    end
    for _, track in pairs(record.Tracks or {}) do
        pcall(function() track:Stop(0); track:Destroy() end)
    end
    if record.Bubble and record.Bubble.Gui then
        pcall(function() record.Bubble.Gui:Destroy() end)
    end
    if record.NameTag and record.NameTag.Gui then
        pcall(function() record.NameTag.Gui:Destroy() end)
    end
    if record.Model then pcall(function() record.Model:Destroy() end) end
end

function DustyNPCClass:Clear()
    self.Generation += 1
    self.PendingCount = 0
    local pending = {}
    for r in pairs(self.Pending) do table.insert(pending, r) end
    for _, r in ipairs(pending) do self:Remove(r) end
    for _, r in ipairs(self:List()) do self:Remove(r) end
end

function DustyNPCClass:Recall()
    local root = self:PlayerRoot()
    if not root then return false end
    for _, r in pairs(self.Records) do
        local floor = self:SafePosition(root.Position, 8 + self:Count() * 0.5)
        if floor then
            r.Goal, r.MoveTarget = nil, nil
            r.Airborne, r.VerticalVelocity = false, 0
            r.Velocity, r.ActualSpeed = Vector3.zero, 0
            r.Model:PivotTo(
                CFrame.new(floor + Vector3.new(0, r.Height + 0.2, 0))
                * root.CFrame.Rotation
            )
            r.Home = floor
            r.LastProgress = floor
            r.LastProgressAt = os.clock()
            r.NextDecision = os.clock() + rng:NextNumber(.4, 1.6)
        end
    end
    return true
end

function DustyNPCClass:Steer(record, direction)
    local current = record.Root.Position
    local avoidance = Vector3.zero
    for _, other in pairs(self.Records) do
        if other ~= record and not other.Disposed
            and math.abs(other.Root.Position.Y - current.Y) < 4 then
            local away = DustyFlat(current - other.Root.Position)
            local distance = away.Magnitude
            local personal = record.BodyRadius + other.BodyRadius + 0.4
            if distance < personal then
                local push = distance > .05 and away.Unit
                    or Vector3.new(record.Id < other.Id and -1 or 1, 0, 0)
                avoidance += push * math.clamp(
                    (personal - distance) / personal, 0, 1
                ) * 1.1
            end
            if distance < 4 and direction:Dot(DustyUnit(-away)) > .7 then
                local otherDir = DustyUnit(other.Velocity or Vector3.zero)
                if otherDir.Magnitude < .2 or direction:Dot(otherDir) < -.2 then
                    avoidance += Vector3.new(-direction.Z, 0, direction.X)
                        * (4 - distance) * .12
                end
            end
        end
    end

    for _, position in ipairs(self.PlayerPositions or {}) do
        if math.abs(position.Y - current.Y) < 4 then
            local away = DustyFlat(current - position)
            if away.Magnitude < 2.8 then
                avoidance += DustyUnit(away) * math.max(0, 2.2 - away.Magnitude) * .35
            end
        end
    end
    if direction.Magnitude == 0 then return Vector3.zero end
    return DustyUnit(direction + avoidance)
end

function DustyNPCClass:Move(record, dt, freeze)
    local current = record.Root.Position
    local target = not freeze and record.MoveTarget or nil
    local horizontal = target and DustyFlat(target - current) or Vector3.zero
    local distance = horizontal.Magnitude
    local direction = distance > .35 and horizontal.Unit or Vector3.zero
    local steer = self:Steer(record, direction)
    local speed = record.Humanoid.WalkSpeed

    if not record.Waypoints or record.Waypoint == #record.Waypoints then
        speed = math.min(speed, math.sqrt(math.max(0, distance - .3) * 48))
    end

    local requested = steer * speed
    local velocity = record.Velocity or Vector3.zero
    local change = requested - velocity
    local rate = (requested.Magnitude < velocity.Magnitude or requested:Dot(velocity) < 0)
        and 40 or record.Profile.Acceleration
    velocity += DustyUnit(change) * math.min(change.Magnitude, rate * dt)
    if freeze then velocity = Vector3.zero end

    local step = velocity * dt
    if direction.Magnitude > 0 and step:Dot(direction) > distance then
        step = direction * distance
    end

    local params = self:RayParams()
    local body = Vector3.new(
        record.BodyRadius * 1.7,
        math.max(2, record.Height * 1.15),
        record.BodyRadius * 1.7
    )

    local function traversable(delta)
        local floor = self:Ground(
            current + delta,
            record.Height + (record.Airborne and 16 or 9)
        )
        if not floor or floor.Y + record.Height - current.Y > 3.2 then return nil end
        local hit = delta.Magnitude > .001
            and workspace:Blockcast(CFrame.new(current), body, delta, params)
            or nil
        if hit then return nil, hit end

        for _, other in pairs(self.Records) do
            if other ~= record and math.abs(other.Root.Position.Y - current.Y) < 4 then
                local relative = DustyFlat(current - other.Root.Position)
                local before = relative.Magnitude
                local fraction = delta.Magnitude > .001
                    and math.clamp(-relative:Dot(delta) / delta:Dot(delta), 0, 1)
                    or 0
                local closest = (relative + delta * fraction).Magnitude
                if closest < math.min(record.BodyRadius + other.BodyRadius + .25, before) - .0001 then
                    return nil
                end
            end
        end
        for _, position in ipairs(self.PlayerPositions or {}) do
            if math.abs(position.Y - current.Y) < 4 then
                local relative = DustyFlat(current - position)
                local before = relative.Magnitude
                local fraction = delta.Magnitude > .001
                    and math.clamp(-relative:Dot(delta) / delta:Dot(delta), 0, 1)
                    or 0
                local closest = (relative + delta * fraction).Magnitude
                if closest < math.min(record.BodyRadius + 0.3, before) - .0001 then
                    return nil
                end
            end
        end
        return floor
    end

    local floor, hit = traversable(step)
    if not floor and step.Magnitude > .001 then
        local x, z = Vector3.new(step.X, 0, 0), Vector3.new(0, 0, step.Z)
        if math.abs(step.X) > math.abs(step.Z) then z, x = x, z end
        local alternative = traversable(z)
        if alternative and z.Magnitude > .005 then
            floor, step = alternative, z
        else
            alternative = traversable(x)
            if alternative and x.Magnitude > .005 then
                floor, step = alternative, x
            end
        end
        if not floor then
            if hit and direction.Magnitude > 0 and not record.Airborne then
                local ahead   = current + direction * 2.8
                local low     = workspace:Raycast(
                    current - Vector3.new(0, record.Height - .5, 0),
                    direction * 2.8, params
                )
                local high    = workspace:Raycast(
                    current + Vector3.new(0, 1.5, 0),
                    direction * 2.8, params
                )
                local landing = self:Ground(ahead, record.Height + 8)
                if low and not high and landing
                    and landing.Y - current.Y + record.Height < 3.2 then
                    self:Jump(record)
                end
            end
            step, velocity = Vector3.zero, Vector3.zero
        end
    end

    floor = floor or self:Ground(current, record.Height + (record.Airborne and 16 or 9))

    local moved = current + step
    if floor then
        local floorY = floor.Y + record.Height
        if record.Airborne then
            record.VerticalVelocity = (record.VerticalVelocity or 0) - 75 * dt
            local y = current.Y + record.VerticalVelocity * dt
            if y <= floorY and record.VerticalVelocity <= 0 then
                y = floorY
                record.Airborne, record.VerticalVelocity = false, 0
            end
            moved = Vector3.new(moved.X, y, moved.Z)
        else
            moved = Vector3.new(
                moved.X,
                current.Y + math.clamp(floorY - current.Y, -22 * dt, 22 * dt),
                moved.Z
            )
        end
    else
        moved, velocity = current, Vector3.zero
    end

    record.Velocity = velocity
    local actual = DustyFlat(moved - current)
    record.ActualSpeed = actual.Magnitude / math.max(dt, .001)
    local rotation = record.Root.CFrame.Rotation
    if actual.Magnitude > .015 then
        rotation = rotation:Lerp(
            CFrame.lookAt(Vector3.zero, actual.Unit).Rotation,
            1 - math.exp(-record.Profile.Turn * dt)
        )
    end
    record.Root.CFrame = CFrame.new(moved) * rotation
    if distance < .55 then record.MoveTarget = nil end
end

function DustyNPCClass:RunMovement(record)
    local path = PathfindingService:CreatePath({
        AgentRadius = 2.2,
        AgentHeight = 5,
        AgentCanJump = true,
        AgentJumpHeight = 7,
        AgentMaxSlope = 50,
        WaypointSpacing = 4,
    })

    while self.Active and DustyRuntime.Active
        and not record.Disposed
        and record.Model and record.Model.Parent
        and record.Humanoid.Health > 0 do
        if self.Paused or record.Paused or not record.MoveTarget then
            if record.Humanoid.MoveDirection.Magnitude > 0 then
                record.Humanoid:MoveTo(record.Root.Position)
            end
            task.wait(0.1)
            continue
        end

        local target = record.MoveTarget
        local success = pcall(function()
            path:ComputeAsync(record.Root.Position, target)
        end)

        if success and path.Status == Enum.PathStatus.Success then
            local waypoints = path:GetWaypoints()

            for _, waypoint in ipairs(waypoints) do
                if record.Disposed or not record.Model.Parent then
                    break
                end
                if not record.MoveTarget
                    or (record.MoveTarget - target).Magnitude > 5 then
                    break
                end
                if (record.Root.Position - target).Magnitude
                    < record.Deadzone * 1.5 then
                    break
                end

                if waypoint.Action == Enum.PathWaypointAction.Jump then
                    record.Humanoid.Jump = true
                end

                record.Humanoid:MoveTo(waypoint.Position)

                local reached = false
                local conn
                conn = record.Humanoid.MoveToFinished:Connect(function()
                    reached = true
                    if conn then conn:Disconnect() conn = nil end
                end)

                local timeout = tick() + 2
                while not reached and tick() < timeout
                    and not record.Disposed
                    and record.Model.Parent do
                    task.wait(0.05)
                end
                if conn then conn:Disconnect() end

                if not reached then break end
            end
        else
            record.Humanoid:MoveTo(target)
            task.wait(0.3)
        end

        task.wait(0.12)
    end
end

function DustyNPCClass:Jump(record)
    if record.Airborne or os.clock() < (record.NextJump or 0) then return false end
    if not self:Ground(record.Root.Position, record.Height + 6) then return false end
    record.Airborne, record.VerticalVelocity = true, 26
    record.NextJump = os.clock() + 1.2
    return true
end

function DustyNPCClass:ChooseGaze(record, now, root)
    if now < (record.NextGaze or 0) then return end
    record.NextGaze = now + rng:NextNumber(1.3, 3.8)
    local nearby = {}
    for _, other in pairs(self.Records) do
        if other ~= record
            and (other.Root.Position - record.Root.Position).Magnitude < 14 then
            table.insert(nearby, other)
        end
    end
    if #nearby > 0 and rng:NextNumber() < record.Profile.Social then
        record.LookAt = nearby[rng:NextInteger(1, #nearby)].Head.Position
    elseif root and (root.Position - record.Root.Position).Magnitude < 18
        and rng:NextNumber() < .6 then
        record.LookAt = root.Position + Vector3.new(0, 1.5, 0)
    else
        local angle = rng:NextNumber(-.65, .65)
        record.LookAt = record.Head.Position
            + record.Root.CFrame:VectorToWorldSpace(
                Vector3.new(math.sin(angle) * 8, rng:NextNumber(-.6, .5), -8)
            )
    end
end

function DustyNPCClass:Animate(record, now, root, dt)
    local speed = DustyFlat(record.Root.AssemblyLinearVelocity).Magnitude
    if record.Footsteps then
        local audible = record.AnimationsEnabled and speed > 1 and not record.Airborne
        record.Footsteps.PlaybackSpeed = math.clamp(speed / 13, .7, 1.45)
        if audible and not record.Footsteps.IsPlaying then
            record.Footsteps:Play()
        elseif not audible and record.Footsteps.IsPlaying then
            record.Footsteps:Stop()
        end
    end
    if not record.AnimationsEnabled then return end
    local name
    if record.Airborne then
        name = (record.VerticalVelocity or 0) > 0 and "Jump" or "Fall"
    elseif speed > .65 then
        name = "Walk"
    else
        name = "Idle"
    end
    if name == "Idle" then
        if now > record.NextIdleStyle then
            record.NextIdleStyle = now + rng:NextNumber(8, 19)
            record.IdleVariant = record.IdleVariant == "Idle2" and "Idle" or "Idle2"
        end
        name = record.IdleVariant or "Idle"
    end

    if record.Animation ~= name then
        for _, key in ipairs({"Idle", "Idle2", "Walk", "Jump", "Fall"}) do
            local track = record.Tracks[key]
            if track and key ~= name then track:Stop(.2) end
        end
        local track = record.Tracks[name]
        if track then
            track:Play(.2, 1, 1)
            if (name == "Idle" or name == "Idle2") and track.Length > 0 then
                track.TimePosition = rng:NextNumber(0, track.Length * .75)
            end
        end
        record.Animation = name
    end
    if name == "Walk" and record.Tracks.Walk then
        record.Tracks.Walk:AdjustSpeed(math.clamp(speed / 13, .35, 1.65))
    end

    self:ChooseGaze(record, now, root)
    if record.Neck and record.Neck.Parent and record.LookAt then
        local relative = record.Root.CFrame:PointToObjectSpace(record.LookAt)
        local yaw = math.clamp(math.atan2(-relative.X, -relative.Z), -.55, .55)
        local pitch = math.clamp(
            math.atan2(relative.Y - record.Height * .55,
                math.max(1, DustyFlat(relative).Magnitude)), -.2, .2
        )
        record.Neck.C0 = record.Neck.C0:Lerp(
            record.NeckC0 * CFrame.Angles(pitch, yaw, 0),
            1 - math.exp(-7 * (dt or 1/30))
        )
    end
end

function DustyNPCClass:Step(now)
    if not self.Active then return end
    local dt = math.clamp(now - (self.LastStep or now - 1/30), .001, .1)
    self.LastStep = now
    local root = self:PlayerRoot()
    self.PlayerPositions = {}
    if root then table.insert(self.PlayerPositions, root.Position) end
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= localPlayer then
            local char = p.Character
            local otherRoot = char and char:FindFirstChild("HumanoidRootPart")
            if otherRoot then table.insert(self.PlayerPositions, otherRoot.Position) end
        end
    end

    for _, record in pairs(self.Records) do
        if not record.Model.Parent or record.Humanoid.Health <= 0 then
            self:Remove(record); continue
        end
        if not root or self.Paused or record.Paused then
            record.MoveTarget = nil
            record.ActualSpeed = 0
            record.Goal = nil
            self:Animate(record, now, root, dt)
            continue
        end
        if record.Root.Position.Y < workspace.FallenPartsDestroyHeight + 30
            or record.Root.Position.Y < root.Position.Y - 65 then
            self:Recall(); break
        end
        local position = record.Root.Position
        if DustyFlat(position - record.LastProgress).Magnitude > 1.2 then
            record.LastProgress = position
            record.LastProgressAt = now
        end

        self:Animate(record, now, root, dt)

        if record.Goal and DustyFlat(record.Goal - position).Magnitude > 3
            and now - record.LastProgressAt > 4 then
            record.Goal, record.MoveTarget = nil, nil
            record.LastGoalPos = nil
            record.NextDecision = now + rng:NextNumber(.6, 1.5)
            continue
        end

        if now < record.NextDecision then continue end
        record.NextDecision = now + record.Profile.Reaction + rng:NextNumber(.1, .3)
        if record.Mode == "Stay" then
            record.MoveTarget = nil
            if now > record.NextIdle then
                record.NextIdle = now + rng:NextNumber(8, 18)
                if rng:NextNumber() < .2 then self:Emote(record) end
            end
            continue
        end

        local desired
        if record.Mode == "Roam" then
            if now > record.NextIdle then
                desired = self:SafePosition(record.Home, 12)
                record.NextIdle = now + rng:NextNumber(4, 9)
            end
        else
            local target = self:FollowPosition(record, now, root)
            local separation = DustyFlat(target - position).Magnitude
            local playerDist = DustyFlat(root.Position - position).Magnitude
            local followStart = record.Deadzone + 2.5
            local followStop  = record.Deadzone * 0.6

            if record.FollowActive then
                if separation <= followStop
                    and playerDist < self.Spread * 1.1 then
                    record.FollowActive = false
                    record.MoveTarget, record.Goal = nil, nil
                    record.LastGoalPos = nil
                end
            else
                if separation > followStart
                    or playerDist > self.Spread * 1.5 then
                    record.FollowActive = true
                end
            end

            if record.FollowActive then
                desired = self:Ground(target, 18)
                if not desired and separation > 1 then
                    local closer = position
                        + DustyUnit(DustyFlat(target - position))
                        * math.min(6, separation)
                    desired = self:Ground(closer, 18)
                end
                record.Humanoid.WalkSpeed = record.Speed
                    + (playerDist > 24 and 4 or 0)
            elseif now > record.NextIdle then
                record.NextIdle = now + rng:NextNumber(5, 11)
                record.Humanoid.WalkSpeed = record.Speed
                if rng:NextNumber() < .22 then
                    self:Emote(record)
                elseif rng:NextNumber() < .65 then
                    desired = self:SafePosition(position, 4.5)
                end
            end
        end

        if desired then
            local goal = desired + Vector3.new(0, record.Height, 0)
            local last = record.LastGoalPos
            if not last or (goal - last).Magnitude > 4 then
                if DustyFlat(goal - position).Magnitude > record.Deadzone * 0.8 then
                    record.Goal, record.MoveTarget = goal, goal
                    record.LastGoalPos = goal
                end
            end
        end
    end
    self:UpdateChat(now)
end

function DustyNPCClass:FollowPosition(record, now, root)
    local cf = root.CFrame
    local right   = DustyUnit(DustyFlat(cf.RightVector))
    local forward = DustyUnit(DustyFlat(cf.LookVector))
    local drift   = math.sin(now * .16 + record.Phase) * .65
    return cf.Position
        + right   * (self.Spread * record.Side + drift)
        - forward * (self.Spread * record.Back)
end

function DustyNPCClass:Emote(record, gesture)
    gesture = gesture or "Wave"
    if not record or record.Disposed or not record.AnimationsEnabled then return false end
    local track = record.Tracks[gesture]
    if not track then return false end
    if record.Gesture and record.Tracks[record.Gesture] then
        record.Tracks[record.Gesture]:Stop(.15)
    end
    record.Gesture, record.GestureUntil = gesture, os.clock() + 3
    track:Play(.2)
    return true
end

function DustyNPCClass:MakeNameTag(record)
    local gui = Instance.new("BillboardGui")
    gui.Name = "DustyNameTag"
    gui.Adornee = record.Head
    gui.Size = UDim2.fromOffset(200, 32)
    gui.StudsOffset = Vector3.new(0, 1.7, 0)
    gui.MaxDistance = 100
    gui.LightInfluence = 0
    gui.AlwaysOnTop = false
    gui.Parent = record.Model

    local label = Instance.new("TextLabel", gui)
    label.Name = "Name"
    label.Size = UDim2.fromScale(1, 1)
    label.BackgroundTransparency = 1
    label.Text = record.Name
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    label.TextStrokeTransparency = 0.85
    label.FontFace = Font.new(
        "rbxasset://fonts/families/SourceSansPro.json",
        Enum.FontWeight.Regular
    )
    label.TextSize = 23
    label.TextXAlignment = Enum.TextXAlignment.Center
    label.TextYAlignment = Enum.TextYAlignment.Center

    return {Gui = gui, Label = label}
end

function DustyNPCClass:MakeBubble(record)
    local gui = Instance.new("BillboardGui")
    gui.Name = "DustyBubble"
    gui.Adornee = record.Head
    gui.Size = UDim2.fromOffset(400, 120)
    gui.StudsOffsetWorldSpace = Vector3.new(0, 3.5, 0)
    gui.MaxDistance = 65
    gui.LightInfluence = 0
    gui.AlwaysOnTop = false
    gui.Parent = record.Model

    local wrapper = Instance.new("Frame", gui)
    wrapper.Name = "Wrapper"
    wrapper.BackgroundTransparency = 1
    wrapper.AnchorPoint = Vector2.new(0.5, 1)
    wrapper.Position = UDim2.fromScale(0.5, 1.0)
    wrapper.Size = UDim2.fromOffset(300, 60)
    wrapper.AutomaticSize = Enum.AutomaticSize.XY

    local body = Instance.new("Frame", wrapper)
    body.Name = "ChatBubbleFrame"
    body.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
    body.BackgroundTransparency = 0.08
    body.BorderSizePixel = 0
    body.AnchorPoint = Vector2.new(0.5, 0)
    body.Position = UDim2.fromScale(0.5, 0)
    body.Size = UDim2.fromOffset(0, 0)
    body.AutomaticSize = Enum.AutomaticSize.XY

    Instance.new("UICorner", body).CornerRadius = UDim.new(0, 12)

    local pad = Instance.new("UIPadding", body)
    pad.PaddingLeft   = UDim.new(0, 13)
    pad.PaddingRight  = UDim.new(0, 13)
    pad.PaddingTop    = UDim.new(0, 8)
    pad.PaddingBottom = UDim.new(0, 8)

    local caret = Instance.new("ImageLabel", wrapper)
    caret.Name = "Caret"
    caret.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
    caret.ImageColor3 = Color3.fromRGB(250, 250, 250)
    caret.ImageTransparency = 0.08
    caret.BackgroundTransparency = 1
    caret.Size = UDim2.fromOffset(9, 6)
    caret.AnchorPoint = Vector2.new(0.5, 0)
    caret.Position = UDim2.new(0.5, 0, 1, -2)

    local label = Instance.new("TextLabel", body)
    label.Name = "Text"
    label.BackgroundTransparency = 1
    label.Size = UDim2.fromOffset(0, 0)
    label.AutomaticSize = Enum.AutomaticSize.None
    label.Text = ""
    label.TextColor3 = Color3.fromRGB(57, 59, 61)
    label.FontFace = Font.new(
        "rbxassetid://16658221428",
        Enum.FontWeight.Medium,
        Enum.FontStyle.Normal
    )
    label.TextSize = 20
    label.TextWrapped = true
    label.RichText = true
    label.TextXAlignment = Enum.TextXAlignment.Center
    label.TextYAlignment = Enum.TextYAlignment.Center

    return {
        Gui = gui,
        Wrapper = wrapper,
        Body = body,
        Label = label,
        Caret = caret,
    }
end

function DustyNPCClass:Say(record, message)
    if not self.ChatEnabled or not record or record.Disposed then return false end
    message = DustyClip(message, 140)
    if message == "" then return false end

    if not record.Bubble then
        record.Bubble = self:MakeBubble(record)
    end
    local b = record.Bubble
    local gui = b.Gui
    local body = b.Body
    local label = b.Label
    local caret = b.Caret

    gui.Enabled = true
    label.Text = message

    local TextService = game:GetService("TextService")
    local MAX_BUBBLE_WIDTH = 325
    local textSize
    local ok1 = pcall(function()
        textSize = TextService:GetTextSize(
            message,
            label.TextSize,
            label.FontFace,
            Vector2.new(MAX_BUBBLE_WIDTH, math.huge)
        )
    end)

    if not ok1 or not textSize then
        pcall(function()
            textSize = TextService:GetTextSize(
                message,
                label.TextSize,
                Enum.Font.GothamMedium,
                Vector2.new(MAX_BUBBLE_WIDTH, math.huge)
            )
        end)
    end

    if not textSize or textSize.X <= 0 or textSize.Y <= 0 then
        local charWidth = label.TextSize * 0.55
        local w = math.min(#message * charWidth, MAX_BUBBLE_WIDTH)
        local h = label.TextSize * 1.2
        textSize = Vector2.new(w, h)
    end

    label.Size = UDim2.fromOffset(textSize.X, textSize.Y)
    body.Size = UDim2.fromOffset(textSize.X + 26, textSize.Y + 16)
    body.AutomaticSize = Enum.AutomaticSize.None
    body.BackgroundTransparency = 1
    label.TextTransparency = 1
    caret.ImageTransparency = 1

    local wrapper = b.Wrapper
    wrapper.Size = UDim2.fromOffset(0, 0)
    local uiScale = wrapper:FindFirstChildOfClass("UIScale")
    if not uiScale then
        uiScale = Instance.new("UIScale", wrapper)
    end
    uiScale.Scale = 0.85

    -- Animate IN
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService:Create(body, tweenInfo, { BackgroundTransparency = 0.08 }):Play()
    TweenService:Create(label, tweenInfo, { TextTransparency = 0 }):Play()
    TweenService:Create(caret, tweenInfo, { ImageTransparency = 0.08 }):Play()
    TweenService:Create(uiScale, tweenInfo, { Scale = 1 }):Play()

    -- Fade OUT
    local endAt = os.clock() + 15
    b.EndAt = endAt
    task.delay(15, function()
        if not b.Gui or not b.Gui.Parent or b.EndAt ~= endAt then return end
        local outInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        TweenService:Create(body, outInfo, { BackgroundTransparency = 1 }):Play()
        TweenService:Create(label, outInfo, { TextTransparency = 1 }):Play()
        TweenService:Create(caret, outInfo, { ImageTransparency = 1 }):Play()
        TweenService:Create(uiScale, outInfo, { Scale = 0.85 }):Play()
        task.wait(0.4)
        if b.Gui and b.Gui.Parent and b.EndAt == endAt then
            b.Gui.Enabled = false
        end
    end)

    return true
end

function DustyNPCClass:UpdateChat(now)
    if not self.ChatEnabled then return end
    if now < self.ChatNext then return end
    self.ChatNext = now + rng:NextNumber(8, 16)
    local records = self:List()
    if #records == 0 then return end
    local speaker = records[rng:NextInteger(1, #records)]
    local line = DustyChatLines[rng:NextInteger(1, #DustyChatLines)]
    self:Say(speaker, line)
end

function DustyNPCClass:Shutdown()
    if not self.Active then return end
    self.Active = false
    self:Clear()
    for _, template in pairs(self.Templates) do
        pcall(function() template:Destroy() end)
    end
    table.clear(self.Templates)
    table.clear(self.TemplateOrder)
    if self.Folder and self.Folder.Parent then
        pcall(function() self.Folder:Destroy() end)
    end
    self.Folder = nil
end

-- INSTANTIATE + MAIN LOOP
local DustyNPC = DustyNPCClass.new()
_G.DustyNPC = DustyNPC
DustyRuntime.spawnJob(function()
    while DustyRuntime.Active and DustyNPC.Active do
        local ok, err = pcall(function() DustyNPC:Step(os.clock()) end)
        if not ok and DustyRuntime.Active then
            task.wait(1)
        end
        task.wait(1/30)
    end
end)

DustyRuntime.connect(localPlayer.CharacterAdded, function()
    task.wait(1)
    if DustyNPC.Active then DustyNPC:Recall() end
end)

-- GUI
local function DustyMakeUI()
    local gui = DustyRuntime.ownGui(Instance.new("ScreenGui"))
    gui.Name = "DustyNPCUI"
    gui.ResetOnSpawn = false
    gui.DisplayOrder = 999999
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.Parent = localPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame", gui)
    frame.Name = "DustyMainFrame"
    frame.Size = UDim2.fromOffset(320, 440)
    frame.Position = UDim2.new(0, 20, 0.5, -220)
    frame.BackgroundColor3 = Color3.fromRGB(20, 22, 34)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)

    local stroke = Instance.new("UIStroke", frame)
    stroke.Color = Color3.fromRGB(90, 130, 220)
    stroke.Thickness = 1
    stroke.Transparency = 0.3

    local titleBar = Instance.new("Frame", frame)
    titleBar.Size = UDim2.new(1, 0, 0, 34)
    titleBar.BackgroundColor3 = Color3.fromRGB(28, 32, 48)
    titleBar.BorderSizePixel = 0
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 10)
    local cover = Instance.new("Frame", titleBar)
    cover.Size = UDim2.new(1, 0, 0, 10)
    cover.Position = UDim2.new(0, 0, 1, -10)
    cover.BackgroundColor3 = titleBar.BackgroundColor3
    cover.BorderSizePixel = 0

    local title = Instance.new("TextLabel", titleBar)
    title.Size = UDim2.new(1, -80, 1, 0)
    title.Position = UDim2.fromOffset(12, 0)
    title.BackgroundTransparency = 1
    title.Text = "Dusty NPC Spawner"
    title.TextColor3 = Color3.fromRGB(230, 235, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 15
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.ZIndex = 2

    local closeBtn = Instance.new("TextButton", titleBar)
    closeBtn.Size = UDim2.fromOffset(24, 24)
    closeBtn.Position = UDim2.new(1, -30, 0.5, -12)
    closeBtn.BackgroundColor3 = Color3.fromRGB(190, 60, 70)
    closeBtn.BorderSizePixel = 0
    closeBtn.Text = "X"
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 13
    closeBtn.AutoButtonColor = false
    closeBtn.ZIndex = 3
    Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)
    closeBtn.MouseEnter:Connect(function() closeBtn.BackgroundColor3 = Color3.fromRGB(230, 80, 90) end)
    closeBtn.MouseLeave:Connect(function() closeBtn.BackgroundColor3 = Color3.fromRGB(190, 60, 70) end)

    local content = Instance.new("ScrollingFrame", frame)
    content.Size = UDim2.new(1, 0, 1, -34)
    content.Position = UDim2.fromOffset(0, 34)
    content.BackgroundTransparency = 1
    content.BorderSizePixel = 0
    content.ScrollBarThickness = 4
    content.ScrollBarImageColor3 = Color3.fromRGB(90, 130, 220)
    content.CanvasSize = UDim2.new()
    content.AutomaticCanvasSize = Enum.AutomaticSize.Y
    content.ScrollingDirection = Enum.ScrollingDirection.Y

    local layout = Instance.new("UIListLayout", content)
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 6)
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    local padding = Instance.new("UIPadding", content)
    padding.PaddingTop = UDim.new(0, 10)
    padding.PaddingBottom = UDim.new(0, 10)
    padding.PaddingLeft = UDim.new(0, 12)
    padding.PaddingRight = UDim.new(0, 12)

    local function makeInput(placeholder, order, default)
        local box = Instance.new("TextBox")
        box.Size = UDim2.new(1, 0, 0, 32)
        box.BackgroundColor3 = Color3.fromRGB(38, 42, 60)
        box.BorderSizePixel = 0
        box.PlaceholderText = placeholder
        box.PlaceholderColor3 = Color3.fromRGB(140, 145, 175)
        box.Text = default or ""
        box.TextColor3 = Color3.fromRGB(220, 225, 245)
        box.Font = Enum.Font.Gotham
        box.TextSize = 12
        box.ClearTextOnFocus = false
        box.LayoutOrder = order
        box.Parent = content
        Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)
        return box
    end

    local function makeBtn(text, order, color, cb)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, 0, 0, 34)
        btn.BackgroundColor3 = color or Color3.fromRGB(60, 90, 160)
        btn.BorderSizePixel = 0
        btn.Text = text
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 13
        btn.AutoButtonColor = false
        btn.LayoutOrder = order
        btn.Parent = content
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        local base = btn.BackgroundColor3
        btn.MouseEnter:Connect(function()
            btn.BackgroundColor3 = Color3.new(
                math.min(1, base.R + 0.1),
                math.min(1, base.G + 0.1),
                math.min(1, base.B + 0.1))
        end)
        btn.MouseLeave:Connect(function() btn.BackgroundColor3 = base end)
        btn.MouseButton1Click:Connect(cb)
        return btn
    end

    local avatarBox = makeInput("Username / UserId (blank = random)", 1)
    local row1 = Instance.new("Frame", content)
    row1.Size = UDim2.new(1, 0, 0, 32)
    row1.BackgroundTransparency = 1
    row1.LayoutOrder = 2

    local countBox = Instance.new("TextBox", row1)
    countBox.Size = UDim2.new(0.35, -3, 1, 0)
    countBox.BackgroundColor3 = Color3.fromRGB(38, 42, 60)
    countBox.BorderSizePixel = 0
    countBox.PlaceholderText = "Count"
    countBox.PlaceholderColor3 = Color3.fromRGB(140, 145, 175)
    countBox.Text = "5"
    countBox.TextColor3 = Color3.fromRGB(220, 225, 245)
    countBox.Font = Enum.Font.Gotham
    countBox.TextSize = 12
    countBox.ClearTextOnFocus = false
    Instance.new("UICorner", countBox).CornerRadius = UDim.new(0, 6)

    local nameBox = Instance.new("TextBox", row1)
    nameBox.Size = UDim2.new(0.65, -3, 1, 0)
    nameBox.Position = UDim2.new(0.35, 3, 0, 0)
    nameBox.BackgroundColor3 = Color3.fromRGB(38, 42, 60)
    nameBox.BorderSizePixel = 0
    nameBox.PlaceholderText = "NPC name (optional)"
    nameBox.PlaceholderColor3 = Color3.fromRGB(140, 145, 175)
    nameBox.Text = ""
    nameBox.TextColor3 = Color3.fromRGB(220, 225, 245)
    nameBox.Font = Enum.Font.Gotham
    nameBox.TextSize = 12
    nameBox.ClearTextOnFocus = false
    Instance.new("UICorner", nameBox).CornerRadius = UDim.new(0, 6)

    makeBtn("Spawn 1 NPC", 3, Color3.fromRGB(60, 120, 90), function()
        DustyNPC:Spawn(avatarBox.Text, nameBox.Text)
    end)

    local spawningRandom = false
    local spawnRandomBtn
    spawnRandomBtn = makeBtn("SPAWN RANDOM", 4, Color3.fromRGB(60, 90, 160), function()
        if spawningRandom then return end
        if not spawnRandomBtn then return end
        spawningRandom = true
        spawnRandomBtn.Text = "Spawning..."
        spawnRandomBtn.BackgroundColor3 = Color3.fromRGB(40, 60, 100)
        DustyRuntime.spawnJob(function()
            DustyNPC:SpawnRandom()
            task.wait(0.8)
            if spawnRandomBtn then
                spawnRandomBtn.Text = "SPAWN RANDOM"
                spawnRandomBtn.BackgroundColor3 = Color3.fromRGB(60, 90, 160)
            end
            spawningRandom = false
        end)
    end)

    local modeBtn
    modeBtn = makeBtn("Mode: " .. DustyNPC.Mode, 5, Color3.fromRGB(120, 90, 160), function()
        local nextMode = {Follow = "Roam", Roam = "Stay", Stay = "Follow"}
        DustyNPC.Mode = nextMode[DustyNPC.Mode]
        for _, r in pairs(DustyNPC.Records) do
            r.Mode = DustyNPC.Mode
            r.Home = r.Root.Position
            r.Goal, r.MoveTarget = nil, nil
        end
        modeBtn.Text = "Mode: " .. DustyNPC.Mode
    end)

    local pauseBtn
    pauseBtn = makeBtn("Pause", 6, Color3.fromRGB(150, 120, 60), function()
        DustyNPC.Paused = not DustyNPC.Paused
        pauseBtn.Text = DustyNPC.Paused and "Resume" or "Pause"
    end)
    local chatBtn
    chatBtn = makeBtn("Chat: ON", 7, Color3.fromRGB(70, 130, 140), function()
        DustyNPC.ChatEnabled = not DustyNPC.ChatEnabled
        chatBtn.Text = "Chat: " .. (DustyNPC.ChatEnabled and "ON" or "OFF")
    end)
    makeBtn("Bring All Here", 8, Color3.fromRGB(90, 130, 90), function()
        DustyNPC:Recall()
    end)
    makeBtn("Clear All NPCs", 9, Color3.fromRGB(170, 70, 70), function()
        DustyNPC:Clear()
    end)

    local info = Instance.new("TextLabel", content)
    info.Size = UDim2.new(1, 0, 0, 32)
    info.BackgroundColor3 = Color3.fromRGB(30, 34, 50)
    info.BorderSizePixel = 0
    info.Text = string.format("Weapons: %d knives, %d guns",
        #DustyWeaponPools.Knives, #DustyWeaponPools.Guns)
    info.TextColor3 = Color3.fromRGB(150, 200, 255)
    info.Font = Enum.Font.Gotham
    info.TextSize = 11
    info.LayoutOrder = 10
    info.Parent = content
    Instance.new("UICorner", info).CornerRadius = UDim.new(0, 6)
    closeBtn.MouseButton1Click:Connect(function()
        DustyRuntime.shutdown()
    end)
    return gui
end

DustyBuildWeaponPools()
DustyMakeUI()

_G.DustyRuntime = DustyRuntime
_G.DustyDB      = DustyDB
local MM2Injector = { Active = true }
_G.MM2Injector = MM2Injector

local function findLeaderboardContainer()
    local pg = localPlayer:FindFirstChild("PlayerGui")
    if not pg then return nil end
    local mg = pg:FindFirstChild("MainGUI")
    if not mg then return nil end
    local game_ = mg:FindFirstChild("Game")
    if not game_ then return nil end
    local lb = game_:FindFirstChild("Leaderboard")
    if not lb then return nil end
    return lb:FindFirstChild("Container")
end

local function isRealPlayerRow(row)
    if not row:IsA("Frame") then return false end
    if row:GetAttribute("DustyNPCRow") then return false end
    for _, p in ipairs(Players:GetPlayers()) do
        if row.Name == p.Name then return true end
    end
    return false
end

local function pickTemplateRow(container)
    for _, c in ipairs(container:GetChildren()) do
        if isRealPlayerRow(c) then return c end
    end
end

local function buildNPCRow(template, npcName)
    local row = template:Clone()
    row.Name = "DustyNPC_" .. npcName
    row:SetAttribute("DustyNPCRow", true)

    for _, d in ipairs(row:GetDescendants()) do
        if d:IsA("LocalScript") or d:IsA("Script") then
            d:Destroy()
        end
    end
    local action = row:FindFirstChild("ActionButton")
    if action then
        action.Active = true
    end
    row:SetAttribute("DustyNPCName", npcName)

    local nameLabel = row:FindFirstChild("PlayerLabel")
    if nameLabel then nameLabel.Text = npcName end
    
    local levelFrame = row:FindFirstChild("Level")
    if levelFrame then
        local levelLabel = levelFrame:FindFirstChild("Level")
        if levelLabel then
            levelLabel.Text = tostring(rng:NextInteger(1, 99))
        end
        local prestigeLabel = levelFrame:FindFirstChild("Prestige")
        if prestigeLabel then prestigeLabel.Text = "" end
    end
    row.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    local xpBar = row:FindFirstChild("XPBar")
    if xpBar then
        xpBar:Destroy()
    end
    return row
end

local function injectAll()
    local DustyNPC = _G.DustyNPC
    if not DustyNPC or not DustyNPC.Active then return end
    local container = findLeaderboardContainer()
    if not container then return end
    local template = pickTemplateRow(container)
    if not template then return end

    for _, record in pairs(DustyNPC.Records) do
        if not record.Disposed and record.Name then
            local rowName = "DustyNPC_" .. record.Name
            if not container:FindFirstChild(rowName) then
                local row = buildNPCRow(template, record.Name)
                row.Parent = container
            end
        end
    end

    for _, c in ipairs(container:GetChildren()) do
        if c:GetAttribute("DustyNPCRow") then
            local npcName = c.Name:gsub("^DustyNPC_", "")
            local stillExists = false
            for _, record in pairs(DustyNPC.Records) do
                if record.Name == npcName and not record.Disposed then
                    stillExists = true
                    break
                end
            end
            if not stillExists then
                c:Destroy()
            end
        end
    end
end

task.spawn(function()
    while MM2Injector.Active and DustyRuntime.Active do
        pcall(injectAll)
        task.wait(0.8)
    end
end)

if _G.DustyPeopleInjector then
    _G.DustyPeopleInjector.Active = false
end

local DustyPeopleCoreGui = game:GetService("CoreGui")
local DustyPeoplePlayers = game:GetService("Players")
local previousOverlay = DustyPeopleCoreGui:FindFirstChild(
    "DustyPeopleNativeCardOverlay"
)
if previousOverlay then
    previousOverlay:Destroy()
end

local DustyPeopleInjector = {
    Active = true,
    Cards = {},
    UsernameCache = {},
    DisplayCache = {},
    _LastContainerPos = nil,
    _LastContainerSize = nil,
    _LastRealCardPos = nil,
    Style = {
        Size        = Vector2.new(145, 201),
        Background  = Color3.fromRGB(25, 26, 31),
        BgTransp    = 0.05,
        Corner      = 8,
        NameFont    = Font.new(
            "rbxasset://fonts/families/LegacyArial.json",
            Enum.FontWeight.SemiBold
        ),
        HandleFont  = Font.new(
            "rbxasset://fonts/families/BuilderSans.json",
            Enum.FontWeight.Regular
        ),
        NameColor   = Color3.fromRGB(255, 255, 255),
        HandleColor = Color3.fromRGB(200, 200, 200),
        NameSize    = 10,
        HandleSize  = 18,
    },
}

_G.DustyPeopleInjector = DustyPeopleInjector

local function findDustyPeopleContainer()
    for _, obj in ipairs(DustyPeopleCoreGui:GetDescendants()) do
        if obj.Name == "People" and obj:IsA("Frame") then
            for _, child in ipairs(obj:GetChildren()) do
                if child.Name:match("^VirtualizedItem_%d+$") then
                    return obj
                end
            end
        end
    end
    return nil
end

local function getDustyRealPeopleCards(container)
    local cards = {}
    for _, child in ipairs(container:GetChildren()) do
        if child:IsA("GuiObject")
            and child.Name:match("^VirtualizedItem_%d+$") then
            table.insert(cards, child)
        end
    end
    table.sort(cards, function(a, b)
        local ap, bp = a.AbsolutePosition, b.AbsolutePosition
        if math.abs(ap.Y - bp.Y) < 3 then return ap.X < bp.X end
        return ap.Y < bp.Y
    end)
    return cards
end

local function getDustyUsername(record)
    local userId = tonumber(record.UserId)
    if not userId then return record.Name or "NPC" end
    if DustyPeopleInjector.UsernameCache[userId] then
        return DustyPeopleInjector.UsernameCache[userId]
    end
    local username = "NPC"
    local ok, result = pcall(function()
        return DustyPeoplePlayers:GetNameFromUserIdAsync(userId)
    end)
    if ok and result then username = result end
    DustyPeopleInjector.UsernameCache[userId] = username
    return username
end

local DustyHttpService = game:GetService("HttpService")
local function getDustyDisplayName(record)
    local userId = tonumber(record.UserId)
    if not userId or userId <= 0 then
        return record.Name or "NPC"
    end

    if DustyPeopleInjector.DisplayCache[userId] then
        return DustyPeopleInjector.DisplayCache[userId]
    end
    
    local ok, infos = pcall(function()
        return DustyPeoplePlayers:GetUserInfosByUserIdsAsync({userId})
    end)

    if ok and type(infos) == "table" and infos[1]
        and infos[1].DisplayName and infos[1].DisplayName ~= "" then
        DustyPeopleInjector.DisplayCache[userId] = infos[1].DisplayName
        return infos[1].DisplayName
    end

    local httpFn = request or http_request
        or (syn and syn.request)
        or (fluxus and fluxus.request)

    if httpFn then
        local ok2, response = pcall(function()
            return httpFn({
                Url = "https://users.roblox.com/v1/users/" .. tostring(userId),
                Method = "GET",
                Headers = { ["Accept"] = "application/json" }
            })
        end)

        if ok2 and response and response.Body then
            local ok3, data = pcall(function()
                return DustyHttpService:JSONDecode(response.Body)
            end)
            if ok3 and type(data) == "table"
                and data.displayName and data.displayName ~= "" then
                DustyPeopleInjector.DisplayCache[userId] = data.displayName
                return data.displayName
            end
        end
    end
    return record.Name or "NPC"
end

local function buildDustyPeopleCard(record)
    local style = DustyPeopleInjector.Style
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    local hoverIn  = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local hoverOut = TweenInfo.new(0.2,  Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local card = Instance.new("Frame")
    card.BackgroundColor3       = style.Background
    card.BackgroundTransparency = style.BgTransp
    card.BorderSizePixel        = 0
    card.ClipsDescendants       = true
    card.Size    = UDim2.fromOffset(style.Size.X, style.Size.Y)
    card.Visible = false
    Instance.new("UICorner", card).CornerRadius = UDim.new(0, style.Corner)

    local avatarHighlight = Instance.new("Frame")
    avatarHighlight.Name = "AvatarHighlight"
    avatarHighlight.Size = UDim2.fromOffset(145, 145)
    avatarHighlight.Position = UDim2.fromOffset(0, 0)
    avatarHighlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    avatarHighlight.BackgroundTransparency = 1
    avatarHighlight.BorderSizePixel = 0
    avatarHighlight.ZIndex = 1
    avatarHighlight.Parent = card
    Instance.new("UICorner", avatarHighlight).CornerRadius = UDim.new(0, style.Corner)

    local avatar = Instance.new("ImageLabel")
    avatar.Name = "Avatar"
    avatar.Size = UDim2.fromOffset(121, 121)
    avatar.Position = UDim2.fromOffset(12, 12)
    avatar.BackgroundTransparency = 1
    avatar.ScaleType = Enum.ScaleType.Stretch
    avatar.Image = ""
    avatar.ZIndex = 2
    avatar.Parent = card

    local userId = tonumber(record.UserId)
    if userId and userId > 0 then
        avatar.Image = string.format("rbxthumb://type=Avatar&id=%d&w=150&h=150", userId)
    end

    local dots = Instance.new("TextButton")
    dots.Name = "DotsButton"
    dots.AnchorPoint = Vector2.new(1, 0)
    dots.Size = UDim2.fromOffset(40, 40)
    dots.Position = UDim2.new(1, -6, 0, 6)
    dots.BackgroundColor3 = Color3.fromRGB(50, 51, 58)
    dots.BackgroundTransparency = 0.1
    dots.BorderSizePixel = 0
    dots.Text = "..."
    dots.TextColor3 = Color3.fromRGB(230, 230, 230)
    dots.TextSize = 22
    dots.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Bold)
    dots.TextXAlignment = Enum.TextXAlignment.Center
    dots.TextYAlignment = Enum.TextYAlignment.Center
    dots.AutoButtonColor = false
    dots.Active = false
    dots.Visible = false
    dots.ZIndex = 10
    dots.Parent = card
    Instance.new("UICorner", dots).CornerRadius = UDim.new(0, 8)

    local pad = Instance.new("UIPadding", dots)
    pad.PaddingBottom = UDim.new(0, 8)

    local nickHighlight = Instance.new("Frame")
    nickHighlight.Name = "NickHighlight"
    nickHighlight.Size = UDim2.fromOffset(145, 56)
    nickHighlight.Position = UDim2.fromOffset(0, 145)
    nickHighlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    nickHighlight.BackgroundTransparency = 1
    nickHighlight.BorderSizePixel = 0
    nickHighlight.ZIndex = 1
    nickHighlight.Parent = card
    Instance.new("UICorner", nickHighlight).CornerRadius = UDim.new(0, style.Corner)

    local nameL = Instance.new("TextLabel")
    nameL.Name               = "Name"
    nameL.Size               = UDim2.fromOffset(88, 18)
    nameL.Position           = UDim2.fromOffset(8, 155)
    nameL.BackgroundTransparency = 1
    nameL.TextColor3         = style.NameColor
    nameL.TextSize           = style.NameSize
    nameL.FontFace           = style.NameFont
    nameL.TextXAlignment     = Enum.TextXAlignment.Left
    nameL.TextYAlignment     = Enum.TextYAlignment.Center
    nameL.TextTruncate       = Enum.TextTruncate.AtEnd
    nameL.ZIndex             = 3
    nameL.Parent             = card

    local handle = Instance.new("TextLabel")
    handle.Name               = "Handle"
    handle.Size               = UDim2.fromOffset(88, 18)
    handle.Position           = UDim2.fromOffset(8, 173)
    handle.BackgroundTransparency = 1
    handle.TextColor3         = style.HandleColor
    handle.TextSize           = style.HandleSize
    handle.FontFace           = style.HandleFont
    handle.TextXAlignment     = Enum.TextXAlignment.Left
    handle.TextYAlignment     = Enum.TextYAlignment.Center
    handle.TextTruncate       = Enum.TextTruncate.AtEnd
    handle.ZIndex             = 3
    handle.Parent             = card

    if record.IsRealPlayer then
        nameL.Text = record.Name 
        handle.Text = "@" .. record.Username 
    else
        nameL.Text = record.Name or "NPC"
        handle.Text = record.Username and ("@" .. record.Username) or "@Loading..."
        
        task.spawn(function()
            local realDisplay = getDustyDisplayName(record)
            local realUsername = getDustyUsername(record)
            
            if card and card.Parent then
                if realDisplay then
                    nameL.Text = realDisplay
                    record.Name = realDisplay
                end
                if realUsername then
                    handle.Text = "@" .. realUsername
                    record.Username = realUsername
                end
            end
        end)
    end

    local connectBtn = Instance.new("ImageButton")
    connectBtn.Name = "ConnectButton"
    connectBtn.Size = UDim2.fromOffset(40, 40) 
    connectBtn.Position = UDim2.fromOffset(101, 153) 
    connectBtn.BackgroundColor3 = Color3.fromRGB(50, 51, 58) 
    connectBtn.BackgroundTransparency = 0.1
    connectBtn.Image = "rbxassetid://126421552629261"
    connectBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
    connectBtn.ScaleType = Enum.ScaleType.Fit 
    connectBtn.AutoButtonColor = false
    connectBtn.Active = false
    connectBtn.ZIndex = 5
    connectBtn.Parent = card
    
    local btnCorner = Instance.new("UICorner", connectBtn)
    btnCorner.CornerRadius = UDim.new(0, 8) 

    local avatarZone = Instance.new("TextButton")
    avatarZone.Name = "AvatarZone"
    avatarZone.Size = UDim2.fromOffset(145, 145)
    avatarZone.Position = UDim2.fromOffset(0, 0)
    avatarZone.BackgroundTransparency = 1
    avatarZone.Text = ""
    avatarZone.AutoButtonColor = false
    avatarZone.Active = false
    avatarZone.ZIndex = 5
    avatarZone.Parent = card

    local nickZone = Instance.new("TextButton")
    nickZone.Name = "NickZone"
    nickZone.Size = UDim2.fromOffset(145, 56)
    nickZone.Position = UDim2.fromOffset(0, 145)
    nickZone.BackgroundTransparency = 1
    nickZone.Text = ""
    nickZone.AutoButtonColor = false
    nickZone.Active = false
    nickZone.ZIndex = 5
    nickZone.Parent = card

    avatarZone.MouseEnter:Connect(function()
        dots.Visible = true
        TweenService:Create(avatarHighlight, hoverIn, { BackgroundTransparency = 0.9 }):Play()
        TweenService:Create(nickHighlight, hoverIn, { BackgroundTransparency = 1 }):Play()
    end)

    avatarZone.MouseLeave:Connect(function()
        dots.Visible = false
        TweenService:Create(avatarHighlight, hoverOut, { BackgroundTransparency = 1 }):Play()
    end)

    nickZone.MouseEnter:Connect(function()
        dots.Visible = false
        TweenService:Create(nickHighlight, hoverIn, { BackgroundTransparency = 0.9 }):Play()
        TweenService:Create(avatarHighlight, hoverIn, { BackgroundTransparency = 1 }):Play()
    end)

    nickZone.MouseLeave:Connect(function()
        TweenService:Create(nickHighlight, hoverOut, { BackgroundTransparency = 1 }):Play()
    end)

    dots.MouseEnter:Connect(function()
        TweenService:Create(dots, hoverIn, { BackgroundColor3 = Color3.fromRGB(80, 82, 92), BackgroundTransparency = 0 }):Play()
        TweenService:Create(avatarHighlight, hoverIn, { BackgroundTransparency = 1 }):Play()
        TweenService:Create(nickHighlight, hoverIn, { BackgroundTransparency = 1 }):Play()
    end)

    dots.MouseLeave:Connect(function()
        TweenService:Create(dots, hoverOut, { BackgroundColor3 = Color3.fromRGB(50, 51, 58), BackgroundTransparency = 0.1 }):Play()
    end)

    local menuOpen = false
    local isHoveringMenu = false
    local inputConnection
    
    local contextMenu = Instance.new("Frame")
    contextMenu.Name = "ContextMenu"
    contextMenu.BackgroundColor3 = Color3.fromRGB(32, 34, 39)
    contextMenu.BorderSizePixel = 0
    contextMenu.Size = UDim2.fromOffset(250, 112)
    contextMenu.Visible = false
    contextMenu.ZIndex = 50
    contextMenu.Parent = card

    contextMenu.MouseEnter:Connect(function() isHoveringMenu = true end)
    contextMenu.MouseLeave:Connect(function() isHoveringMenu = false end)

    card.ClipsDescendants = false

    local menuCorner = Instance.new("UICorner", contextMenu)
    menuCorner.CornerRadius = UDim.new(0, 10)

    local menuStroke = Instance.new("UIStroke", contextMenu)
    menuStroke.Color = Color3.fromRGB(70, 75, 85)
    menuStroke.Thickness = 1
    menuStroke.Transparency = 0.5
    menuStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    local menuLayout = Instance.new("UIListLayout", contextMenu)
    menuLayout.SortOrder = Enum.SortOrder.LayoutOrder
    menuLayout.Padding = UDim.new(0, 6)
    menuLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    
    local menuPadding = Instance.new("UIPadding", contextMenu)
    menuPadding.PaddingTop = UDim.new(0, 12)
    menuPadding.PaddingBottom = UDim.new(0, 12)

    local function closeMenu()
        menuOpen = false
        contextMenu.Visible = false
        card.ZIndex = 1
        if inputConnection then
            inputConnection:Disconnect()
            inputConnection = nil
        end
    end

    local function showCustomBlockModal(targetRecord, targetCard)
        local modalGui = Instance.new("ScreenGui")
        modalGui.Name = "DustyCustomModal"
        modalGui.IgnoreGuiInset = true
        modalGui.DisplayOrder = 999999
        modalGui.ResetOnSpawn = false
        modalGui.Parent = game:GetService("CoreGui")
        
        local dim = Instance.new("Frame")
        dim.Name = "CustomModalDim"
        dim.Size = UDim2.fromScale(1, 1)
        dim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        dim.BackgroundTransparency = 0.4 
        dim.BorderSizePixel = 0
        dim.ZIndex = 100
        dim.Parent = modalGui

        local modal = Instance.new("Frame")
        modal.Name = "CustomBlockModal"
        modal.Size = UDim2.fromOffset(400, 340)
        modal.Position = UDim2.fromScale(0.5, 0.5)
        modal.AnchorPoint = Vector2.new(0.5, 0.5)
        modal.BackgroundColor3 = Color3.fromRGB(39, 41, 48)
        modal.BorderSizePixel = 0
        modal.ZIndex = 101
        modal.Parent = dim
        
        local modalCorner = Instance.new("UICorner", modal)
        modalCorner.CornerRadius = UDim.new(0, 8)
        
        local modalStroke = Instance.new("UIStroke", modal)
        modalStroke.Color = Color3.fromRGB(0, 0, 0)
        modalStroke.Thickness = 1
        modalStroke.Transparency = 0.5

        local layout = Instance.new("UIListLayout", modal)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0, 12)
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

        local padding = Instance.new("UIPadding", modal)
        padding.PaddingTop = UDim.new(0, 20)
        padding.PaddingBottom = UDim.new(0, 20)
        padding.PaddingLeft = UDim.new(0, 24)
        padding.PaddingRight = UDim.new(0, 24)

        local title = Instance.new("TextLabel")
        title.Size = UDim2.new(1, 0, 0, 24)
        title.BackgroundTransparency = 1
        title.Text = "Block " .. (targetRecord.Name or "User") .. "?"
        title.TextColor3 = Color3.fromRGB(255, 255, 255)
        title.Font = Enum.Font.GothamBold
        title.TextSize = 18
        title.LayoutOrder = 1
        title.ZIndex = 102
        title.Parent = modal

        local divider = Instance.new("Frame")
        divider.Size = UDim2.new(1, 0, 0, 1)
        divider.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        divider.BorderSizePixel = 0
        divider.LayoutOrder = 2
        divider.ZIndex = 102
        divider.Parent = modal

        local body = Instance.new("TextLabel")
        body.Size = UDim2.new(1, 10, 0, 100)
        body.BackgroundTransparency = 1
        body.Text = "Blocking this user will remove them as a friend or follower.\nThey won't be able to send messages, requests or invites to you.\n\nThey won't be notified that you blocked them."
        body.TextColor3 = Color3.fromRGB(230, 230, 230)
        body.Font = Enum.Font.GothamMedium
        body.TextSize = 16
        body.TextWrapped = true
        body.TextYAlignment = Enum.TextYAlignment.Center
        body.TextXAlignment = Enum.TextXAlignment.Center 
        body.LayoutOrder = 3
        body.ZIndex = 102
        body.Parent = modal

        local function makeModalBtn(text, textColor, order, isCancel)
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(1, 0, 0, 36) 
            
            if isCancel then
                btn.BackgroundColor3 = Color3.fromRGB(39, 41, 48)
            else
                btn.BackgroundColor3 = Color3.fromRGB(59, 62, 72)
            end
            
            btn.BorderSizePixel = 0
            btn.Text = text
            btn.TextColor3 = textColor
            btn.Font = Enum.Font.GothamMedium
            btn.TextSize = 14
            btn.AutoButtonColor = false
            btn.LayoutOrder = order
            btn.ZIndex = 103
            btn.Parent = modal
            
            local btnCorner = Instance.new("UICorner", btn)
            btnCorner.CornerRadius = UDim.new(0, 9)

            if isCancel then
                local stroke = Instance.new("UIStroke", btn)
                stroke.Color = Color3.fromRGB(255, 255, 255)
                stroke.Thickness = 1
                stroke.Transparency = 0
                stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            end

            btn.MouseEnter:Connect(function() 
                if isCancel then
                    btn.BackgroundColor3 = Color3.fromRGB(50, 53, 60)
                else
                    btn.BackgroundColor3 = Color3.fromRGB(75, 79, 92) 
                end
            end)
            
            btn.MouseLeave:Connect(function() 
                if isCancel then
                    btn.BackgroundColor3 = Color3.fromRGB(39, 41, 48)
                else
                    btn.BackgroundColor3 = Color3.fromRGB(59, 62, 72)
                end
            end)

            btn.MouseButton1Click:Connect(function()
                modalGui:Destroy() 
                if text == "Block" or text == "Block and report" then
                    if _G.DustyNPC then
                        _G.DustyNPC:Remove(targetRecord) 
                    end
                    if targetCard then
                        targetCard.Visible = false
                        targetCard:Destroy()
                    end
                end
            end)
        end

        makeModalBtn("Block", Color3.fromRGB(225, 49, 32), 4, false) 
        makeModalBtn("Block and report", Color3.fromRGB(225, 49, 32), 5, false)
        makeModalBtn("Cancel", Color3.fromRGB(255, 255, 255), 6, true) 
    end

    local function makeMenuItem(text, iconId, order, callback)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.fromOffset(230, 40)
        btn.BackgroundColor3 = Color3.fromRGB(60, 65, 80)
        btn.BackgroundTransparency = 1
        btn.BorderSizePixel = 0
        btn.Text = ""
        btn.AutoButtonColor = false
        btn.LayoutOrder = order
        btn.ZIndex = 51
        btn.Parent = contextMenu
        
        local btnCorner = Instance.new("UICorner", btn)
        btnCorner.CornerRadius = UDim.new(0, 7)

        local icon = Instance.new("ImageLabel")
        icon.Size = UDim2.fromOffset(22, 22)
        icon.Position = UDim2.fromOffset(12, 9)
        icon.BackgroundTransparency = 1
        icon.Image = iconId
        icon.ImageColor3 = Color3.fromRGB(235, 235, 235)
        icon.ZIndex = 52
        icon.Parent = btn

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -45, 1, 0)
        label.Position = UDim2.fromOffset(44, 0)
        label.BackgroundTransparency = 1
        label.Text = text
        label.TextColor3 = Color3.fromRGB(235, 235, 235)
        label.Font = Enum.Font.Gotham
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.ZIndex = 52
        label.Parent = btn

        btn.MouseEnter:Connect(function()
            btn.BackgroundTransparency = 0
            btn.BackgroundColor3 = Color3.fromRGB(50, 55, 65)
        end)
        btn.MouseLeave:Connect(function()
            btn.BackgroundTransparency = 1
        end)
        
        btn.MouseButton1Down:Connect(function()
            closeMenu()
            if callback then callback() end
        end)
    end

    makeMenuItem("Block", "rbxassetid://73203084512933", 1, function()
        if record.IsRealPlayer then return end
        showCustomBlockModal(record, card)
    end)
    
    makeMenuItem("Report", "rbxassetid://119104044347450", 2, function()
        task.wait(0.25) 
        local X, Y = 1138, 182
        local VIM = game:GetService("VirtualInputManager")
        if VIM then
            local ok = pcall(function()
                VIM:SendMouseButtonEvent(X, Y, 0, true,  game, 1) 
                task.wait(0.08)
                VIM:SendMouseButtonEvent(X, Y, 0, false, game, 1) 
            end)
            if ok then return end
        end

        if mousemoveabs and mouse1click then
            pcall(function()
                mousemoveabs(X, Y)
                task.wait(0.05)
                mouse1click()
            end)
            return
        end
    end)

    dots.MouseButton1Click:Connect(function()
        if menuOpen then
            closeMenu()
        else
            menuOpen = true
            contextMenu.Visible = true
            card.ZIndex = 100
            local dotsPos = dots.AbsolutePosition
            local cardPos = card.AbsolutePosition
            local relX = dotsPos.X - cardPos.X
            local relY = dotsPos.Y - cardPos.Y
            contextMenu.Position = UDim2.fromOffset(relX + 0, relY + 50)
            if inputConnection then inputConnection:Disconnect() end
            inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    if not isHoveringMenu then
                        closeMenu()
                    end
                end
            end)
        end
    end)
    return card
end

local function updateDustyPeopleCard(card, record)
    local nameL  = card:FindFirstChild("Name")
    local handle = card:FindFirstChild("Handle")
    if nameL and record.Name then
        nameL.Text = record.Name
    end
    if handle and record.Username then
        handle.Text = "@" .. record.Username
    end
end

local function removeDustyPeopleCard(key)
    local card = DustyPeopleInjector.Cards[key]
    if card then
        pcall(function() card:Destroy() end)
        DustyPeopleInjector.Cards[key] = nil
    end
end

local function clearDustyPeopleCards()
    for key in pairs(DustyPeopleInjector.Cards) do
        removeDustyPeopleCard(key)
    end
end

local function isDustyPeopleContainerVisible(container)
    if not container or not container.Parent then return false end
    if not container.Visible then return false end
    if container.AbsoluteSize.X <= 0 or container.AbsoluteSize.Y <= 0 then
        return false
    end
    local cur = container.Parent
    while cur and cur ~= DustyPeopleCoreGui do
        if cur:IsA("GuiObject") and not cur.Visible then
            return false
        end
        if cur:IsA("CanvasGroup") and cur.GroupTransparency > 0.5 then
            return false
        end
        cur = cur.Parent
    end
    return true
end

local function isDustyPanelStable(container, realCards)
    if #realCards == 0 then return false end

    local cPos = container.AbsolutePosition
    local cSize = container.AbsoluteSize

    local prev = DustyPeopleInjector._LastContainerSnapshot
    DustyPeopleInjector._LastContainerSnapshot = {
        X = cPos.X, Y = cPos.Y,
        W = cSize.X, H = cSize.Y,
    }

    if not prev then return false end

    if math.abs(prev.X - cPos.X) > 0.1
        or math.abs(prev.Y - cPos.Y) > 0.1 then
        return false
    end

    if math.abs(prev.W - cSize.X) > 0.1
        or math.abs(prev.H - cSize.Y) > 0.1 then
        return false
    end

    return true
end

local SyncCache = {
    Container = nil,
    PageView = nil,
    InnerFrame = nil,
    Overlay = nil,
    ClipFrame = nil,
    LastEntityHash = "",
    OriginalInnerPos = nil
}

local function syncDustyPeopleCards()
    local dustyNPC = _G.DustyNPC
    if not dustyNPC or not dustyNPC.Active then
        clearDustyPeopleCards()
        return
    end

    if not SyncCache.Container or not SyncCache.Container.Parent then
        SyncCache.Container = findDustyPeopleContainer()
        SyncCache.PageView = nil
        SyncCache.InnerFrame = nil
    end
    
    local container = SyncCache.Container
    if not container or not isDustyPeopleContainerVisible(container) then
        if SyncCache.Overlay then
            local cFrame = SyncCache.Overlay:FindFirstChild("DustyPeopleClipFrame")
            if cFrame then cFrame.Visible = false end
        end
        for _, card in pairs(DustyPeopleInjector.Cards) do card.Visible = false end
        return
    end

    if not SyncCache.PageView or not SyncCache.PageView.Parent then
        local cur = container
        while cur and cur ~= DustyPeopleCoreGui do
            if cur.Name == "PageView" and cur:IsA("ScrollingFrame") then
                SyncCache.PageView = cur
                break
            end
            cur = cur.Parent
        end
    end
    local pageView = SyncCache.PageView
    if not pageView then return end

    if not SyncCache.InnerFrame or not SyncCache.InnerFrame.Parent then
        SyncCache.InnerFrame = pageView:FindFirstChild("PageViewInnerFrame")
    end
    local innerFrame = SyncCache.InnerFrame
    if not innerFrame then return end

    if not SyncCache.OriginalInnerPos then
        SyncCache.OriginalInnerPos = innerFrame.Position
    end

    if not SyncCache.Overlay or not SyncCache.Overlay.Parent then
        SyncCache.Overlay = DustyPeopleCoreGui:FindFirstChild("DustyPeopleNativeCardOverlay")
        if not SyncCache.Overlay then
            SyncCache.Overlay = Instance.new("ScreenGui")
            SyncCache.Overlay.Name            = "DustyPeopleNativeCardOverlay"
            SyncCache.Overlay.ResetOnSpawn    = false
            SyncCache.Overlay.IgnoreGuiInset  = false
            SyncCache.Overlay.DisplayOrder    = 100
            SyncCache.Overlay.ZIndexBehavior  = Enum.ZIndexBehavior.Sibling
            SyncCache.Overlay.Parent          = DustyPeopleCoreGui
        end
    end

    if not SyncCache.ClipFrame or not SyncCache.ClipFrame.Parent then
        SyncCache.ClipFrame = SyncCache.Overlay:FindFirstChild("DustyPeopleClipFrame")
        if not SyncCache.ClipFrame then
            SyncCache.ClipFrame = Instance.new("ScrollingFrame")
            SyncCache.ClipFrame.Name = "DustyPeopleClipFrame"
            SyncCache.ClipFrame.BackgroundTransparency = 1
            SyncCache.ClipFrame.BorderSizePixel = 0
            SyncCache.ClipFrame.ScrollBarThickness = 6 
            SyncCache.ClipFrame.ScrollBarImageColor3 = Color3.fromRGB(180, 180, 180)
            SyncCache.ClipFrame.ScrollingDirection = Enum.ScrollingDirection.Y
            SyncCache.ClipFrame.Active = true
            SyncCache.ClipFrame.ZIndex = 10
            SyncCache.ClipFrame.Parent = SyncCache.Overlay
        end
    end

    local clipFrame = SyncCache.ClipFrame
    clipFrame.Visible = true
    clipFrame.Position = UDim2.fromOffset(pageView.AbsolutePosition.X, pageView.AbsolutePosition.Y)
    clipFrame.Size = UDim2.fromOffset(pageView.AbsoluteSize.X, pageView.AbsoluteSize.Y)
    local origPos = SyncCache.OriginalInnerPos
    innerFrame.Position = UDim2.new(origPos.X.Scale, origPos.X.Offset, origPos.Y.Scale, origPos.Y.Offset - clipFrame.CanvasPosition.Y)
    local allEntities = {}
    local hashString = ""
    
    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(allEntities, { IsRealPlayer = true, UserId = p.UserId, Name = p.DisplayName, Username = p.Name })
        hashString = hashString .. tostring(p.UserId) .. "_"
    end
    for _, record in pairs(dustyNPC.Records) do
        if not record.Disposed and record.Name and record.Model and record.Model.Parent then
            table.insert(allEntities, record)
            hashString = hashString .. tostring(record.UserId or record.Id) .. "_"
        end
    end

    local isDataChanged = (hashString ~= SyncCache.LastEntityHash)

    if isDataChanged then
        SyncCache.LastEntityHash = hashString

        for _, child in ipairs(container:GetChildren()) do
            if child:IsA("GuiObject") and child.Name:match("^VirtualizedItem_%d+$") then
                child.Visible = false
            end
        end

        for key, card in pairs(DustyPeopleInjector.Cards) do
            local found = false
            for _, ent in ipairs(allEntities) do
                local entKey = (ent.IsRealPlayer and "P_" or "N_") .. tostring(ent.UserId or ent.Id)
                if key == entKey then found = true break end
            end
            if not found then
                card:Destroy()
                DustyPeopleInjector.Cards[key] = nil
            end
        end

        -- 3. RENDER GRID
        local cardSize = DustyPeopleInjector.Style.Size
        local gapX, gapY = 12, 12
        local scrollBarWidth = clipFrame.ScrollBarThickness > 0 and clipFrame.ScrollBarThickness or 0
        local availableWidth = pageView.AbsoluteSize.X - scrollBarWidth - 4
        local cols = math.max(1, math.floor((availableWidth + gapX) / (cardSize.X + gapX)))
        local totalRows = math.ceil(#allEntities / cols)
        
        local paddingTop = 133 
        local paddingLeft = 12

        for i, ent in ipairs(allEntities) do
            local key = (ent.IsRealPlayer and "P_" or "N_") .. tostring(ent.UserId or ent.Id)
            local card = DustyPeopleInjector.Cards[key]

            if not card then
                card = buildDustyPeopleCard(ent)
                card.Parent = clipFrame
                DustyPeopleInjector.Cards[key] = card
            else
                updateDustyPeopleCard(card, ent)
            end

            local idx = i - 1
            local col = idx % cols
            local row = math.floor(idx / cols)

            local x = paddingLeft + col * (cardSize.X + gapX)
            local y = paddingTop + row * (cardSize.Y + gapY)

            card.Position = UDim2.fromOffset(x, y)
            card.Size = UDim2.fromOffset(cardSize.X, cardSize.Y)
            card.Visible = true
        end

        local totalHeight = paddingTop + (totalRows * (cardSize.Y + gapY)) + 50
        clipFrame.CanvasSize = UDim2.fromOffset(0, totalHeight)
    else
        for _, card in pairs(DustyPeopleInjector.Cards) do
            card.Visible = true
        end
    end
end

local RunService = game:GetService("RunService")

task.spawn(function()
    while DustyPeopleInjector.Active and DustyRuntime.Active do
        local ok, err = pcall(syncDustyPeopleCards)
        if not ok then
        end
        RunService.RenderStepped:Wait()
    end

    clearDustyPeopleCards()
    local overlay = DustyPeopleCoreGui:FindFirstChild(
        "DustyPeopleNativeCardOverlay"
    )
    if overlay then overlay:Destroy() end
end)
