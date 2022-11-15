if not game:IsLoaded() then 

    repeat game.Loaded:wait(0.2) 

        wait(10)

    until game:IsLoaded() 

end

-----------------------------------------

	do  local ui =  game:GetService("CoreGui"):FindFirstChild("kimchidoao")  if ui then ui:Destroy() end end

	local UserInputService = game:GetService("UserInputService")

	local TweenService = game:GetService("TweenService")

	local RunService = game:GetService("RunService")

	local LocalPlayer = game:GetService("Players").LocalPlayer

	local Mouse = LocalPlayer:GetMouse()

	local tween = game:GetService("TweenService")

	local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}

	local PresetColor = Color3.fromRGB(66, 134, 255)

	coroutine.wrap(

		function()

			while wait(0.2) do

				Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255

				Red.HueSelectionPosition = Red.HueSelectionPosition + 1

				if Red.RainbowColorValue >= 1 then

					Red.RainbowColorValue = 0

				end

				if Red.HueSelectionPosition == 160 then

					Red.HueSelectionPosition = 0

				end

			end

		end

	)()

	local Reduisceen = Instance.new("ScreenGui")

	Reduisceen.Parent = game:GetService("CoreGui")

	Reduisceen.Name = "kimchidoao"

	Reduisceen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local function MakeDraggable(topbarobject, object)

		local Dragging = nil

		local DragInput = nil

		local DragStart = nil

		local StartPosition = nil

		local function Update(input)

			local Delta = input.Position - DragStart

			local pos =

				UDim2.new(

				StartPosition.X.Scale,

				StartPosition.X.Offset + Delta.X,

				StartPosition.Y.Scale,

				StartPosition.Y.Offset + Delta.Y

			)

			local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})

			Tween:Play()

		end

		topbarobject.InputBegan:Connect(

			function(input)

				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then

					Dragging = true

					DragStart = input.Position

					StartPosition = object.Position

					input.Changed:Connect(

						function()

							if input.UserInputpage2e == Enum.UserInputpage2e.End then

								Dragging = false

							end

						end

					)

				end

			end

		)

		topbarobject.InputChanged:Connect(

			function(input)

				if

					input.UserInputType == Enum.UserInputType.MouseMovement or

						input.UserInputType == Enum.UserInputType.Touch

				then

					DragInput = input

				end

			end

		)

		UserInputService.InputChanged:Connect(

			function(input)

				if input == DragInput and Dragging then

					Update(input)

				end

			end

		)

	end

	local function Tween(instance, properties,style,wa)

		if style == nil or "" then

			return Back

		end

		tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()

	end

	local create = {}

	function create:Win(text)

		local fs = false

		local MainSceen = Instance.new("Frame")

		MainSceen.Name = "MainSceen"

		MainSceen.Parent = Reduisceen

		MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)

		MainSceen.BackgroundColor3 = Color3.fromRGB(15,15,15)

		MainSceen.BorderSizePixel = 10

		MainSceen.BorderColor3 = Color3.fromRGB(255,255,255)

		MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)

		MainSceen.Size = UDim2.new(0, 0, 0, 0)

		MainSceen.ClipsDescendants = true

		local Main_UiConner  = Instance.new("UICorner")

		Main_UiConner.CornerRadius = UDim.new(0, 4)

		Main_UiConner.Name = "Main_UiConner"

		Main_UiConner.Parent = MainSceen

		local ClickFrame = Instance.new("Frame")

		ClickFrame.Name = "ClickFrame"

		ClickFrame.Parent = MainSceen

		ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)

		ClickFrame.BackgroundColor3 = Color3.fromRGB(255,0,0)

		ClickFrame.BorderSizePixel = 0

		ClickFrame.Position = UDim2.new(0.5, 0, 0.025, 0)

		ClickFrame.Size = UDim2.new(0, 234-20, 0, 25)

		ClickFrame.ClipsDescendants = true

		ClickFrame.BackgroundTransparency = 1

		MakeDraggable(ClickFrame,MainSceen)

		tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 474)}):Play()

		local library = {toggledui = false;}

		spawn(function()

		game:GetService("UserInputService").InputBegan:Connect(function(input)

			pcall(function()

				if input.KeyCode == Enum.KeyCode.RightControl then

					if library.toggledui == false then

						library.toggledui = true

						tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()

						wait(.3)

						Reduisceen.Enabled = false

					else

						library.toggledui = false

						tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 534, 0, 474)}):Play()

						Reduisceen.Enabled = true

					end

				end

			end)

		end)

		end)

		local NameReal = Instance.new("TextLabel")

		NameReal.Parent = MainSceen

		NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

		NameReal.BackgroundTransparency = 1

		NameReal.BorderSizePixel = 0

		NameReal.Position = UDim2.new(0.5, 0, 0.05, 0)

		NameReal.AnchorPoint = Vector2.new(0.5, 0.5)

		NameReal.Size = UDim2.new(0, 136, 0, 34)

		NameReal.Font = Enum.Font.GothamBold

		NameReal.Text = tostring(text)

		NameReal.TextColor3 = Color3.fromRGB(250,0,0)

		NameReal.TextSize = 14.000

		local MainSceen2 = Instance.new("Frame")

		MainSceen2.Name = "MainSceen2"

		MainSceen2.Parent = MainSceen

		MainSceen2.AnchorPoint = Vector2.new(0.5, 0.5)

		MainSceen2.BackgroundColor3 = Color3.fromRGB(18,18,18)

		MainSceen2.BorderSizePixel = 0

		MainSceen2.Position = UDim2.new(0.5, 0, 0.5, 0)

		MainSceen2.Size = UDim2.new(0, 0, 0, 0)

		MainSceen2.ClipsDescendants = true

		local Main_UiConner2  = Instance.new("UICorner")

		Main_UiConner2.CornerRadius = UDim.new(0, 4)

		Main_UiConner2.Name = "Main_UiConner"

		Main_UiConner2.Parent = MainSceen

		MainSceen2:TweenSizeAndPosition(UDim2.new(0, 550-20, 0, 474-50), UDim2.new(0.5, 0, 0.53, 0), "Out", "Back", 0.5, true)

		local ScolTapBarFrame = Instance.new("Frame")

		ScolTapBarFrame.Name = "MainSceen2"

		ScolTapBarFrame.Parent = MainSceen2

		ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)

		ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)

		ScolTapBarFrame.BorderSizePixel = 0

		ScolTapBarFrame.BackgroundTransparency = 1

		ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.07, 0)

		ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)

		ScolTapBarFrame.ClipsDescendants = true

		local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

		ScrollingFrame_Menubar.Parent = ScolTapBarFrame

		ScrollingFrame_Menubar.Active = true

		ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

		ScrollingFrame_Menubar.BackgroundTransparency = 1

		ScrollingFrame_Menubar.BorderSizePixel = 0

		ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)

		ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)

		ScrollingFrame_Menubar.ScrollBarImageColor3 = Color3.fromRGB(250,0,0)

		ScrollingFrame_Menubar.ScrollBarThickness = 3

		local UIListLayout_Menubar = Instance.new("UIListLayout")

		UIListLayout_Menubar.Parent = ScrollingFrame_Menubar

		UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal

		UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder

		UIListLayout_Menubar.Padding = UDim.new(0, 10)

		local UIPadding_Menubar = Instance.new("UIPadding")

		UIPadding_Menubar.Parent = ScrollingFrame_Menubar

		UIPadding_Menubar.PaddingTop = UDim.new(0, 2)

		local PageOrders = -1

		local Container_Page = Instance.new('Frame',MainSceen2)

		Container_Page.Size = UDim2.new(0, 518, 0, 268)

		Container_Page.Position = UDim2.new(0.5, 0, 0.45, 0)

		Container_Page.BackgroundTransparency = 1

		Container_Page.Name = "Page "

		Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)

		local pagesFolder = Instance.new("Folder")

		pagesFolder.Name = "pagesFolder"

		pagesFolder.Parent = Container_Page

		local UIPage = Instance.new('UIPageLayout',pagesFolder)

		UIPage.SortOrder = Enum.SortOrder.LayoutOrder

		UIPage.EasingDirection = Enum.EasingDirection.InOut

		UIPage.EasingStyle = Enum.EasingStyle.Quad

		UIPage.Padding = UDim.new(0, 10)

		UIPage.TweenTime = 0.500

		local top = {}

		local NotiFrame = Instance.new("Frame")

		NotiFrame.Name = "NotiFrame"

		NotiFrame.Parent = Reduisceen

		NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)

		NotiFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)

		NotiFrame.BorderSizePixel = 0

		NotiFrame.Position =  UDim2.new(1, -210, 1, -500)

		NotiFrame.Size = UDim2.new(0, 400, 0, 500)

		NotiFrame.ClipsDescendants = true

		NotiFrame.BackgroundTransparency = 1

		local Notilistlayout = Instance.new("UIListLayout")

		Notilistlayout.Parent = NotiFrame

		Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder

		Notilistlayout.Padding = UDim.new(0, 5)

		function create:Notifile(titel,text,delays)

			local TitleFrame = Instance.new("Frame")

			TitleFrame.Name = "TitleFrame"

			TitleFrame.Parent = NotiFrame

			TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)

			TitleFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)

			TitleFrame.BorderSizePixel = 0

			TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)

			TitleFrame.Size = UDim2.new(0, 0, 0, 0)

			TitleFrame.ClipsDescendants = true

			TitleFrame.BackgroundTransparency = 0

			local ConnerTitile = Instance.new("UICorner")

			ConnerTitile.CornerRadius = UDim.new(0, 4)

			ConnerTitile.Name = ""

			ConnerTitile.Parent = TitleFrame

			TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)

			local imagenoti = Instance.new("ImageLabel")

			imagenoti.Parent = TitleFrame

			imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			imagenoti.BackgroundTransparency = 1.000

			imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)

			imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)

			imagenoti.Size = UDim2.new(0, 50, 0, 50)

		 imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=7578496318&width=0&height=0&format=png"

			local txdlid = Instance.new("TextLabel")

			txdlid.Parent = TitleFrame

			txdlid.Name = "TextLabel_Tap"

			txdlid.BackgroundColor3 = Color3.fromRGB(255,0,0)

			txdlid.Size =UDim2.new(0, 160, 0,25 )

			txdlid.Font = Enum.Font.GothamBold

			txdlid.Text = titel

			txdlid.TextColor3 = Color3.fromRGB(250,0,0)

			txdlid.TextSize = 13.000

			txdlid.AnchorPoint = Vector2.new(0.5, 0.5)

			txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)

			-- txdlid.TextYAlignment = Enum.TextYAlignment.Top

			txdlid.TextXAlignment = Enum.TextXAlignment.Left

			txdlid.BackgroundTransparency = 1

			local LableFrame = Instance.new("Frame")

			LableFrame.Name = "LableFrame"

			LableFrame.Parent = TitleFrame

			LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)

			LableFrame.BackgroundColor3 = Color3.fromRGB(250,0,0)

			LableFrame.BorderSizePixel = 0

			LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)

			LableFrame.Size = UDim2.new(0, 260, 0,25 )

			LableFrame.ClipsDescendants = true

			LableFrame.BackgroundTransparency = 1

			local TextNoti = Instance.new("TextLabel")

			TextNoti.Parent = LableFrame

			TextNoti.Name = "TextLabel_Tap"

			TextNoti.BackgroundColor3 = Color3.fromRGB(250,0,0)

			TextNoti.Size =UDim2.new(0, 260, 0,25 )

			TextNoti.Font = Enum.Font.GothamBold

			TextNoti.Text = text

			TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)

			TextNoti.TextSize = 13.000

			TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)

			TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)

			-- TextNoti.TextYAlignment = Enum.TextYAlignment.Top

			TextNoti.TextXAlignment = Enum.TextXAlignment.Left

			TextNoti.BackgroundTransparency = 1

			repeat wait(0.2) until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)

			local Time = Instance.new("Frame")

			Time.Name = "Time"

			Time.Parent = TitleFrame

	--Time.AnchorPoint = Vector2.new(0.5, 0.5)

			Time.BackgroundColor3 =  Color3.fromRGB(250,0,0)

			Time.BorderSizePixel = 0

			Time.Position =  UDim2.new(0, 0, 0.,0)

			Time.Size = UDim2.new(0, 0,0,0)

			Time.ClipsDescendants = false

			Time.BackgroundTransparency = 0

			local ConnerTitile_Time = Instance.new("UICorner")

			ConnerTitile_Time.CornerRadius = UDim.new(0, 4)

			ConnerTitile_Time.Name = ""

			ConnerTitile_Time.Parent = Time

			Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)

			repeat wait(0.2) until Time.Size == UDim2.new(0, 400-10, 0, 3)

			TweenService:Create(

				Time,

				TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

				{Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)

			):Play()

			delay(tonumber(delays),function()

				TweenService:Create(

					TitleFrame,

					TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),

					{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				wait(0.3)

				TitleFrame:Destroy()

			end

		)

		end

		function top:Taps(text)

			PageOrders = PageOrders + 1

			local name = tostring(text) or tostring(math.random(1,5000))

			local Frame_Tap = Instance.new("Frame")

			Frame_Tap.Parent = ScrollingFrame_Menubar

			Frame_Tap.Name = text.."Server"

			Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			Frame_Tap.BackgroundTransparency = 1

			Frame_Tap.Position = UDim2.new(0.0, 0, 0.0, 0)

			Frame_Tap.Size = UDim2.new(0, 100, 0, 25)

			Frame_Tap.Visible = true

			local TextLabel_Tap = Instance.new("TextLabel")

			TextLabel_Tap.Parent = Frame_Tap

			TextLabel_Tap.Name = "TextLabel_Tap"

			TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(250,0,0)

			TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.8, 0)

			TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)

			TextLabel_Tap.Font = Enum.Font.SourceSans

			TextLabel_Tap.Text = " "

			TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)

			TextLabel_Tap.TextSize = 14.000

			TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)

			local TextButton_Tap = Instance.new("TextButton")

			TextButton_Tap.Parent = Frame_Tap

			TextButton_Tap.Name = "TextButton_Tap"

			TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			TextButton_Tap.BackgroundTransparency = 1.000

			TextButton_Tap.Position = UDim2.new(0.114491031, 0, -0.0216345787, 0)

			TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)

			TextButton_Tap.Font = Enum.Font.GothamSemibold

			TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)

			TextButton_Tap.TextSize = 13.000

			TextButton_Tap.Text = tostring(text)

			local MainPage = Instance.new("Frame")

			MainPage.Name = name.."_MainPage"

			MainPage.Parent = pagesFolder

			MainPage.BackgroundColor3 = Color3.fromRGB(255,255, 255)

			MainPage.BorderSizePixel = 0

			MainPage.Position = UDim2.new(0.5, 0, 0.5, 0) -- UDim2.new(0.0149812736, 0, 0.13, 0)

			MainPage.Size = UDim2.new(0, 518, 0, 375)

			MainPage.BackgroundTransparency = 1

			MainPage.ClipsDescendants = true

			MainPage.Visible = true

			MainPage.LayoutOrder = PageOrders

			TextButton_Tap.MouseButton1Click:connect(function()

				if MainPage.Name == text.."_MainPage" then

					UIPage:JumpToIndex(MainPage.LayoutOrder)

				end

				for i ,v in next , ScrollingFrame_Menubar:GetChildren() do

					if v:IsA("Frame") then

						TweenService:Create(

							v.TextButton_Tap,

							TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{TextColor3 = Color3.fromRGB(155, 155, 155)}

						):Play()

					end

					TweenService:Create(

						TextButton_Tap,

						TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(250,0,0)}

					):Play()

				end

			end)

			if fs == false then

				-- TweenService:Create(

				--     TextLabel_Tap,

				--     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

				--     {Size = UDim2.new(0, 70, 0, 2)}

				-- ):Play()

				TweenService:Create(

					TextButton_Tap,

					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{TextColor3 = Color3.fromRGB(250,0,0)}

				):Play()

				MainPage.Visible = true

				Frame_Tap.Name  = text .. "Server"

				fs  = true

			end

			local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")

			ScrollingFrame_Pagefrist.Parent = MainPage

			ScrollingFrame_Pagefrist.Active = true

			ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(253, 172, 171) -- 250,0,0

			ScrollingFrame_Pagefrist.BorderSizePixel = 0

			ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 375)

			ScrollingFrame_Pagefrist.ScrollBarThickness = 4

			ScrollingFrame_Pagefrist.ScrollBarImageColor3 = Color3.fromRGB(250,0,0) -- 250,0,0

			local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")

			local UIPadding_Pagefrist = Instance.new("UIPadding")

			UIGridLayout_Pagefrist.Archivable = false

			UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist

			UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder

			UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)

			UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 340)

			UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist

			UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)

			UIPadding_Pagefrist.PaddingTop = UDim.new(0, 20)

			local page = {}

			function page:newpage()

				local Pageframe = Instance.new("Frame")

				Pageframe.Parent = ScrollingFrame_Pagefrist

				Pageframe.BackgroundColor3 = Color3.fromRGB(253, 172, 171)

				Pageframe.BorderSizePixel = 1

				Pageframe.Position = UDim2.new(0.028957529, 0, 0.0496277921, 0)

				Pageframe.Size = UDim2.new(0, 240, 0, 340)

				local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")

				ScrollingFrame_Pageframe.Parent = Pageframe

				ScrollingFrame_Pageframe.Active = true

				ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

				ScrollingFrame_Pageframe.BorderColor3 = Color3.fromRGB(250,0,0)

				ScrollingFrame_Pageframe.BorderSizePixel = 1

				ScrollingFrame_Pageframe.Position = UDim2.new(0, 0, -0.0101253344, 0)

				ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 340)

				ScrollingFrame_Pageframe.ScrollBarThickness = 4

				ScrollingFrame_Pageframe.ScrollBarImageColor3 = Color3.fromRGB(205, 222, 222)

				local UIPadding_Pageframe = Instance.new("UIPadding")

				local UIListLayout_Pageframe = Instance.new("UIListLayout")

				UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe

				UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)

				UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)

				UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe

				UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder

				UIListLayout_Pageframe.Padding = UDim.new(0, 10)

				UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()

					ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )

				end)

				UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()

					ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )

				end)

				game:GetService("RunService").Stepped:Connect(function ()

					pcall(function ()

						ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)

						ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 20 )

						ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 40)

					end)

				end)

			local items = {}

			function items:Toggle(text,config,callback)

				local Toggle = Instance.new("Frame")

				Toggle.Parent = ScrollingFrame_Pageframe

				Toggle.BackgroundColor3 = Color3.fromRGB(15, 255,255)

				Toggle.BorderSizePixel = 0

				Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)

				Toggle.Size = UDim2.new(0, 213, 0, 35)

				Toggle.BackgroundTransparency = 1

				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Parent = Toggle

				TextButton_Toggle.BackgroundTransparency =1

				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(253, 172, 251)

				TextButton_Toggle.BorderSizePixel = 0

				TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)

				TextButton_Toggle.AutoButtonColor = false

				TextButton_Toggle.Font = Enum.Font.SourceSans

				TextButton_Toggle.Text = " "

				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_Toggle.TextSize = 12.000

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Parent = TextButton_Toggle

				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(253, 172, 171)

		--        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

				TextButton_2_Toggle.BorderSizePixel = 0

				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_2_Toggle.Position = UDim2.new(0.9, 0, 0.5, 0)

				TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)

				TextButton_2_Toggle.Font = Enum.Font.SourceSans

				TextButton_2_Toggle.Text = " "

				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_2_Toggle.TextSize = 12.000

				TextButton_2_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)

				TextButton_Pageframe_Uiconner.Name = ""

				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Parent = TextButton_2_Toggle

				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(253, 172, 171)

		--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

				TextButton_3_Toggle.BorderSizePixel = 0

				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)

				TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)

				TextButton_3_Toggle.Font = Enum.Font.SourceSans

				TextButton_3_Toggle.Text = " "

				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_3_Toggle.TextSize = 12.000

				TextButton_3_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)

				TextButton_Pageframe_Uiconner2.Name = ""

				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextButton_4_Toggle = Instance.new("TextButton")

				TextButton_4_Toggle.Parent = TextButton_3_Toggle

				TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(253, 172, 171)

		--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

				TextButton_4_Toggle.BorderSizePixel = 0

				TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)

				TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)

				TextButton_4_Toggle.Font = Enum.Font.SourceSans

				TextButton_4_Toggle.Text = " "

				TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_4_Toggle.TextSize = 12.000

				TextButton_4_Toggle.AutoButtonColor = false

				TextButton_4_Toggle.BackgroundTransparency = 1

				TextButton_4_Toggle.Visible = true

				local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)

				TextButton_Pageframe_Uiconner4.Name = ""

				TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

				local TextLabel_Toggle = Instance.new("TextLabel")

				TextLabel_Toggle.Parent = Toggle

				TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(253, 172, 171)

				TextLabel_Toggle.BackgroundTransparency = 1

				TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextLabel_Toggle.Position = UDim2.new(0.4, 0, 0.5, 0)

				TextLabel_Toggle.BorderSizePixel = 0

				TextLabel_Toggle.Size = UDim2.new(0, 130, 0, 25)

				TextLabel_Toggle.Font = Enum.Font.GothamSemibold

				TextLabel_Toggle.Text = text

				TextLabel_Toggle.TextColor3 = Color3.fromRGB(200, 240, 200)

				TextLabel_Toggle.TextSize = 13.000

				TextLabel_Toggle.ClipsDescendants = true

				TextLabel_Toggle.TextWrapped = true

				TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

				local TextButton_Toggle2 = Instance.new("TextButton")

				TextButton_Toggle2.Parent = TextButton_Toggle

				TextButton_Toggle2.BackgroundTransparency =1

				TextButton_Toggle2.BackgroundColor3 = Color3.fromRGB(253, 172, 171)

				TextButton_Toggle2.BorderSizePixel = 0

				TextButton_Toggle2.Size = UDim2.new(0, 213, 0, 35)

				TextButton_Toggle2.AutoButtonColor = false

				TextButton_Toggle2.Font = Enum.Font.SourceSans

				TextButton_Toggle2.Text = " "

				TextButton_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_Toggle2.TextSize = 12.000

				TextButton_Toggle2.MouseEnter:Connect(function()

					TweenService:Create(

						TextButton_4_Toggle,

						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextLabel_Toggle,

						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(253, 172, 171)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

			TextButton_Toggle2.MouseLeave:Connect(function()

					TweenService:Create(

						TextButton_4_Toggle,

						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextLabel_Toggle,

						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(253, 272, 171)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

			local check = {toogle = false ; loacker = true ; togfunction = {

			};

		}

		TextButton_Toggle2.MouseButton1Click:Connect(function()

				if check.toogle == false and check.loacker == true  then

					TweenService:Create(

						TextButton_4_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_3_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_2_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

				elseif  check.loacker ==  true then

					TweenService:Create(

						TextButton_4_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(253, 172, 171)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_3_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(253, 172, 171)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_2_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

				end

				if  check.loacker == true  then

				check.toogle = not check.toogle

				callback(check.toogle)

				end

			end

		)

			if config == true then

				TweenService:Create(

					TextButton_4_Toggle,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					TextButton_3_Toggle,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					TextButton_2_Toggle,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

				check.toogle = true

				callback(check.toogle)

			end

			local lockerframe = Instance.new("Frame")

			lockerframe.Name = "lockerframe"

			lockerframe.Parent = Toggle

			lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

			lockerframe.BackgroundTransparency = 1

			lockerframe.Size = UDim2.new(0, 320, 0, 35)

			lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)

			lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

			local LockerImageLabel = Instance.new("ImageLabel")

			LockerImageLabel.Parent = lockerframe

			LockerImageLabel.BackgroundTransparency = 1.000

			LockerImageLabel.BorderSizePixel = 0

			LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)

			LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)

			LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)

			LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"

			function check.togfunction:lock()

				TweenService:Create(

					lockerframe,

					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),

					{BackgroundTransparency = 0.7}

				):Play()

				TweenService:Create(

					LockerImageLabel,

					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),

					{Size = UDim2.new(0, 30, 0, 30)}

				):Play()

				check.loacker  = false

			--    pcall(callback,locker)

			end

			function check.togfunction:unlock()

				TweenService:Create(

					lockerframe,

					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),

					{BackgroundTransparency = 1}

				):Play()

				TweenService:Create(

					LockerImageLabel,

					TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),

					{Size = UDim2.new(0, 0, 0, 0)}

				):Play()

				check.loacker  = true

			--   pcall(callback,locker)

			end

				return  check.togfunction

			end

			function items:Button(text,callback)

				local ButtonFrame = Instance.new("Frame")

				ButtonFrame.Name = "ButtonFrame"

				ButtonFrame.Parent = ScrollingFrame_Pageframe

				ButtonFrame.BackgroundColor3 = Color3.fromRGB(250,0,0)

				ButtonFrame.BorderSizePixel = 0

				ButtonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				ButtonFrame.Size = UDim2.new(0, 213, 0, 25) -- UDim2.new(0, 213, 0, 35)

				ButtonFrame.BackgroundTransparency  = 1

				ButtonFrame.ClipsDescendants = true

				local MheeFrameStroke = Instance.new("UIStroke")

				MheeFrameStroke.Thickness = 0

				MheeFrameStroke.Name = ""

				MheeFrameStroke.Parent = ButtonFrame

				MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round

				MheeFrameStroke.Color = Color3.fromRGB(250,0,0)

				MheeFrameStroke.Transparency = 0.7

				local Button = Instance.new("TextButton")

				Button.Parent = ButtonFrame

				Button.Name = "Button"

				Button.BackgroundColor3 = Color3.fromRGB(250,0,0)

				Button.Size = UDim2.new(0,150, 0, 25)

				Button.Font = Enum.Font.SourceSansSemibold

				Button.Text = tostring(text)

				Button.TextColor3 = Color3.fromRGB(155, 155, 155)

				Button.TextSize = 13.000

				Button.AnchorPoint = Vector2.new(0.5, 0.5)

				Button.Position = UDim2.new(0.5, 0, 0.5, 0)

				Button.TextXAlignment = Enum.TextXAlignment.Center

				Button.BackgroundTransparency = 0.6

				Button.TextWrapped = true

				Button.AutoButtonColor = false

				Button.ClipsDescendants = true

				local ConnerPageMhee = Instance.new("UICorner")

				ConnerPageMhee.CornerRadius = UDim.new(0, 4)

				ConnerPageMhee.Name = ""

				ConnerPageMhee.Parent = Button

				Button.MouseEnter:Connect(function()

					TweenService:Create(

						Button,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size =  UDim2.new(0, 213, 0, 25)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						Button,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						Button,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(15, 15, 15)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

				Button.MouseLeave:Connect(function()

					TweenService:Create(

						Button,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size =  UDim2.new(0, 150, 0, 25)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						Button,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						Button,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

			Button.MouseButton1Click:Connect(function()

			--    Ripple(Button)

				callback()

				TweenService:Create(

					Button,

					TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),

					{BackgroundTransparency = 0.6},

					{TextSize =  16} -- UDim2.new(0, 128, 0, 25)

				):Play()

				wait(0.1)

				TweenService:Create(

					Button,

					TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),

					{BackgroundTransparency = 0},

					{TextSize =  13} -- UDim2.new(0, 128, 0, 25)

					

				):Play()

			end

		)

			end

			function items:Slider(text,check,floor,min,max,de,lol,tog,callback)

			if check then

				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"

				SliderFrame.Parent = ScrollingFrame_Pageframe

				SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- Color3.fromRGB(250,0,0)

				SliderFrame.BorderSizePixel = 0

				SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)

				SliderFrame.BackgroundTransparency  = 0

				SliderFrame.ClipsDescendants = true

				local SliderFrameConner = Instance.new("UICorner")

				SliderFrameConner.CornerRadius = UDim.new(0, 4)

				SliderFrameConner.Name = ""

				SliderFrameConner.Parent = SliderFrame

				local SliderFrameStroke = Instance.new("UIStroke")

				SliderFrameStroke.Thickness = 1

				SliderFrameStroke.Name = ""

				SliderFrameStroke.Parent = SliderFrame

				SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round

				SliderFrameStroke.Color = Color3.fromRGB(250,0,0)

				SliderFrameStroke.Transparency = 0.7

				SliderFrame.MouseEnter:Connect(function()

					TweenService:Create(

						SliderFrameStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

				SliderFrame.MouseLeave:Connect(function()

					TweenService:Create(

						SliderFrameStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = SliderFrame

				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				LabelNameSliderxd.BackgroundTransparency = 1

				LabelNameSliderxd.BorderSizePixel = 0

				LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)

				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)

				LabelNameSliderxd.Font = Enum.Font.GothamBold

				LabelNameSliderxd.Text = tostring(text)

				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)

				LabelNameSliderxd.TextSize = 11.000

				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left

				local ShowValueFarm = Instance.new("Frame")

				ShowValueFarm.Name = "ShowValueFarm"

				ShowValueFarm.Parent = SliderFrame

				ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

				ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)

				ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)

				ShowValueFarm.BackgroundTransparency = 0

				ShowValueFarm.BorderSizePixel = 0

				ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)

				ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)

				ShowValueFarm.ClipsDescendants = false

				local CustomValue = Instance.new("TextBox")

				CustomValue.Parent = ShowValueFarm

				CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)

				CustomValue.BorderSizePixel = 0

				CustomValue.ClipsDescendants = true

				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)

				CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)

				CustomValue.Size = UDim2.new(0, 158, 0, 26)

				CustomValue.Font = Enum.Font.GothamSemibold

				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)

				CustomValue.PlaceholderText =  ""

				if floor == true then

					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)

				else

					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)

				end

				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)

				CustomValue.TextSize = 8.000

				CustomValue.BackgroundTransparency = 1

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"

				ValueFrame.Parent = SliderFrame

				ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

				ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)

				ValueFrame.Size = UDim2.new(0, 140, 0, 5)

				ValueFrame.BackgroundTransparency = 0

				ValueFrame.BorderSizePixel = 0

				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				ValueFrame.Position = UDim2.new(0.4, 0, 0.8, 0)

				ValueFrame.ClipsDescendants = false

				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"

				PartValue.Parent = ValueFrame

				PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)

				PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)

				PartValue.Size = UDim2.new(0, 140, 0, 5)

				PartValue.BackgroundTransparency = 1

				PartValue.BorderSizePixel = 0

				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)

				PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)

				PartValue.ClipsDescendants = false

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"

				MainValue.Parent = PartValue

				MainValue.BackgroundColor3 = Color3.fromRGB(250,0,0)

				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)

				MainValue.BackgroundTransparency = 0

				MainValue.BorderSizePixel = 0

				-- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)

				MainValue.Position = UDim2.new(0., 0, 0.0, 0)

				MainValue.ClipsDescendants = false

				local Conner_S1 = Instance.new("UICorner")

				Conner_S1.CornerRadius = UDim.new(0, 8)

				Conner_S1.Name = ""

				Conner_S1.Parent = MainValue

				local Conner_S2 = Instance.new("UICorner")

				Conner_S2.CornerRadius = UDim.new(0, 8)

				Conner_S2.Name = ""

				Conner_S2.Parent = ValueFrame

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"

				ConneValue.Parent = PartValue

				ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				ConneValue.Size = UDim2.new(0, 13, 0,13)

				ConneValue.BackgroundTransparency = 0

				ConneValue.BorderSizePixel = 0

				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)

				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)

				ConneValue.ClipsDescendants = false

				local Conner_Conne = Instance.new("UICorner")

				Conner_Conne.CornerRadius = UDim.new(0, 300)

				Conner_Conne.Name = ""

				Conner_Conne.Parent = ConneValue

				local Addvalue = Instance.new("ImageButton")

				Addvalue.Name = "Imatog"

				Addvalue.Parent = SliderFrame

				Addvalue.BackgroundTransparency = 1.000

				Addvalue.BorderSizePixel = 0

				Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)

				Addvalue.Size = UDim2.new(0, 15, 0, 15)

				Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"

				Addvalue.ImageColor3 =  Color3.fromRGB(250,0,0)

				local Deletevalue = Instance.new("ImageButton")

				Deletevalue.Name = "Imatog"

				Deletevalue.Parent = SliderFrame

				Deletevalue.BackgroundTransparency = 1.000

				Deletevalue.BorderSizePixel = 0

				Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)

				Deletevalue.Size = UDim2.new(0, 15, 0, 15)

				Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"

				Deletevalue.ImageColor3 =  Color3.fromRGB(250,0,0)

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Parent = ValueFrame

				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)

		--        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

				TextButton_2_Toggle.BorderSizePixel = 0

				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_2_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

				TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)

				TextButton_2_Toggle.Font = Enum.Font.SourceSans

				TextButton_2_Toggle.Text = " "

				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_2_Toggle.TextSize = 12.000

				TextButton_2_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)

				TextButton_Pageframe_Uiconner.Name = ""

				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Parent = TextButton_2_Toggle

				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)

		--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

				TextButton_3_Toggle.BorderSizePixel = 0

				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)

				TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)

				TextButton_3_Toggle.Font = Enum.Font.SourceSans

				TextButton_3_Toggle.Text = " "

				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_3_Toggle.TextSize = 12.000

				TextButton_3_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)

				TextButton_Pageframe_Uiconner2.Name = ""

				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextButton_4_Toggle = Instance.new("TextButton")

				TextButton_4_Toggle.Parent = TextButton_3_Toggle

				TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)

		--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

				TextButton_4_Toggle.BorderSizePixel = 0

				TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)

				TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)

				TextButton_4_Toggle.Font = Enum.Font.SourceSans

				TextButton_4_Toggle.Text = " "

				TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_4_Toggle.TextSize = 12.000

				TextButton_4_Toggle.AutoButtonColor = false

				TextButton_4_Toggle.BackgroundTransparency = 1

				TextButton_4_Toggle.Visible = true

				local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)

				TextButton_Pageframe_Uiconner4.Name = ""

				TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Parent = ValueFrame

				TextButton_Toggle.BackgroundTransparency =1

				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				TextButton_Toggle.BorderSizePixel = 0

				TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)

				TextButton_Toggle.AutoButtonColor = false

				TextButton_Toggle.Font = Enum.Font.SourceSans

				TextButton_Toggle.Text = " "

				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_Toggle.TextSize = 12.000

				TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

			-- local value = de

			local check2 = {toogle2 = false;}

				local function move(input)

					local pos =

						UDim2.new(

							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),

							0,

							0.3,

							0

						)

					local pos1 =

						UDim2.new(

							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),

							0,

							0,

							5

						)

						MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

						ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)

						if floor == true then

							local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)

							CustomValue.Text = tostring(value)

						--   callback[2] = value

						callback({

							["s"] = value;

							["t"] = check2.toogle2

						})

						--callback({value,check2.toogle2})

							--callback(value)

						else

							local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)

							CustomValue.Text = tostring(value)

							callback({

								["s"] = value;

								["t"] = check2.toogle2

							})

					--       callback({value,check2.toogle2})

						end

					end

					local dragging = false

					ConneValue.InputBegan:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = true

							end

						end

					)

					ConneValue.InputEnded:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = false

							end

						end

					)

					SliderFrame.InputBegan:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = true

							end

						end

					)

					SliderFrame.InputEnded:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = false

							end

						end

					)

					ValueFrame.InputBegan:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = true

							end

						end

					)

					ValueFrame.InputEnded:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = false

							end

						end

					)

					game:GetService("UserInputService").InputChanged:Connect(

						function(input)

							if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then

								move(input)

							end

						end

						)

						CustomValue.FocusLost:Connect(function()

							if CustomValue.Text == "" then

								CustomValue.Text  = de

							end

							if  tonumber(CustomValue.Text) > max then

								CustomValue.Text  = max

							end

							if  tonumber(CustomValue.Text) <= min then

								CustomValue.Text  = min

							end

							MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)

							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)

							if floor == true then

								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )

							else

								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )

							end

							callback({

								["s"] =  CustomValue.Text;

								["t"] = check2.toogle2;

							})

					--       callback({ tonumber(CustomValue.Text),check2.toogle2})

					--  pcall(callback, CustomValue.Text)

						end)

						Addvalue.MouseButton1Click:Connect(function ()

							if CustomValue.Text == "" then

								CustomValue.Text  = de

							end

							pcall(function()

								CustomValue.Text  = CustomValue.Text  - tonumber(lol)

							end)

							if  tonumber(CustomValue.Text) > max then

								CustomValue.Text  = max

							end

							if  tonumber(CustomValue.Text) < min then

								CustomValue.Text  = min

							end

							MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)

							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)

							if floor == true then

								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )

							else

								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )

							end

							callback({

								["s"] =  CustomValue.Text;

								["t"] = check2.toogle2

							})

						--   callback({ tonumber(CustomValue.Text),check2.toogle2})

						--  pcall(callback, CustomValue.Text)

						end)

						Deletevalue.MouseButton1Click:Connect(function ()

							if CustomValue.Text == "" then

								CustomValue.Text  = de

							end

							pcall(function()

								CustomValue.Text  = CustomValue.Text  + tonumber(lol)

							end)

							if  tonumber(CustomValue.Text) > max then

								CustomValue.Text  = max

							end

							if  tonumber(CustomValue.Text) < min then

								CustomValue.Text  = min

							end

							MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)

							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)

							if floor == true then

								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )

							else

								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )

							end

							callback({

								["s"] =  CustomValue.Text;

								["t"] = check2.toogle2;

							})

				--callback({ tonumber(CustomValue.Text),check2.toogle2})

						--  pcall(callback, CustomValue.Text)

						end)

				---

						TextButton_Toggle.MouseEnter:Connect(function()

							TweenService:Create(

								TextButton_4_Toggle,

								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

								{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)

							):Play()

						end

					)

					TextButton_Toggle.MouseLeave:Connect(function()

							TweenService:Create(

								TextButton_4_Toggle,

								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

								{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)

							):Play()

						end

					)

				TextButton_Toggle.MouseButton1Click:Connect(function()

					if check2.toogle2 == false   then

						TweenService:Create(

							TextButton_4_Toggle,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

						):Play()

						TweenService:Create(

							TextButton_3_Toggle,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

						):Play()

						TweenService:Create(

							TextButton_2_Toggle,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)

						):Play()

						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

					else

						TweenService:Create(

							TextButton_4_Toggle,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

						):Play()

						TweenService:Create(

							TextButton_3_Toggle,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

						):Play()

						TweenService:Create(

							TextButton_2_Toggle,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

						):Play()

						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

					end

						check2.toogle2 = not check2.toogle2

						callback({

							["t"] = check2.toogle2;

						})

					--   callback({value,check2.toogle2})

						--callback(check2.toogle2)

				end

			)

				if tog == true then

					TweenService:Create(

						TextButton_4_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_3_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_2_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

					check2.toogle2 = true

					callback({

						["t"] = check2.toogle2;

					})

			--        callback({value,check2.toogle2})

				--  callback(check2.toogle2)

				end

			else

				tog = nil

				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"

				SliderFrame.Parent = ScrollingFrame_Pageframe

				SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- Color3.fromRGB(250,0,0)

				SliderFrame.BorderSizePixel = 0

				SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)

				SliderFrame.BackgroundTransparency  = 0

				SliderFrame.ClipsDescendants = true

				local SliderFrameConner = Instance.new("UICorner")

				SliderFrameConner.CornerRadius = UDim.new(0, 4)

				SliderFrameConner.Name = ""

				SliderFrameConner.Parent = SliderFrame

				local SliderFrameStroke = Instance.new("UIStroke")

				SliderFrameStroke.Thickness = 1

				SliderFrameStroke.Name = ""

				SliderFrameStroke.Parent = SliderFrame

				SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round

				SliderFrameStroke.Color = Color3.fromRGB(250,0,0)

				SliderFrameStroke.Transparency = 0.7

				SliderFrame.MouseEnter:Connect(function()

					TweenService:Create(

						SliderFrameStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

				SliderFrame.MouseLeave:Connect(function()

					TweenService:Create(

						SliderFrameStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = SliderFrame

				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				LabelNameSliderxd.BackgroundTransparency = 1

				LabelNameSliderxd.BorderSizePixel = 0

				LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)

				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)

				LabelNameSliderxd.Font = Enum.Font.GothamBold

				LabelNameSliderxd.Text = tostring(text)

				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)

				LabelNameSliderxd.TextSize = 11.000

				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left

				local ShowValueFarm = Instance.new("Frame")

				ShowValueFarm.Name = "ShowValueFarm"

				ShowValueFarm.Parent = SliderFrame

				ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

				ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)

				ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)

				ShowValueFarm.BackgroundTransparency = 0

				ShowValueFarm.BorderSizePixel = 0

				ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)

				ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)

				ShowValueFarm.ClipsDescendants = false

				local CustomValue = Instance.new("TextBox")

				CustomValue.Parent = ShowValueFarm

				CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)

				CustomValue.BorderSizePixel = 0

				CustomValue.ClipsDescendants = true

				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)

				CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)

				CustomValue.Size = UDim2.new(0, 158, 0, 26)

				CustomValue.Font = Enum.Font.GothamSemibold

				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)

				CustomValue.PlaceholderText =  ""

				if floor == true then

					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)

				else

					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)

				end

				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)

				CustomValue.TextSize = 8.000

				CustomValue.BackgroundTransparency = 1

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"

				ValueFrame.Parent = SliderFrame

				ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

				ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)

				ValueFrame.Size = UDim2.new(0, 190, 0, 5)

				ValueFrame.BackgroundTransparency = 0

				ValueFrame.BorderSizePixel = 0

				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)

				ValueFrame.ClipsDescendants = false

				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"

				PartValue.Parent = ValueFrame

				PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)

				PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)

				PartValue.Size = UDim2.new(0, 190, 0, 5)

				PartValue.BackgroundTransparency = 1

				PartValue.BorderSizePixel = 0

				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)

				PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)

				PartValue.ClipsDescendants = false

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"

				MainValue.Parent = PartValue

				MainValue.BackgroundColor3 = Color3.fromRGB(250,0,0)

				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)

				MainValue.BackgroundTransparency = 0

				MainValue.BorderSizePixel = 0

				-- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)

				MainValue.Position = UDim2.new(0., 0, 0.0, 0)

				MainValue.ClipsDescendants = false

				local Conner_S1 = Instance.new("UICorner")

				Conner_S1.CornerRadius = UDim.new(0, 8)

				Conner_S1.Name = ""

				Conner_S1.Parent = MainValue

				local Conner_S2 = Instance.new("UICorner")

				Conner_S2.CornerRadius = UDim.new(0, 8)

				Conner_S2.Name = ""

				Conner_S2.Parent = ValueFrame

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"

				ConneValue.Parent = PartValue

				ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				ConneValue.Size = UDim2.new(0, 13, 0,13)

				ConneValue.BackgroundTransparency = 0

				ConneValue.BorderSizePixel = 0

				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)

				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)

				ConneValue.ClipsDescendants = false

				local Conner_Conne = Instance.new("UICorner")

				Conner_Conne.CornerRadius = UDim.new(0, 300)

				Conner_Conne.Name = ""

				Conner_Conne.Parent = ConneValue

				local Addvalue = Instance.new("ImageButton")

				Addvalue.Name = "Imatog"

				Addvalue.Parent = SliderFrame

				Addvalue.BackgroundTransparency = 1.000

				Addvalue.BorderSizePixel = 0

				Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)

				Addvalue.Size = UDim2.new(0, 15, 0, 15)

				Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"

				Addvalue.ImageColor3 =  Color3.fromRGB(250,0,0)

				local Deletevalue = Instance.new("ImageButton")

				Deletevalue.Name = "Imatog"

				Deletevalue.Parent = SliderFrame

				Deletevalue.BackgroundTransparency = 1.000

				Deletevalue.BorderSizePixel = 0

				Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)

				Deletevalue.Size = UDim2.new(0, 15, 0, 15)

				Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"

				Deletevalue.ImageColor3 =  Color3.fromRGB(250,0,0)

				local function move(input)

					local pos =

						UDim2.new(

							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),

							0,

							0.3,

							0

						)

					local pos1 =

						UDim2.new(

							math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),

							0,

							0,

							5

						)

						MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

						ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)

						if floor == true then

							local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)

							CustomValue.Text = tostring(value)

							callback(value)

						else

							local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)

							CustomValue.Text = tostring(value)

							callback(value)

						end

					end

					local dragging = false

					ConneValue.InputBegan:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = true

							end

						end

					)

					ConneValue.InputEnded:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = false

							end

						end

					)

					SliderFrame.InputBegan:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = true

							end

						end

					)

					SliderFrame.InputEnded:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = false

							end

						end

					)

					ValueFrame.InputBegan:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = true

							end

						end

					)

					ValueFrame.InputEnded:Connect(

						function(input)

							if input.UserInputType == Enum.UserInputType.MouseButton1 then

								dragging = false

							end

						end

					)

					game:GetService("UserInputService").InputChanged:Connect(

						function(input)

							if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then

								move(input)

							end

						end

						)

						CustomValue.FocusLost:Connect(function()

							if CustomValue.Text == "" then

								CustomValue.Text  = de

							end

							if  tonumber(CustomValue.Text) > max then

								CustomValue.Text  = max

							end

							MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)

							ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)

							if floor == true then

								CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )

							else

								CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )

							end

							pcall(callback, CustomValue.Text)

						end)

				Addvalue.MouseButton1Click:Connect(function ()

					if CustomValue.Text == "" then

						CustomValue.Text  = de

					end

					CustomValue.Text  = CustomValue.Text  - tonumber(lol)

					if  tonumber(CustomValue.Text) > max then

						CustomValue.Text  = max

					end

					if  tonumber(CustomValue.Text) < min then

						CustomValue.Text  = min

					end

					MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)

					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)

					if floor == true then

						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )

					else

						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )

					end

					pcall(callback, CustomValue.Text)

				end)

				Deletevalue.MouseButton1Click:Connect(function ()

					if CustomValue.Text == "" then

						CustomValue.Text  = de

					end

					CustomValue.Text  = CustomValue.Text  + tonumber(lol)

					if  tonumber(CustomValue.Text) > max then

						CustomValue.Text  = max

					end

					if  tonumber(CustomValue.Text) < min then

						CustomValue.Text  = min

					end

					MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)

					ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)

					if floor == true then

						CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )

					else

						CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )

					end

					pcall(callback, CustomValue.Text)

				end)

			end

			end

			function items:Dropdown(text,use,option,callback)

			if use == false then

				local DropFrame = Instance.new("Frame")

				DropFrame.Name = "DropFrame"

				DropFrame.Parent = ScrollingFrame_Pageframe

				DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- Color3.fromRGB(250,0,0)

				DropFrame.BorderSizePixel = 0

				DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)

				DropFrame.BackgroundTransparency  = 0

				DropFrame.ClipsDescendants = true

				local ConnerDropFrame = Instance.new("UICorner")

				ConnerDropFrame.CornerRadius = UDim.new(0, 4)

				ConnerDropFrame.Name = ""

				ConnerDropFrame.Parent = DropFrame

				local DropFrameStroke = Instance.new("UIStroke")

				DropFrameStroke.Thickness = 1

				DropFrameStroke.Name = ""

				DropFrameStroke.Parent = DropFrame

				DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round

				DropFrameStroke.Color = Color3.fromRGB(250,0,0)

				DropFrameStroke.Transparency = 0.7

				local LabelFrameDrop = Instance.new("TextLabel")

				LabelFrameDrop.Parent = DropFrame

				LabelFrameDrop.Name = "LabelFrameDrop"

				LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(250,0,0)

				LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)

				LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)

				LabelFrameDrop.Font = Enum.Font.SourceSansSemibold

				LabelFrameDrop.Text = ""

				LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)

				LabelFrameDrop.TextSize = 14.000

			--   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelFrameDrop.BackgroundTransparency = 1

				LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left

				local TextLabel_TapDrop = Instance.new("TextLabel")

				TextLabel_TapDrop.Parent = LabelFrameDrop

				TextLabel_TapDrop.Name = "TextLabel_TapDrop"

				TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(250,0,0)

				TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)

				TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)

				TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold

				TextLabel_TapDrop.Text = tostring(text).." :"

				TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)

				TextLabel_TapDrop.TextSize = 14.000

		--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)

				TextLabel_TapDrop.BackgroundTransparency = 1

				TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left

				local DropArbt_listimage = Instance.new("ImageButton")

				DropArbt_listimage.Parent = LabelFrameDrop

				DropArbt_listimage.BackgroundTransparency = 1.000

				DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)

				DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)

				DropArbt_listimage.BorderSizePixel = 0

				DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)

				DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"

				DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

				local ScolDown = Instance.new("ScrollingFrame")

				ScolDown.Name = "ScolDown"

				ScolDown.Position = UDim2.new(0.02, 0, 1., 0)

				ScolDown.Parent = LabelFrameDrop

				ScolDown.Active = true

				ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				ScolDown.BorderSizePixel = 0

				ScolDown.Size = UDim2.new(0, 205, 0, 115)

				ScolDown.ScrollBarThickness = 3

				ScolDown.ClipsDescendants = true

				ScolDown.BackgroundTransparency = 1

				ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

				local UIListLayoutlist = Instance.new("UIListLayout")

				local UIPaddinglist = Instance.new("UIPadding")

				UIListLayoutlist.Name = "UIListLayoutlist"

				UIListLayoutlist.Parent = ScolDown

				UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder

				UIListLayoutlist.Padding = UDim.new(0, 5)

				UIPaddinglist.Name = "UIPaddinglist"

				UIPaddinglist.Parent = ScolDown

				UIPaddinglist.PaddingTop = UDim.new(0, 5)

				UIPaddinglist.PaddingLeft = UDim.new(0, 12)

				local ButtonDrop = Instance.new("TextButton")

				ButtonDrop.Parent = DropFrame

				ButtonDrop.Name = "ButtonDrop"

				ButtonDrop.BackgroundColor3 = Color3.fromRGB(250,0,0)

				ButtonDrop.Size = UDim2.new(0, 213, 0, 30)

				ButtonDrop.Font = Enum.Font.SourceSansSemibold

				ButtonDrop.Text = ""

				ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)

				ButtonDrop.TextSize = 13.000

			--   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)

				ButtonDrop.Position = UDim2.new(0., 0, 0., 0)

				ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center

				ButtonDrop.BackgroundTransparency = 1

				ButtonDrop.TextWrapped = true

				ButtonDrop.AutoButtonColor = false

				ButtonDrop.ClipsDescendants = true

				local dog = false

				local FrameSize = 75

				local cout = 0

				for i , v in pairs(option) do

					cout =cout + 1

					if cout == 1 then

						FrameSize = 75

					elseif cout == 2 then

						FrameSize = 110

					elseif cout >= 3 then

						FrameSize = 150

					end

					local ListFrame = Instance.new("Frame")

					ListFrame.Name = "ListFrame"

					ListFrame.Parent = ScolDown

					ListFrame.BackgroundColor3 =  Color3.fromRGB(155,255,255)-- Color3.fromRGB(250,0,0)

					ListFrame.BorderSizePixel = 0

					ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

					ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)

					ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)

					ListFrame.BackgroundTransparency  = 1

					ListFrame.ClipsDescendants = true

					local TextLabel_TapDro2p = Instance.new("TextLabel")

					TextLabel_TapDro2p.Parent = ListFrame

					TextLabel_TapDro2p.Name =  tostring(v).."Dropdown"

					TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(250,0,0)

					TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)

					TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)

					TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold

					TextLabel_TapDro2p.Text = tostring(v)

					TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)

					TextLabel_TapDro2p.TextSize = 14.000

					TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)

					TextLabel_TapDro2p.BackgroundTransparency = 1

					TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

					local ButtonDrop2 = Instance.new("TextButton")

					ButtonDrop2.Parent = ListFrame

					ButtonDrop2.Name = "ButtonDrop2"

					ButtonDrop2.BackgroundColor3 = Color3.fromRGB(250,0,0)

					ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)

					ButtonDrop2.Font = Enum.Font.SourceSansSemibold

					ButtonDrop2.Text = ""

					ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)

					ButtonDrop2.TextSize = 13.000

				--   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)

					ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)

					ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center

					ButtonDrop2.BackgroundTransparency = 1

					ButtonDrop2.TextWrapped = true

					ButtonDrop2.AutoButtonColor = false

					ButtonDrop2.ClipsDescendants = true

					ButtonDrop2.MouseEnter:Connect(function ()

						TweenService:Create(

							TextLabel_TapDro2p,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

						):Play()

					end)

					ButtonDrop2.MouseLeave:Connect(function ()

						TweenService:Create(

							TextLabel_TapDro2p,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

						):Play()

					end)

					ButtonDrop2.MouseButton1Click:Connect(function()

						TweenService:Create(

							DropFrame,

							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)

						):Play()

						TweenService:Create(

							DropArbt_listimage,

							TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),

							{Rotation = 0}

						):Play()

						TextLabel_TapDrop.Text =  text.." : "..tostring(v)

						callback(v)

						dog = not dog

					end

				)

					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

				end

				DropFrame.MouseEnter:Connect(function()

					TweenService:Create(

						DropFrameStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextLabel_TapDrop,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						DropArbt_listimage,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

			DropFrame.MouseLeave:Connect(function()

					TweenService:Create(

						DropFrameStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextLabel_TapDrop,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						DropArbt_listimage,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

			ButtonDrop.MouseButton1Click:Connect(function()

				if dog == false then

					TweenService:Create(

						DropFrame,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						DropArbt_listimage,

						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),

						{Rotation = -180}

					):Play()

					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

				else

					TweenService:Create(

						DropFrame,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						DropArbt_listimage,

						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),

						{Rotation = 0}

					):Play()

					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

				end

				dog = not dog

			end

		)

		ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			local dropfunc = {}

			function dropfunc:Clear()

				TextLabel_TapDrop.Text = tostring(text).." :"

				for i, v in next, ScolDown:GetChildren() do

					if v:IsA("Frame") then

						v:Destroy()

					end

				end

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			end

			function dropfunc:Add(t)

				local ListFrame = Instance.new("Frame")

				ListFrame.Name = "ListFrame"

				ListFrame.Parent = ScolDown

				ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- Color3.fromRGB(250,0,0)

				ListFrame.BorderSizePixel = 0

				ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)

				ListFrame.BackgroundTransparency  = 1

				ListFrame.ClipsDescendants = true

				local TextLabel_TapDro2p = Instance.new("TextLabel")

				TextLabel_TapDro2p.Parent = ListFrame

				TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"

				TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(250,0,0)

				TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)

				TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)

				TextLabel_TapDro2p.Font = Enum.Font.SourceSansSemibold

				TextLabel_TapDro2p.Text = tostring(t)

				TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)

				TextLabel_TapDro2p.TextSize = 14.000

				TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)

				TextLabel_TapDro2p.BackgroundTransparency = 1

				TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

				local ButtonDrop2 = Instance.new("TextButton")

				ButtonDrop2.Parent = ListFrame

				ButtonDrop2.Name = "ButtonDrop2"

				ButtonDrop2.BackgroundColor3 = Color3.fromRGB(250,0,0)

				ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)

				ButtonDrop2.Font = Enum.Font.SourceSansSemibold

				ButtonDrop2.Text = ""

				ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)

				ButtonDrop2.TextSize = 13.000

			--   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)

				ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)

				ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center

				ButtonDrop2.BackgroundTransparency = 1

				ButtonDrop2.TextWrapped = true

				ButtonDrop2.AutoButtonColor = false

				ButtonDrop2.ClipsDescendants = true

				ButtonDrop2.MouseEnter:Connect(function ()

					TweenService:Create(

						TextLabel_TapDro2p,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end)

				ButtonDrop2.MouseLeave:Connect(function ()

					TweenService:Create(

						TextLabel_TapDro2p,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end)

				ButtonDrop2.MouseButton1Click:Connect(function()

					TweenService:Create(

						DropFrame,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						DropArbt_listimage,

						TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),

						{Rotation = 0}

					):Play()

					TextLabel_TapDrop.Text =  text.." : "..tostring(t)

					callback(t)

					dog = not dog

				end

			)

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			end

			return dropfunc

		else

			local location = option.location or self.flags

			local flag = not use and option.flag or ""

			local callback = callback or function() end

			local list = option.list or {}

			local default = list.default or list[1].Name

			if not use then

				location[flag] = default

			end

			local DropFrame = Instance.new("Frame")

			DropFrame.Name = "DropFrame"

			DropFrame.Parent = ScrollingFrame_Pageframe

			DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- Color3.fromRGB(250,0,0)

			DropFrame.BorderSizePixel = 0

			DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

			DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)

			DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)

			DropFrame.BackgroundTransparency  = 0

			DropFrame.ClipsDescendants = true

			local ConnerDropFrame = Instance.new("UICorner")

			ConnerDropFrame.CornerRadius = UDim.new(0, 4)

			ConnerDropFrame.Name = ""

			ConnerDropFrame.Parent = DropFrame

			local DropFrameStroke = Instance.new("UIStroke")

			DropFrameStroke.Thickness = 1

			DropFrameStroke.Name = ""

			DropFrameStroke.Parent = DropFrame

			DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round

			DropFrameStroke.Color = Color3.fromRGB(250,0,0)

			DropFrameStroke.Transparency = 0.7

			local LabelFrameDrop = Instance.new("TextLabel")

			LabelFrameDrop.Parent = DropFrame

			LabelFrameDrop.Name = "LabelFrameDrop"

			LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(250,0,0)

			LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)

			LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)

			LabelFrameDrop.Font = Enum.Font.SourceSansSemibold

			LabelFrameDrop.Text = ""

			LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)

			LabelFrameDrop.TextSize = 14.000

		--   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)

			LabelFrameDrop.BackgroundTransparency = 1

			LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left

			local TextLabel_TapDrop = Instance.new("TextLabel")

			TextLabel_TapDrop.Parent = LabelFrameDrop

			TextLabel_TapDrop.Name = "TextLabel_TapDrop"

			TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(250,0,0)

			TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)

			TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)

			TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold

			TextLabel_TapDrop.Text = tostring(text).." :"

			TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)

			TextLabel_TapDrop.TextSize = 14.000

	--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)

			TextLabel_TapDrop.BackgroundTransparency = 1

			TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left

			local DropArbt_listimage = Instance.new("ImageButton")

			DropArbt_listimage.Parent = LabelFrameDrop

			DropArbt_listimage.BackgroundTransparency = 1.000

			DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)

			DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)

			DropArbt_listimage.BorderSizePixel = 0

			DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)

			DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"

			DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

			local ScolDown = Instance.new("ScrollingFrame")

			ScolDown.Name = "ScolDown"

			ScolDown.Position = UDim2.new(0.02, 0, 1., 0)

			ScolDown.Parent = LabelFrameDrop

			ScolDown.Active = true

			ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			ScolDown.BorderSizePixel = 0

			ScolDown.Size = UDim2.new(0, 205, 0, 115)

			ScolDown.ScrollBarThickness = 3

			ScolDown.ClipsDescendants = true

			ScolDown.BackgroundTransparency = 1

			ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

			local UIListLayoutlist = Instance.new("UIListLayout")

			local UIPaddinglist = Instance.new("UIPadding")

			UIListLayoutlist.Name = "UIListLayoutlist"

			UIListLayoutlist.Parent = ScolDown

			UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder

			UIListLayoutlist.Padding = UDim.new(0, 5)

			UIPaddinglist.Name = "UIPaddinglist"

			UIPaddinglist.Parent = ScolDown

			UIPaddinglist.PaddingTop = UDim.new(0, 5)

			UIPaddinglist.PaddingLeft = UDim.new(0, 12)

			local ButtonDrop = Instance.new("TextButton")

			ButtonDrop.Parent = DropFrame

			ButtonDrop.Name = "ButtonDrop"

			ButtonDrop.BackgroundColor3 = Color3.fromRGB(250,0,0)

			ButtonDrop.Size = UDim2.new(0, 213, 0, 30)

			ButtonDrop.Font = Enum.Font.SourceSansSemibold

			ButtonDrop.Text = ""

			ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)

			ButtonDrop.TextSize = 13.000

		--   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)

			ButtonDrop.Position = UDim2.new(0., 0, 0., 0)

			ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center

			ButtonDrop.BackgroundTransparency = 1

			ButtonDrop.TextWrapped = true

			ButtonDrop.AutoButtonColor = false

			ButtonDrop.ClipsDescendants = true

			local dog = false

			local FrameSize = 75

			local cout = 0

			for i , v in pairs(list) do

				cout =cout + 1

				if cout == 1 then

					FrameSize = 75

				elseif cout == 2 then

					FrameSize = 110

				elseif cout >= 3 then

					FrameSize = 150

				end

				local listtog = Instance.new("Frame")

				listtog.Name = "listtog"

				listtog.Parent = ScolDown

				listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)

				listtog.BackgroundTransparency =1

				listtog.BorderSizePixel = 0

				listtog.ClipsDescendants = true

				listtog.AnchorPoint = Vector2.new(0.5, 0.5)

				listtog.Position = UDim2.new(0.5, 0, 0.5, 0)

				listtog.Size = UDim2.new(0, 210, 0, 33)

				local listtextbutton = Instance.new("TextButton")

				listtextbutton.Parent = listtog

				listtextbutton.BackgroundTransparency =1

				listtextbutton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

				listtextbutton.BorderSizePixel = 0

				listtextbutton.Size =  UDim2.new(0, 210, 0, 33)

				listtextbutton.AutoButtonColor = false

				listtextbutton.Font = Enum.Font.SourceSans

				listtextbutton.Text = " "

				listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)

				listtextbutton.TextSize = 14.000

				local farmtoglist = Instance.new("TextButton")

				farmtoglist.Parent = listtextbutton

				farmtoglist.BackgroundColor3 = Color3.fromRGB(250,0,0)

				farmtoglist.BorderColor3 = Color3.fromRGB(250,0,0)

				farmtoglist.BorderSizePixel = 0

				farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)

				farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)

				farmtoglist.Size = UDim2.new(0, 23, 0, 23)

				farmtoglist.Font = Enum.Font.SourceSans

				farmtoglist.Text = " "

				farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)

				farmtoglist.TextSize = 14.000

				farmtoglist.AutoButtonColor = false

				local farmtoglist2 = Instance.new("TextButton")

				farmtoglist2.Parent = farmtoglist

				farmtoglist2.BackgroundColor3 = Color3.fromRGB(32, 32,32)

				farmtoglist2.BorderColor3 = Color3.fromRGB(250,0,0)

				farmtoglist2.BorderSizePixel = 0

				farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)

				farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)

				farmtoglist2.Size = UDim2.new(0, 21, 0, 21)

				farmtoglist2.Font = Enum.Font.SourceSans

				farmtoglist2.Text = " "

				farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)

				farmtoglist2.TextSize = 14.000

				farmtoglist2.AutoButtonColor = false

				local listimage = Instance.new("ImageButton")

				listimage.Parent = farmtoglist2

				listimage.BackgroundTransparency = 1.000

				listimage.AnchorPoint = Vector2.new(0.5, 0.5)

				listimage.Position = UDim2.new(0.5, 0, 0.5, 0)

				listimage.BorderSizePixel = 0

				listimage.Size = UDim2.new(0, 0, 0, 0)

				listimage.Image = "http://www.roblox.com/asset/?id=5880482965"

				local textlist = Instance.new("TextLabel")

				textlist.Parent = listtextbutton

				textlist.Name = "textlist"

				textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				textlist.BackgroundTransparency = 1.000

				textlist.AnchorPoint = Vector2.new(0.5, 0.5)

				textlist.Position = UDim2.new(0.5, 0, 0.5, 0)

				textlist.BorderSizePixel = 0

				textlist.Size = UDim2.new(0, 91, 0, 25)

				textlist.Font = Enum.Font.GothamSemibold

				textlist.Text = tostring(v.Name)

				textlist.TextColor3 = Color3.fromRGB(255, 255, 255)

				textlist.TextSize = 13.000

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)

				TextButton_Pageframe_Uiconner2.Name = ""

				TextButton_Pageframe_Uiconner2.Parent = farmtoglist

				local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)

				TextButton_Pageframe_Uiconner22.Name = ""

				TextButton_Pageframe_Uiconner22.Parent = farmtoglist2

				listtextbutton.MouseButton1Click:Connect(function()

					if not  location[v.flag] then

						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

						wait(0.1)

						listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

					else

						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

						wait(0.1)

						listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

					end

					location[v.flag] = not location[v.flag]

					callback(location[v.flag])

				end

			)

			if  location[v.flag] then

				listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

				wait(0.1)

				listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

				callback(location[v.flag])

			end

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			end

			DropFrame.MouseEnter:Connect(function()

				TweenService:Create(

					DropFrameStroke,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{Transparency = 0} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					TextLabel_TapDrop,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					DropArbt_listimage,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

				):Play()

			end

		)

		DropFrame.MouseLeave:Connect(function()

				TweenService:Create(

					DropFrameStroke,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					TextLabel_TapDrop,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					DropArbt_listimage,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

				):Play()

			end

		)

		ButtonDrop.MouseButton1Click:Connect(function()

			if dog == false then

				TweenService:Create(

					DropFrame,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					DropArbt_listimage,

					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),

					{Rotation = -180}

				):Play()

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			else

				TweenService:Create(

					DropFrame,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					DropArbt_listimage,

					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),

					{Rotation = 0}

				):Play()

				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			end

			dog = not dog

		end

	)

	ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			end

			end

			function items:TextBox(text,text2,callback)

				local TextFrame = Instance.new("Frame")

				TextFrame.Name = "TextFrame"

				TextFrame.Parent = ScrollingFrame_Pageframe

				TextFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)

				TextFrame.BorderSizePixel = 0

				TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				TextFrame.Size = UDim2.new(0, 213, 0, 70)

				TextFrame.BackgroundTransparency  = 1

				TextFrame.ClipsDescendants = true

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Parent = TextFrame

				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				LabelNameSliderxd.BackgroundTransparency = 1

				LabelNameSliderxd.BorderSizePixel = 0

				LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.2, 0)

				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)

				LabelNameSliderxd.Font = Enum.Font.GothamBold

				LabelNameSliderxd.Text = tostring(text)

				LabelNameSliderxd.TextColor3 = Color3.fromRGB(155, 155, 155)

				LabelNameSliderxd.TextSize = 11.000

				LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Center

				local ConerTextBox = Instance.new("UICorner")

				ConerTextBox.CornerRadius = UDim.new(0, 4)

				ConerTextBox.Name = ""

				ConerTextBox.Parent = TextFrame

				local FrameBox = Instance.new("Frame")

				FrameBox.Name = "TextFrame"

				FrameBox.Parent = TextFrame

				FrameBox.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)

				FrameBox.BorderSizePixel = 0

				FrameBox.Position = UDim2.new(0.5, 0, 0.65, 0)

				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)

				FrameBox.Size = UDim2.new(0, 158, 0, 30)

				FrameBox.BackgroundTransparency  = 0.2

				FrameBox.ClipsDescendants = true

				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)

				local TextFrame2 = Instance.new("TextBox")

				TextFrame2.Parent = FrameBox

				TextFrame2.BackgroundColor3 = Color3.fromRGB(250,0,0)

				TextFrame2.BorderSizePixel = 0

				TextFrame2.ClipsDescendants = true

				TextFrame2.Position = UDim2.new(0.5, 0, 0.5, 0)

				TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)

				TextFrame2.Size = UDim2.new(0, 158, 0, 35)

				TextFrame2.Font = Enum.Font.GothamSemibold

				TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)

				TextFrame2.PlaceholderText = text2

				TextFrame2.Text = ""

				TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)

				TextFrame2.TextSize = 12.000

				TextFrame2.BackgroundTransparency = 1

				local ConerTextBox2 = Instance.new("UICorner")

				ConerTextBox2.CornerRadius = UDim.new(0, 4)

				ConerTextBox2.Name = ""

				ConerTextBox2.Parent = FrameBox

				local TextBoxStroke = Instance.new("UIStroke")

				TextBoxStroke.Thickness = 1

				TextBoxStroke.Name = ""

				TextBoxStroke.Parent = FrameBox

				TextBoxStroke.LineJoinMode = Enum.LineJoinMode.Round

				TextBoxStroke.Color = Color3.fromRGB(250,0,0)

				TextBoxStroke.Transparency = 0.7

				TextFrame.MouseEnter:Connect(function()

					TweenService:Create(

						FrameBox,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						FrameBox,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 = Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextFrame2,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextFrame2,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						LabelNameSliderxd,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextBoxStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Thickness = 0} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

			TextFrame.MouseLeave:Connect(function()

				TweenService:Create(

					FrameBox,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{Size = UDim2.new(0, 158, 0, 30)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					FrameBox,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{BackgroundColor3 = Color3.fromRGB(23, 23, 23)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					TextFrame2,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					TextBoxStroke,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{Thickness = 1} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					LabelNameSliderxd,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

				):Play()

				TweenService:Create(

					TextFrame2,

					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

				):Play()

			end

			)

				TextFrame2.FocusLost:Connect(function ()

					if #TextFrame2.Text > 0 then

						pcall(callback,TextFrame2.Text)

					end

				end)

			end

			function items:Bind(text,bi,callback)

				local BindFrame = Instance.new("Frame")

				BindFrame.Name = "BindFrame"

				BindFrame.Parent = ScrollingFrame_Pageframe

				BindFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)

				BindFrame.BorderSizePixel = 0

				BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				BindFrame.Size = UDim2.new(0, 213, 0, 35)

				BindFrame.BackgroundTransparency  = 0

				BindFrame.ClipsDescendants = true

				local BindConner = Instance.new("UICorner")

				BindConner.CornerRadius = UDim.new(0, 4)

				BindConner.Name = ""

				BindConner.Parent = BindFrame

				local BindStroke = Instance.new("UIStroke")

				BindStroke.Thickness = 1

				BindStroke.Name = ""

				BindStroke.Parent = BindFrame

				BindStroke.LineJoinMode = Enum.LineJoinMode.Round

				BindStroke.Color = Color3.fromRGB(250,0,0)

				BindStroke.Transparency = 0.7

				local LabelBind = Instance.new("TextLabel")

				LabelBind.Parent = BindFrame

				LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				LabelBind.BackgroundTransparency = 1

				LabelBind.BorderSizePixel = 0

				LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)

				LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelBind.Size = UDim2.new(0, 140, 0, 35)

				LabelBind.Font = Enum.Font.GothamBold

				LabelBind.Text = tostring(text)

				LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)

				LabelBind.TextSize = 11.000

				LabelBind.TextXAlignment = Enum.TextXAlignment.Left

				local key = bi.Name

				local LabelBind2 = Instance.new("TextButton")

				LabelBind2.Parent = BindFrame

				LabelBind2.Name = "LabelBind2"

				LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				LabelBind2.Size = UDim2.new(0, 100, 0, 19)

				LabelBind2.Font = Enum.Font.GothamBold

				LabelBind2.Text =  "KEY : "..key

				LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)

				LabelBind2.TextSize = 11.000

				LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelBind2.Position = UDim2.new(0.75, 0, 0.5, 0)

				LabelBind2.TextXAlignment = Enum.TextXAlignment.Center

				LabelBind2.BackgroundTransparency = 1

				LabelBind2.TextWrapped = true

				local LabelBind22 = Instance.new("TextButton")

				LabelBind22.Parent = BindFrame

				LabelBind22.Name = "LabelBind22"

				LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				LabelBind22.Size = UDim2.new(0, 213, 0, 35)

				LabelBind22.Font = Enum.Font.GothamBold

				LabelBind22.Text =  ""

				LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)

				LabelBind22.TextSize = 11.000

				LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)

				LabelBind22.TextXAlignment = Enum.TextXAlignment.Center

				LabelBind22.BackgroundTransparency = 1

				LabelBind22.TextWrapped = true

				BindFrame.MouseEnter:Connect(function()

					TweenService:Create(

						BindStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						LabelBind22,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						LabelBind2,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						LabelBind,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

				BindFrame.MouseLeave:Connect(function()

					TweenService:Create(

						BindStroke,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						LabelBind22,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						LabelBind2,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						LabelBind,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

				end

			)

				LabelBind22.MouseButton1Click:Connect(function ()

					LabelBind2.Text = "KEY : ".."..."

					local inputwait = game:GetService("UserInputService").InputBegan:wait(0.2)

					local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

					if

					fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"

					then

						LabelBind2.Text =  "KEY : "..fuckulop.Name

						key = fuckulop.Name

					end

					-- if fuckulop.Name ~= "Unknown" then

					--     LabelBind2.Text = fuckulop.Name

					--     key = fuckulop.Name

					-- end

				end)

				game:GetService("UserInputService").InputBegan:connect(

					function(current)

						local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

							if fuckulop2.Name ==  key then

								pcall(callback)

						end

					end

					)

			end

			function items:Line()

				local LineFrame = Instance.new("Frame")

				LineFrame.Name = "LineFrame"

				LineFrame.Parent = ScrollingFrame_Pageframe

				LineFrame.BackgroundColor3 =  Color3.fromRGB(127,255,212)

				LineFrame.BorderSizePixel = 0

    			LineFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

				LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				LineFrame.Size = UDim2.new(0, 213, 0, 2)

				LineFrame.BackgroundTransparency  = 0

				LineFrame.ClipsDescendants = true

                

                

				local LineFrame_BindConner = Instance.new("UICorner")

				LineFrame_BindConner.CornerRadius = UDim.new(60, 60)

				LineFrame_BindConner.Name = ""

				LineFrame_BindConner.Parent = LineFrame

			end

			function items:Color(text,preset,callback)

				local Pixker = Instance.new("Frame")

				Pixker.Name = "Pixker"

				Pixker.Parent = ScrollingFrame_Pageframe

				Pixker.BackgroundColor3 = Color3.fromRGB(23, 23, 23)

				Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)

				Pixker.Size = UDim2.new(0, 213, 0, 33)

				Pixker.BackgroundTransparency = 0

				Pixker.BorderSizePixel = 0

				Pixker.AnchorPoint = Vector2.new(0.5, 0.5)

				Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)

				Pixker.ClipsDescendants = true

				local BoxColorCorner2 = Instance.new("UICorner")

				BoxColorCorner2.CornerRadius = UDim.new(0, 4)

				BoxColorCorner2.Name = "BoxColorCorner"

				BoxColorCorner2.Parent = Pixker

				local MheeFrameStroke = Instance.new("UIStroke")

				MheeFrameStroke.Thickness = 1

				MheeFrameStroke.Name = ""

				MheeFrameStroke.Parent = Pixker

				MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round

				MheeFrameStroke.Color = Color3.fromRGB(250,0,0)

				MheeFrameStroke.Transparency = 0.7

				local TextFrameColor = Instance.new("TextLabel")

				TextFrameColor.Parent = Pixker

				TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				TextFrameColor.BorderSizePixel = 0

				TextFrameColor.Size = UDim2.new(0, 200, 0, 34)

				TextFrameColor.Font = Enum.Font.SourceSans

				TextFrameColor.Text = "  "

				TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextFrameColor.TextSize = 14.000

				TextFrameColor.BackgroundTransparency = 1

				TextFrameColor.Position = UDim2.new(0., 0, 0., 0)

				local TextReal = Instance.new("TextLabel")

				TextReal.Parent = TextFrameColor

				TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				TextReal.BorderSizePixel = 0

				TextReal.Size = UDim2.new(0, 140, 0, 34)

				TextReal.Font = Enum.Font.GothamSemibold

				TextReal.Text = text

				TextReal.TextColor3 = Color3.fromRGB(155,155, 155)

				TextReal.TextSize = 12.000

				TextReal.BackgroundTransparency = 1

				TextReal.Position = UDim2.new(0.05, 0, 0., 0)

				TextReal.TextXAlignment = Enum.TextXAlignment.Left

				local BoxColor = Instance.new("Frame")

				BoxColor.Name = "BoxColor"

				BoxColor.Parent = TextFrameColor

				BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

				BoxColor.Position = UDim2.new(0.85, 0, 0.5, 0)

				BoxColor.Size = UDim2.new(0, 35, 0, 19)

				BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

				local BoxColorCorner = Instance.new("UICorner")

				BoxColorCorner.CornerRadius = UDim.new(0, 4)

				BoxColorCorner.Name = "BoxColorCorner"

				BoxColorCorner.Parent = BoxColor

				local TextButton_Dropdown = Instance.new("TextButton")

				TextButton_Dropdown.Parent = TextFrameColor

				TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

				TextButton_Dropdown.BorderSizePixel = 0

				TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)

				TextButton_Dropdown.Size = UDim2.new(0, 200, 0, 33)

				TextButton_Dropdown.Font = Enum.Font.SourceSans

				TextButton_Dropdown.Text = "  "

				TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)

				TextButton_Dropdown.TextSize = 14.000

				TextButton_Dropdown.AutoButtonColor = false

				--TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)

				TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)

				TextButton_Dropdown.BackgroundTransparency = 1

				Pixker.MouseEnter:Connect(function()

					TweenService:Create(

						MheeFrameStroke,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0.}

					):Play()

					TweenService:Create(

						TextReal,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(255,255, 255)}

					):Play()

				end)

				Pixker.MouseLeave:Connect(function()

					TweenService:Create(

						MheeFrameStroke,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency = 0.7}

					):Play()

					TweenService:Create(

						TextReal,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{TextColor3 = Color3.fromRGB(155,155, 155)}

					):Play()

				end)

			-- Rainbow Toggle

			local TextButton_2_Toggle = Instance.new("TextButton")

			TextButton_2_Toggle.Parent = TextFrameColor

			TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)

	--        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

			TextButton_2_Toggle.BorderSizePixel = 0

			TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

			TextButton_2_Toggle.Position = UDim2.new(0.2, 0, 1.87, 0)

			TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)

			TextButton_2_Toggle.Font = Enum.Font.SourceSans

			TextButton_2_Toggle.Text = " "

			TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

			TextButton_2_Toggle.TextSize = 12.000

			TextButton_2_Toggle.AutoButtonColor = false

			local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)

			TextButton_Pageframe_Uiconner.Name = ""

			TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

			local TextButton_3_Toggle = Instance.new("TextButton")

			TextButton_3_Toggle.Parent = TextButton_2_Toggle

			TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)

	--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

			TextButton_3_Toggle.BorderSizePixel = 0

			TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

			TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)

			TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)

			TextButton_3_Toggle.Font = Enum.Font.SourceSans

			TextButton_3_Toggle.Text = " "

			TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

			TextButton_3_Toggle.TextSize = 12.000

			TextButton_3_Toggle.AutoButtonColor = false

			local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)

			TextButton_Pageframe_Uiconner2.Name = ""

			TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

			local TextButton_4_Toggle = Instance.new("TextButton")

			TextButton_4_Toggle.Parent = TextButton_3_Toggle

			TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)

	--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(250,0,0)

			TextButton_4_Toggle.BorderSizePixel = 0

			TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

			TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)

			TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)

			TextButton_4_Toggle.Font = Enum.Font.SourceSans

			TextButton_4_Toggle.Text = " "

			TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

			TextButton_4_Toggle.TextSize = 12.000

			TextButton_4_Toggle.AutoButtonColor = false

			TextButton_4_Toggle.BackgroundTransparency = 1

			TextButton_4_Toggle.Visible = true

			local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

			TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)

			TextButton_Pageframe_Uiconner4.Name = ""

			TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

			local TextButton_Toggle = Instance.new("TextButton")

			TextButton_Toggle.Parent = ValueFrame

			TextButton_Toggle.BackgroundTransparency =1

			TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			TextButton_Toggle.BorderSizePixel = 0

			TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)

			TextButton_Toggle.AutoButtonColor = false

			TextButton_Toggle.Font = Enum.Font.SourceSans

			TextButton_Toggle.Text = " "

			TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)

			TextButton_Toggle.TextSize = 12.000

			TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

			TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

			local TextButton_3_Toggle2 = Instance.new("TextLabel")

			TextButton_3_Toggle2.Parent = TextButton_2_Toggle

			TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)

			TextButton_3_Toggle2.BorderColor3 = Color3.fromRGB(250,0,0)

			TextButton_3_Toggle2.BorderSizePixel = 0

			TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)

			TextButton_3_Toggle2.Position = UDim2.new(1.9, 0, 0.5, 0)

			TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)

			TextButton_3_Toggle2.Font = Enum.Font.SourceSansBold

			TextButton_3_Toggle2.Text = "Rainbow"

			TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)

			TextButton_3_Toggle2.TextSize = 13.000

			TextButton_3_Toggle2.BackgroundTransparency = 1

			local OMF = Instance.new("TextButton")

			OMF.Parent = TextButton_2_Toggle

			OMF.BackgroundTransparency =1

			OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			OMF.BorderSizePixel = 0

			OMF.Size = UDim2.new(0, 100, 0, 20)

			OMF.AutoButtonColor = false

			OMF.Font = Enum.Font.SourceSans

			OMF.Text = " "

			OMF.TextColor3 = Color3.fromRGB(0, 0, 0)

			OMF.TextSize = 12.000

			OMF.AnchorPoint = Vector2.new(0.5, 0.5)

			OMF.Position = UDim2.new(1.3, 0, 0.5, 0)

			local Color =  Instance.new("ImageLabel")

			Color.Name = "Color"

			Color.Parent = TextFrameColor

			Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)

			Color.Position = UDim2.new(0.05,0,4,0)

			Color.Size = UDim2.new(0, 195, 0, 40)

			Color.ZIndex = 0

			Color.BorderSizePixel = 0

			Color.Image = "rbxassetid://4155801252"

			local ColorFucj = Instance.new("UICorner")

			ColorFucj.CornerRadius = UDim.new(0, 4)

			ColorFucj.Name = ""

			ColorFucj.Parent = Color

			local ColorSelection =  Instance.new("ImageLabel")

			ColorSelection.Name = "ColorSelection"

			ColorSelection.Parent = Color

			ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)

			ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			ColorSelection.BackgroundTransparency = 1.000

			ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))

			ColorSelection.Size = UDim2.new(0, 18, 0, 18)

			ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

			ColorSelection.ScaleType = Enum.ScaleType.Fit

			ColorSelection.Visible = true

			local Hue =  Instance.new("ImageLabel")

			Hue.Name = "Hue2"

			Hue.Parent = TextFrameColor

			Hue.Position = UDim2.new(0.14,0,3,0)

			Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			Hue.Size = UDim2.new(0, 160, 0, 25)

			Hue.ZIndex = 0

			Hue.BorderSizePixel = 0

			local ColorFucj2 = Instance.new("UICorner")

			ColorFucj2.CornerRadius = UDim.new(0, 4)

			ColorFucj2.Name = ""

			ColorFucj2.Parent = Hue

			local HueGradient = Instance.new("UIGradient")

			HueGradient.Color = ColorSequence.new {

				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),

				ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),

				ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),

				ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),

				ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),

				ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),

				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))

			}

			HueGradient.Rotation = 0

			HueGradient.Name = "HueGradient"

			HueGradient.Parent = Hue

			local HueSelection =  Instance.new("ImageLabel")

			HueSelection.Name = "HueSelection"

			HueSelection.Parent = Hue

			HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)

			HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			HueSelection.BackgroundTransparency = 1.000

			HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))

			HueSelection.Size = UDim2.new(0, 18, 0, 18)

			HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

			HueSelection.ScaleType = Enum.ScaleType.Fit

			HueSelection.Visible = true

			local BTN_XD = Instance.new("TextButton")

			BTN_XD.Parent = TextFrameColor

			BTN_XD.BackgroundColor3 = Color3.fromRGB(250,0,0)

			BTN_XD.BorderColor3 = Color3.fromRGB(250,0,0)

			BTN_XD.BorderSizePixel = 0

			BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)

			BTN_XD.Position = UDim2.new(0.8, 0, 1.9, 0)

			BTN_XD.Size = UDim2.new(0, 50, 0, 25)

			BTN_XD.Font = Enum.Font.GothamSemibold

			BTN_XD.Text = "Confirm"

			BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)

			BTN_XD.TextSize = 11.000

			BTN_XD.AutoButtonColor = false

			local BTN_XD_COnner = Instance.new("UICorner")

			BTN_XD_COnner.CornerRadius = UDim.new(0, 4)

			BTN_XD_COnner.Name = ""

			BTN_XD_COnner.Parent = BTN_XD

			local MheeFrameStroke = Instance.new("UIStroke")

			MheeFrameStroke.Thickness = 1

			MheeFrameStroke.Name = ""

			MheeFrameStroke.Parent = BTN_XD

			MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round

			MheeFrameStroke.Color = Color3.fromRGB(250,0,0)

			MheeFrameStroke.Transparency = 0.7

			local UwU = false

			OMF.MouseButton1Click:Connect(function()

				if       UwU == false  then

					TweenService:Create(

						TextButton_4_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_3_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(250,0,0)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_2_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(153, 0, 102)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

				else

					TweenService:Create(

						TextButton_4_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_3_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TweenService:Create(

						TextButton_2_Toggle,

						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)

					):Play()

					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)

				end

				UwU = not UwU

			end

		)

		OMF.MouseEnter:Connect(function()

				TweenService:Create(

					TextButton_4_Toggle,

					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)

				):Play()

			end

		)

		OMF.MouseLeave:Connect(function()

				TweenService:Create(

					TextButton_4_Toggle,

					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

					{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)

				):Play()

			end

		)

		OMF.MouseButton1Down:Connect(

				function()

					RainbowColorPicker = not RainbowColorPicker

					if ColorInput then

						ColorInput:Disconnect()

					end

					if HueInput then

						HueInput:Disconnect()

					end

					if RainbowColorPicker then

						OldToggleColor = BoxColor.BackgroundColor3

						OldColor = Color.BackgroundColor3

						OldColorSelectionPosition = ColorSelection.Position

						OldHueSelectionPosition = HueSelection.Position

						while RainbowColorPicker do

							BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

							Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

							ColorSelection.Position = UDim2.new(1, 0, 0, 0)

							HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

							pcall(callback, BoxColor.BackgroundColor3)

							wait(0.2)

						end

					elseif not RainbowColorPicker then

						BoxColor.BackgroundColor3 = OldToggleColor

						Color.BackgroundColor3 = OldColor

						ColorSelection.Position = OldColorSelectionPosition

						HueSelection.Position = OldHueSelectionPosition

						pcall(callback, BoxColor.BackgroundColor3)

					end

				end

			)

			TextButton_3_Toggle.MouseButton1Down:Connect(

				function()

					RainbowColorPicker = not RainbowColorPicker

					if ColorInput then

						ColorInput:Disconnect()

					end

					if HueInput then

						HueInput:Disconnect()

					end

					if RainbowColorPicker then

						OldToggleColor = BoxColor.BackgroundColor3

						OldColor = Color.BackgroundColor3

						OldColorSelectionPosition = ColorSelection.Position

						OldHueSelectionPosition = HueSelection.Position

						while RainbowColorPicker do

							BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

							Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

							ColorSelection.Position = UDim2.new(1, 0, 0, 0)

							HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

							pcall(callback, BoxColor.BackgroundColor3)

							wait(0.2)

						end

					elseif not RainbowColorPicker then

						BoxColor.BackgroundColor3 = OldToggleColor

						Color.BackgroundColor3 = OldColor

						ColorSelection.Position = OldColorSelectionPosition

						HueSelection.Position = OldHueSelectionPosition

						pcall(callback, BoxColor.BackgroundColor3)

					end

				end

			)

			local function UpdateColorPicker(nope)

				BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)

				Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

				pcall(callback, BoxColor.BackgroundColor3)

			end

			ColorH =

			1 -

			(math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /

				Hue.AbsoluteSize.Y)

			ColorS =

				(math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /

					Color.AbsoluteSize.X)

			ColorV =

				1 -

				(math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /

					Color.AbsoluteSize.Y)

			BoxColor.BackgroundColor3 = preset

			Color.BackgroundColor3 = preset

			pcall(callback, BoxColor.BackgroundColor3)

			local RainbowColorPicker = false

			Color.InputBegan:Connect(

				function(input)

					if input.UserInputType == Enum.UserInputType.MouseButton1 then

						if RainbowColorPicker then

							return

						end

						if ColorInput then

							ColorInput:Disconnect()

						end

						ColorInput =

							RunService.RenderStepped:Connect(

								function()

								local ColorX =

									(math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /

										Color.AbsoluteSize.X)

								local ColorY =

									(math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /

										Color.AbsoluteSize.Y)

								ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)

								ColorS = ColorX

								ColorV = 1 - ColorY

								UpdateColorPicker(true)

							end

							)

					end

				end

			)

				Color.InputEnded:Connect(

					function(input)

						if input.UserInputType == Enum.UserInputType.MouseButton1 then

							if ColorInput then

								ColorInput:Disconnect()

							end

						end

					end

				)

				Hue.InputBegan:Connect(

					function(input)

						if input.UserInputType == Enum.UserInputType.MouseButton1 then

							if RainbowColorPicker then

								return

							end

							if HueInput then

								HueInput:Disconnect()

							end

							HueInput =

								RunService.RenderStepped:Connect(

									function()

									local HueY =

										(math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /

											Hue.AbsoluteSize.Y)

									local HueX =

										(math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /

											Hue.AbsoluteSize.X)

									HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)

									ColorH = 1 - HueY

									UpdateColorPicker(true)

								end

								)

						end

					end

				)

				Hue.InputEnded:Connect(

					function(input)

						if input.UserInputType == Enum.UserInputType.MouseButton1 then

							if HueInput then

								HueInput:Disconnect()

							end

						end

					end

				)

				local sk = false

				TextButton_Dropdown.MouseButton1Click:Connect(function()

					if sk == false then

					TweenService:Create(

						Pixker,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size = UDim2.new(0, 213, 0, 180)}

					):Play()

				else

					TweenService:Create(

						Pixker,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Size = UDim2.new(0, 213, 0, 33)}

					):Play()

				end

				sk = not sk

				end

			)

				BTN_XD.MouseButton1Click:Connect(

					function()

						TweenService:Create(

							Pixker,

							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

							{Size = UDim2.new(0, 213, 0, 33)}

						):Play()

						sk = not sk

					end

				)

			end

			function items:Label(text,image)

				local labaelchange = {}

				local LabelFrame = Instance.new("Frame")

				LabelFrame.Name = "Mainframenoti"

				LabelFrame.Parent = ScrollingFrame_Pageframe

				LabelFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)

				LabelFrame.BackgroundTransparency = 0

				LabelFrame.BorderSizePixel = 0

				LabelFrame.ClipsDescendants = false

				LabelFrame.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelFrame.Position = UDim2.new(0.498, 0, 0.5, 0)

				LabelFrame.Size = UDim2.new(0, 203, 0, 37)

				local LabelFarm2 = Instance.new("TextLabel")

				LabelFarm2.Parent = LabelFrame

				LabelFarm2.Name = "TextLabel_Tap"

				LabelFarm2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)

				LabelFarm2.Size =UDim2.new(0, 130, 0,24 )

				LabelFarm2.Font = Enum.Font.SourceSansSemibold

				LabelFarm2.Text = text

				LabelFarm2.TextColor3 = Color3.fromRGB(255, 255, 255)

				LabelFarm2.TextSize = 12.000

				LabelFarm2.AnchorPoint = Vector2.new(0.5, 0.5)

				LabelFarm2.Position = UDim2.new(0.5, 0, 0.5, 0)

				LabelFarm2.TextXAlignment = Enum.TextXAlignment.Center

				LabelFarm2.BackgroundTransparency = 1

				LabelFarm2.TextWrapped = true

				local ImageLabel_gx = Instance.new("ImageLabel")

				ImageLabel_gx.Parent = LabelFrame

				ImageLabel_gx.BackgroundTransparency = 1.000

				ImageLabel_gx.BorderSizePixel = 0

				ImageLabel_gx.Size = UDim2.new(0, 18, 0, 18)

				ImageLabel_gx.AnchorPoint = Vector2.new(0.5, 0.5)

				ImageLabel_gx.Position = UDim2.new(0.06, 0, 0.45, 0)

				ImageLabel_gx.Image = "http://www.roblox.com/asset/?id="..tostring(image)

				ImageLabel_gx.BackgroundTransparency = 1

				local noticore55 = Instance.new("UICorner")

				noticore55.CornerRadius = UDim.new(0, 4)

				noticore55.Name = "Beo"

				noticore55.Parent = LabelFarm2

				local noticore2777 = Instance.new("UICorner")

				noticore2777.CornerRadius = UDim.new(0, 4)

				noticore2777.Name = "Beo"

				noticore2777.Parent = LabelFrame

				local LabelStroke = Instance.new("UIStroke")

				LabelStroke.Thickness = 1

				LabelStroke.Name = "Oke"

				LabelStroke.Parent = LabelFrame

				LabelStroke.LineJoinMode = Enum.LineJoinMode.Round

				LabelStroke.Color = Color3.fromRGB(250,0,0)

				LabelStroke.Transparency = 0.7

				LabelFrame.MouseEnter:Connect(function()

					TweenService:Create(

						LabelStroke,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency =0}

					):Play()

				end

			)

				LabelFrame.MouseLeave:Connect(function()

					TweenService:Create(

						LabelStroke,

						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

						{Transparency =0.7}

					):Play()

				end

			)

				function labaelchange:Change(text2)

					LabelFarm2.Text = text2

				end

				return  labaelchange

			end

			return  items

			end

		return  page

		end

	return top

	end

local LocalPlayer = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService('VirtualUser')
local Char = game.Players.LocalPlayer.Character
function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
function chichdiem(CFgo) local Distance = (CFgo.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude local tween_s = game:service"TweenService"
  local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/360, Enum.EasingStyle.Linear)
   if Distance < 50 then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFgo    end
   local tween, err = pcall(function()  tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
    tween:Play()  end) end
local placeId = game.PlaceId if placeId == 2753915549 then OldWorld = true elseif placeId == 4442272183 then NewWorld = true elseif placeId == 7449423635 then ThreeWorld = true BF = true end
--loading game buoi
 if not game:IsLoaded() then   
repeat game.Loaded:wait(0.2)  wait(10)
until game:IsLoaded() 
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.Players.LocalPlayer.Character
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == false
end
function EquipWeapon(tool)  if game.Players.LocalPlayer.Backpack:FindFirstChild(tool) then   local tool_s = game.Players.LocalPlayer.Backpack:FindFirstChild(tool)    wait() game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool_s) end end
function Click() game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))end
function CheckQuest() local MyLevel = game.Players.LocalPlayer.Data.Level.Value
if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then 
            Ms = "Bandit [Lv. 5]"
            NaemQuest = "BanditQuest1"
            LevelQuest = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905)
            PosQuest = Vector3.new(1061.66699, 16.5166187, 1544.52905)
            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516)
            PosMon = Vector3.new(1199.31287, 52.2717781, 1536.91516)
        elseif MyLevel == 10 or MyLevel <= 14 then 
            Ms = "Monkey [Lv. 14]"
            NaemQuest = "JungleQuest"
            LevelQuest = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
            PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
            CFrameMon = CFrame.new(-1772.4093017578, 60.860641479492, 54.872589111328)
            PosMon = Vector3.new(-1772.4093017578, 60.860641479492, 54.872589111328)
        elseif MyLevel == 15 or MyLevel <= 29 then 
            Ms = "Gorilla [Lv. 20]"
            NaemQuest = "JungleQuest"
            LevelQuest = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
            PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664)
            PosMon = Vector3.new(-1223.52808, 6.27936459, -502.292664)
        elseif MyLevel == 30 or MyLevel <= 39 then 
            Ms = "Pirate [Lv. 35]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211)
            PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.16211)
            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452)
            PosMon = Vector3.new(-1219.32324, 4.75205183, 3915.63452)
        elseif MyLevel == 40 or MyLevel <= 59 then 
            Ms = "Brute [Lv. 45]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.1621)
            PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.1621)
            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333)
            PosMon = Vector3.new(-1146.49646, 96.0936813, 4312.1333)
        elseif MyLevel == 60 or MyLevel <= 74 then 
            Ms = "Desert Bandit [Lv. 60]"
            NaemQuest = "DesertQuest"
            LevelQuest = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
            PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609)
            PosMon = Vector3.new(932.788818, 6.4503746, 4488.24609)
        elseif MyLevel == 75 or MyLevel <= 89 then 
            Ms = "Desert Officer [Lv. 70]"
            NaemQuest = "DesertQuest"
            LevelQuest = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
            PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426)
            PosMon = Vector3.new(1580.03198, 4.61375761, 4366.86426)
        elseif MyLevel == 90 or MyLevel <= 99 then 
            Ms = "Snow Bandit [Lv. 90]"
            NaemQuest = "SnowQuest"
            LevelQuest = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
            PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
            PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
        elseif MyLevel == 100 or MyLevel <= 119 then 
            Ms = "Snowman [Lv. 100]"
            NaemQuest = "SnowQuest"
            LevelQuest = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
            PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
            PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
        elseif MyLevel == 120 or MyLevel <= 149 then 
            Ms = "Chief Petty Officer [Lv. 120]"
            NaemQuest = "MarineQuest2"
            LevelQuest = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443)
            PosQuest = Vector3.new(-5035.0835, 28.6520386, 4325.29443)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516)
            PosMon = Vector3.new(-4882.8623, 22.6520386, 4255.53516)
        elseif MyLevel == 150 or MyLevel <= 174 then 
            Ms = "Sky Bandit [Lv. 150]"
            NaemQuest = "SkyQuest"
            LevelQuest = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353)
            PosMon = Vector3.new(-4970.74219, 294.544342, -2890.11353)
        elseif MyLevel == 175 or MyLevel <= 189 then 
            Ms = "Dark Master [Lv. 175]"
            NaemQuest = "SkyQuest"
            LevelQuest = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
            PosMon = Vector3.new(-5220.58594, 430.693298, -2278.17456)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Ms = "Prisoner [Lv. 190]"
                NaemQuest = "PrisonerQuest"
                LevelQuest = 1
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                PosQuest = Vector3.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                PosMon = Vector3.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Ms = "Dangerous Prisoner [Lv. 210]"
                NaemQuest = "PrisonerQuest"
                LevelQuest = 2
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                PosQuest = Vector3.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                PosMon = Vector3.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
        elseif MyLevel == 250 or MyLevel <= 274 then 
            Ms = "Toga Warrior [Lv. 225]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
            PosMon = Vector3.new(-1779.97583, 44.6077499, -2736.35474)
        elseif MyLevel == 275 or MyLevel <= 299 then 
            Ms = "Gladiator [Lv. 275]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 2
            NameMon = "Gladiato"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309)
            PosMon = Vector3.new(-1274.75903, 58.1895943, -3188.16309)
        elseif MyLevel == 300 or MyLevel <= 329 then 
            Ms = "Military Soldier [Lv. 300]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266)
            PosMon = Vector3.new(-5363.01123, 41.5056877, 8548.47266)
        elseif MyLevel == 300 or MyLevel <= 374 then 
            Ms = "Military Spy [Lv. 330]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293)
            PosMon = Vector3.new(-5787.99023, 120.864456, 8762.25293)
        elseif MyLevel == 375 or MyLevel <= 399 then 
            Ms = "Fishman Warrior [Lv. 375]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif MyLevel == 400 or MyLevel <= 449 then 
            Ms = "Fishman Commando [Lv. 400]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif MyLevel == 450 or MyLevel <= 474 then 
            Ms = "God's Guard [Lv. 450]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
            PosQuest = Vector3.new(-4721.71436, 845.277161, -1954.20105)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
            PosMon = Vector3.new(-4716.95703, 853.089722, -1933.925427)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
        elseif MyLevel == 475 or MyLevel <= 524 then 
            Ms = "Shanda [Lv. 475]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324)
            PosQuest = Vector3.new(-7863.63672, 5545.49316, -379.826324)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509)
            PosMon = Vector3.new(-7685.12354, 5601.05127, -443.171509)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
        elseif MyLevel == 525 or MyLevel <= 549 then 
            Ms = "Royal Squad [Lv. 525]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729)
            PosMon = Vector3.new(-7685.02051, 5606.87842, -1442.729)
        elseif MyLevel == 550 or MyLevel <= 624 then 
            Ms = "Royal Soldier [Lv. 550]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351)
            PosMon = Vector3.new(-7864.44775, 5661.94092, -1708.22351)
        elseif MyLevel == 625 or MyLevel <= 649 then 
            Ms = "Galley Pirate [Lv. 625]"
            NaemQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095)
            PosMon = Vector3.new(5595.06982, 41.5013695, 3961.47095)
        elseif MyLevel >= 650 then 
            Ms = "Galley Captain [Lv. 650]"
            NaemQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506)
            PosMon = Vector3.new(5658.5752, 38.5361786, 4928.93506)
        end
    end
    if NewWorld then
        if MyLevel == 700 or MyLevel <= 724 then 
            Ms = "Raider [Lv. 700]"
            NaemQuest = "Area1Quest"
            LevelQuest = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959)
            PosMon = Vector3.new(-737.026123, 39.1748352, 2392.57959)
        elseif MyLevel == 725 or MyLevel <= 774 then 
            Ms = "Mercenary [Lv. 725]"
            NaemQuest = "Area1Quest"
            LevelQuest = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936)
            PosMon = Vector3.new(-973.731995, 95.8733215, 1836.46936)
        elseif MyLevel == 775 or MyLevel <= 874 then 
            Ms = "Swan Pirate [Lv. 775]"
            NaemQuest = "Area2Quest"
            LevelQuest = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321)
            PosQuest = Vector3.new(632.698608, 73.1055908, 918.666321)
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667)
            PosMon = Vector3.new(970.369446, 142.653198, 1217.3667)
        elseif MyLevel == 875 or MyLevel <= 899 then 
            Ms = "Marine Lieutenant [Lv. 875]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            PosQuest = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-3069.66, 101.71, -3171.04)
            PosMon = Vector3.new(-3069.66, 101.71, -3171.04)
        elseif MyLevel == 900 or MyLevel <= 949 then 
            Ms = "Marine Captain [Lv. 900]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            PosQuest = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333)
            PosMon = Vector3.new(-1868.67688, 73.0011826, -3321.66333)
        elseif MyLevel == 950 or MyLevel <= 974 then 
            Ms = "Zombie [Lv. 950]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039)
            PosMon = Vector3.new(-5634.83838, 126.067039, -697.665039)
        elseif MyLevel == 975 or MyLevel <= 999 then 
            Ms = "Vampire [Lv. 975]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564)
            PosMon = Vector3.new(-6030.32031, 6.4377408, -1313.5564)
        elseif MyLevel == 1000 or MyLevel <= 1049 then 
            Ms = "Snow Trooper [Lv. 1000]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958)
            PosMon = Vector3.new(535.893433, 401.457062, -5329.6958)
        elseif MyLevel == 1050 or MyLevel <= 1099 then 
            Ms = "Winter Warrior [Lv. 1050]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148)
            PosMon = Vector3.new(1223.7417, 454.575226, -5170.02148)
        elseif MyLevel == 1100 or MyLevel <= 1124 then 
            Ms = "Lab Subordinate [Lv. 1100]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721)
            PosMon = Vector3.new(-5769.2041, 37.9288292, -4468.38721)
        elseif MyLevel == 1125 or MyLevel <= 1174 then 
            Ms = "Horned Warrior [Lv. 1125]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574)
            PosMon = Vector3.new(-6400.85889, 24.7645149, -5818.63574)
        elseif MyLevel == 1175 or MyLevel <= 1199 then 
            Ms = "Magma Ninja [Lv. 1175]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855)
            PosMon = Vector3.new(-5496.65576, 58.6890411, -5929.76855)
        elseif MyLevel == 1200 or MyLevel <= 1349 then 
            Ms = "Lava Pirate [Lv. 1200]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633)
            PosMon = Vector3.new(-5169.71729, 34.1234779, -4669.73633)
        elseif MyLevel == 1250 or MyLevel <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand
            Ms = "Ship Deckhand [Lv. 1250]"
            NaemQuest = "ShipQuest1"
            LevelQuest = 1
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1275 or MyLevel <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then -- Ship Engineer
            Ms = "Ship Engineer [Lv. 1275]"
            NaemQuest = "ShipQuest1"
            LevelQuest = 2
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1300 or MyLevel <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then -- Ship Steward
            Ms = "Ship Steward [Lv. 1300]"
            NaemQuest = "ShipQuest2"
            LevelQuest = 1
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1325 or MyLevel <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then -- Ship Officer
            Ms = "Ship Officer [Lv. 1325]"
            NaemQuest = "ShipQuest2"
            LevelQuest = 2
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif MyLevel == 1350 or MyLevel <= 1374 then 
            Ms = "Arctic Warrior [Lv. 1350]"
            NaemQuest = "FrostQuest"
            LevelQuest = 1
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314)
            PosMon = Vector3.new(5995.07471, 57.3188477, -6183.47314)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			end
        elseif MyLevel == 1375 or MyLevel <= 1424 then 
            Ms = "Snow Lurker [Lv. 1375]"
            NaemQuest = "FrostQuest"
            LevelQuest = 2
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518)
            PosMon = Vector3.new(5518.00684, 60.5559731, -6828.80518)
        elseif MyLevel == 1425 or MyLevel <= 1449 then 
            Ms = "Sea Soldier [Lv. 1425]"
            NaemQuest = "ForgottenQuest"
            LevelQuest = 1
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
            PosMon = Vector3.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
        elseif MyLevel >= 1450 then 
            Ms = "Water Fighter [Lv. 1450]"
            NaemQuest = "ForgottenQuest"
            LevelQuest = 2
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3436.7727050781, 290.52191162109, -10503.438476563)
            PosMon = Vector3.new(-3436.7727050781, 290.52191162109, -10503.438476563)
        end
    end
if ThreeWorld then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Ms = "Pirate Millionaire [Lv. 1500]"
            NaemQuest = "PiratePortQuest"
            LevelQuest = 1
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Ms = "Pistol Billionaire [Lv. 1525]"
            NaemQuest = "PiratePortQuest"
            LevelQuest = 2
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NaemQuest = "AmazonQuest"
            LevelQuest = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            PosQuest = Vector3.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
            PosMon = Vector3.new(6241.9951171875, 51.522083282471, -1243.9771728516)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NaemQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            PosQuest = Vector3.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
            PosMon = Vector3.new(6488.9155273438, 383.38375854492, -110.66246032715)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Ms = "Female Islander [Lv. 1625]"
            NaemQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            PosQuest = Vector3.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(5825.2241210938, 682.89245605469, 704.57958984375)
            PosMon = Vector3.new(5825.2241210938, 682.89245605469, 704.57958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then
            Ms = "Giant Islander [Lv. 1650]"
            NaemQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            PosQuest = Vector3.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
            PosMon = Vector3.new(4530.3540039063, 656.75695800781, -131.60952758789)
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Ms = "Marine Commodore [Lv. 1700]"
            NaemQuest = "MarineTreeIsland"
            LevelQuest = 1
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
            PosMon = Vector3.new(2490.0844726563, 190.4232635498, -7160.0502929688)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NaemQuest = "MarineTreeIsland"
            LevelQuest = 2
            NameMon = "Marine Rear Admiral"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
            PosMon = Vector3.new(3951.3903808594, 229.11549377441, -6912.81640625)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Ms = "Fishman Raider [Lv. 1775]"
            NaemQuest = "DeepForestIsland3"
            LevelQuest = 1
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
            PosMon = Vector3.new(-10322.400390625, 390.94473266602, -8580.0908203125)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Ms = "Fishman Captain [Lv. 1800]"
            NaemQuest = "DeepForestIsland3"
            LevelQuest = 2
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
            PosMon = Vector3.new(-11194.541992188, 442.02795410156, -8608.806640625)
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Ms = "Forest Pirate [Lv. 1825]"
            NaemQuest = "DeepForestIsland"
            LevelQuest = 1
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
            PosMon = Vector3.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Ms = "Mythological Pirate [Lv. 1850]"
            NaemQuest = "DeepForestIsland"
            LevelQuest = 2
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
            PosMon = Vector3.new(-13869.172851563, 564.95251464844, -7084.4135742188)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Ms = "Jungle Pirate [Lv. 1900]"
            NaemQuest = "DeepForestIsland2"
            LevelQuest = 1
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
            PosMon = Vector3.new(-11982.221679688, 376.32522583008, -10451.415039063)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Ms = "Musketeer Pirate [Lv. 1925]"
            NaemQuest = "DeepForestIsland2"
            LevelQuest = 2
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
            PosMon = Vector3.new(-13282.3046875, 496.23684692383, -9565.150390625)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Ms = "Reborn Skeleton [Lv. 1975]"
            NaemQuest = "HauntedQuest1"
            LevelQuest = 1
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
            PosMon = Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Ms = "Living Zombie [Lv. 2000]"
            NaemQuest = "HauntedQuest1"
            LevelQuest = 2
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
            PosMon = Vector3.new(-10125.234375, 183.94705200195, 6242.013671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049  then
            Ms = "Demonic Soul [Lv. 2025]"
            NaemQuest = "HauntedQuest2"
            LevelQuest = 1
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
            PosMon = Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif MyLevel >= 2050 and MyLevel <= 2074  then
            Ms = "Posessed Mummy [Lv. 2050]"
            NaemQuest = "HauntedQuest2"
            LevelQuest = 2
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
            PosMon = Vector3.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        elseif MyLevel >= 2075 and MyLevel <= 2099  then
            Ms = "Peanut Scout [Lv. 2075]"
            NaemQuest = "NutsIslandQuest"
            LevelQuest = 1
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)    
            PosMon = Vector3.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)
        elseif MyLevel >= 2100 and MyLevel <= 2124  then
            Ms = "Peanut President [Lv. 2100]"
            NaemQuest = "NutsIslandQuest"
            LevelQuest = 2
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)    
            PosMon = Vector3.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)
        elseif MyLevel >= 2125 and MyLevel <= 2149  then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NaemQuest = "IceCreamIslandQuest"
            LevelQuest = 1
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)    
            PosMon = Vector3.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
        elseif MyLevel >= 2150 and MyLevel <= 2200 then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NaemQuest = "IceCreamIslandQuest"
            LevelQuest = 2
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)    
            PosMon = Vector3.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
            elseif MyLevel >= 2200 and MyLevel <= 2225 then
            Ms = "Cookie Crafter [Lv. 2200]"
            NaemQuest = "CakeQuest1"
            LevelQuest = 1
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            PosQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            CFrameMon = CFrame.new(-2272.864013671875, 146.5398406982422, -12189.0478515625)
            PosMon = CFrame.new(-2272.864013671875, 146.5398406982422, -12189.0478515625)
        elseif MyLevel >= 2225 and MyLevel <= 2250 then
            Ms = "Cake Guard [Lv. 2225]"
            NaemQuest = "CakeQuest1"
            LevelQuest = 2
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            PosQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            CFrameMon = CFrame.new(-1823.2464599609375, 210.2261505126953, -12292.82421875)
            PosMon = CFrame.new(-1823.2464599609375, 210.2261505126953, -12292.82421875)
        elseif MyLevel >= 2250 and MyLevel <= 2275 then
            Ms = "Baking Staff [Lv. 2250]"
            NaemQuest = "CakeQuest2"
            LevelQuest = 1
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1928.324462890625, 37.798133850097656, -12843.0517578125)
            PosQuest = CFrame.new(-1928.324462890625, 37.798133850097656, -12843.0517578125)
            CFrameMon = CFrame.new(-2000.436767578125, 385.1067810058594, -13096.3330078125)
            PosMon = CFrame.new(-2000.436767578125, 385.1067810058594, -13096.3330078125)
        elseif MyLevel == 2275 and MyLevel <= 2300 then

            Ms = "Head Baker [Lv. 2275]"

            NaemQuest = "CakeQuest2"
            LevelQuest = 2
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
         elseif MyLevel == 2300 and Level <= 2324 then
               Ms = "Cocoa Warrior [Lv. 2300]"
               LevelQuest = 1
               NaemQuest = "ChocQuest1"
               NameMon = "Cocoa Warrior"
               CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
               CFrameMon = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
            elseif MyLevel == 2325 and Level <= 2349 then
               Ms = "Chocolate Bar Battler [Lv. 2325]"
               LevelQuest = 2
               NaemQuest = "ChocQuest1"
               NameMon = "Chocolate Bar Battler"
              CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
              CFrameMon = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
              elseif MyLevel == 2350 and Level <= 2374 then
               Ms = "Sweet Thief [Lv. 2350]"
               LevelQuest = 1
               NaemQuest = "ChocQuest2"
               NameMon = "Sweet Thief"
              CFrameQuest = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
              CFrameMon = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
             elseif MyLevel >= 2375 then
               Ms = "Candy Rebel [Lv. 2375]"
               LevelQuest = 2
               NaemQuest = "ChocQuest2"
               NameMon = "Candy Rebel"
              CFrameQuest = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
              CFrameMon = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)end
    end
end
function EquipWeapon(ToolSe) if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) wait(.4)
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)end end


local DINOHUB = Instance.new("ScreenGui")
local OPENCLOSE = Instance.new("TextButton") DINOHUB.Name="DINOHUB"
DINOHUB.Parent=game.CoreGui
DINOHUB.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
OPENCLOSE.Name="OPENCLOSE"
OPENCLOSE.Parent=DINOHUB
OPENCLOSE.BackgroundColor3=Color3.fromRGB(255, 52, 0)
OPENCLOSE.BorderSizePixel=0
OPENCLOSE.Position=UDim2.new(0.9990833337, 0, 0.0952890813, 0)
OPENCLOSE.Size=UDim2.new(0.05589916649, 0, 0.0845824406, 0)
OPENCLOSE.Font=Enum.Font.DenkOne
OPENCLOSE.Text=""
OPENCLOSE.TextColor3=Color3.fromRGB(255, 40, 0)
OPENCLOSE.TextScaled=true
OPENCLOSE.TextSize=14.000
OPENCLOSE.TextWrapped=true
OPENCLOSE.MouseButton1Click:Connect(function()
game.CoreGui:FindFirstChild("kimchidoao").Enabled = not game.CoreGui:FindFirstChild("kimchidoao").Enabled
end)
	local Window = create:Win("N P T H U B")

	
	local Tap2 = Window:Taps("Main")

	

    

    
	
	local page1 = Tap2:newpage()
    local page2 = Tap2:newpage()


	

	

	
	
	
	
       page1:Label("Auto Farm")
       
       

     	page1:Toggle("Auto Farm Level",false,function(vu)
     getgenv().Auto_Farm = vu
	    end)
	spawn(function()
		while wait() do
			if getgenv().Auto_Farm then
				quest()
				beo()
			end
		end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if getgenv().NoClip or getgenv().Auto_Farm or getgenv().Observation or getgenv().AutoNew or getgenv().Factory or getgenv().GunMastery or getgenv().Mastery or FramBoss or FramAllBoss or getgenv().getgenv().AutoBartilo or getgenv().MobAura or getgenv().AutoRengoku or getgenv().AutoSharkman or getgenv().Ectoplasm or getgenv().PoleHop or getgenv().SwanHop or getgenv().BlackBeardHop or getgenv().Chest or getgenv().Electro or rainbowhaki or Hunter or observationv2 or getgenv().ElitehuntHop or getgenv().EliteHunt or getgenv().Pole or getgenv().Tushitahop or getgenv().YamaHop or getgenv().StoreFruit or getgenv().HolyTorch then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				game:GetService("Players").LocalPlayer.Character.Humanoid:Changepage2e(11)
			end
		end
	end)
	game:GetService('RunService').Stepped:connect(function()
    if getgenv().Auto_Farm then
       game.Players.LocalPlayer.Character.Humanoid:Changepage2e(11)
	end
end)

spawn(function()
    while wait() do
        if getgenv().Auto_Farm then
            quest()
            beo()
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().bodyvelo then
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityBody") then
                local BV = Instance.new("BodyVelocity")
                BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                BV.Name = "VelocityBody"
                BV.MaxForce = Vector3.new(100000,100000,100000)
                BV.Velocity = Vector3.new(0,0,0)
            end
        else
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityBody") then
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityBody"):Destroy()
            end
        end
    end
end)
function quest()
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
        CheckQuest()
        repeat wait()
            chichdiem(CFrameQuest)
        until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 4
        wait(0.4)
        local args = {
            [1] = "StartQuest",
            [2] = NaemQuest,
            [3] = LevelQuest
        }
            
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
function beo()
local mob = game:GetService("Workspace").Enemies:GetChildren()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for i,v in pairs(mob) do
            if v.Name == Ms then
               if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
               end
							if v:WaitForChild("Humanoid").Health > 0 then
								repeat game:GetService("RunService").Heartbeat:wait()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
EquipWeapon(getgenv().tool)
v.HumanoidRootPart.Transparency = 1
                                                                       
									v.HumanoidRootPart.CanCollide = false 
y.HumanoidRootPart.CanCollide = false
                                                         v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
								until getgenv().getgenv().Auto_Farm == false or not v.Parent or v.Humanoid.Health <= 0

						end
					end
end
end
end
				else
					
					chichdiem(CFrame.new(CFrameMon))
			end
end


    lol = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(lol ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(lol, v.Name)
    end
end
	local SelectToolWeapona = page1:Dropdown("SelectWeapon",false,lol,function(Select)
    getgenv().tool = Select
end)

page1:Button("Refresh Weapon", function()
	SelectToolWeapona:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			SelectToolWeapona:Add(v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			SelectToolWeapona:Add(v.Name)
		end
	end
end)
page2:Label("Stats")
page2:Toggle("Melee",false,function(val)
	getgenv().melee = val
end)
page2:Toggle("Defense",false,function(val)
	getgenv().health = val
end)
page2:Toggle("Sword",false,function(val)
	getgenv().sword = val
end)
page2:Toggle("Gun",false,function(val)
	getgenv().gun = val
end)
page2:Toggle("Fruit",false,function(val)
	getgenv().df = val
end)

spawn(function()
	while wait() do
			if getgenv().melee then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Melee",
				   [3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().health then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Defense",
				   [3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().sword then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Sword",
				   [3] = 1
				}
		  
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().gun then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Gun",
				   [3] = 1
				}
		  
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().df then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Demon Fruit",
				   [3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)
    	