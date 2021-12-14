-- MIT License

-- Copyright (c) 2021 David Fletcher

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

local function mainWindow()
    local dialog = Dialog("New File...")
    local ratio_width = 1
    local ratio_height = 1

    local function adjust_for_ratio(num, divisor, dividend)
        return math.floor(num * (dividend / divisor))
    end

    -----------------------------------
    -- RATIOS
    -----------------------------------
    dialog:separator {
        id="ratios",
        text="Ratios"
    }

    dialog:label {
        id="help1",
        label="NOTE:",
        text="In the following ratios, the first value is the"
    }

    dialog:newrow()

    dialog:label {
        id="help2",
        text="width, and the second is the height ( W : H )"
    }

    dialog:button {
        id="onetoone",
        text="1 : 1",
        enabled=false,
        onclick=function()
            ratio_width = 1
            ratio_height = 1
            local new_height = adjust_for_ratio(dialog.data.width, ratio_width, ratio_height)
            dialog:modify {
                id="height",
                text=new_height
            }

            dialog:modify {
                id="onetoone",
                enabled=false
            }

            dialog:modify {
                id="fourtoseven",
                enabled=true
            }
            
            dialog:modify {
                id="fourtothree",
                enabled=true
            }

            dialog:modify {
                id="seventoeight",
                enabled=true
            }

            dialog:modify {
                id="sixteentonine",
                enabled=true
            }

            dialog:modify {
                id="customratio",
                enabled=true
            }

            dialog:modify {
                id="custom",
                visible=false
            }

            dialog:modify {
                id="ratiowidth",
                visible=false
            }

            dialog:modify {
                id="ratioheight",
                visible=false
            }
        end
    }

    dialog:button {
        id="fourtoseven",
        text="4 : 7",
        onclick=function()
            ratio_width = 4
            ratio_height = 7
            local new_height = adjust_for_ratio(dialog.data.width, ratio_width, ratio_height)
            dialog:modify {
                id="height",
                text=new_height
            }

            dialog:modify {
                id="onetoone",
                enabled=true
            }

            dialog:modify {
                id="fourtoseven",
                enabled=false
            }

            dialog:modify {
                id="fourtothree",
                enabled=true
            }

            dialog:modify {
                id="seventoeight",
                enabled=true
            }

            dialog:modify {
                id="sixteentonine",
                enabled=true
            }

            dialog:modify {
                id="customratio",
                enabled=true
            }

            dialog:modify {
                id="custom",
                visible=false
            }

            dialog:modify {
                id="ratiowidth",
                visible=false
            }

            dialog:modify {
                id="ratioheight",
                visible=false
            }
        end
    }

    dialog:newrow()

    dialog:button {
        id="fourtothree",
        text="4 : 3",
        onclick=function()
            ratio_width = 4
            ratio_height = 3
            local new_height = adjust_for_ratio(dialog.data.width, ratio_width, ratio_height)
            dialog:modify {
                id="height",
                text=new_height
            }

            dialog:modify {
                id="onetoone",
                enabled=true
            }

            dialog:modify {
                id="fourtoseven",
                enabled=true
            }

            dialog:modify {
                id="fourtothree",
                enabled=false
            }

            dialog:modify {
                id="seventoeight",
                enabled=true
            }

            dialog:modify {
                id="sixteentonine",
                enabled=true
            }

            dialog:modify {
                id="customratio",
                enabled=true
            }
            
            dialog:modify {
                id="custom",
                visible=false
            }

            dialog:modify {
                id="ratiowidth",
                visible=false
            }

            dialog:modify {
                id="ratioheight",
                visible=false
            }
        end
    }

    dialog:button {
        id="seventoeight",
        text="7 : 8",
        onclick=function()
            ratio_width = 7
            ratio_height = 8
            local new_height = adjust_for_ratio(dialog.data.width, ratio_width, ratio_height)
            dialog:modify {
                id="height",
                text=new_height
            }

            dialog:modify {
                id="onetoone",
                enabled=true
            }

            dialog:modify {
                id="fourtoseven",
                enabled=true
            }

            dialog:modify {
                id="fourtothree",
                enabled=true
            }

            dialog:modify {
                id="seventoeight",
                enabled=false
            }

            dialog:modify {
                id="sixteentonine",
                enabled=true
            }

            dialog:modify {
                id="customratio",
                enabled=true
            }
            
            dialog:modify {
                id="custom",
                visible=false
            }

            dialog:modify {
                id="ratiowidth",
                visible=false
            }

            dialog:modify {
                id="ratioheight",
                visible=false
            }
        end
    }

    dialog:newrow()

    dialog:button {
        id="sixteentonine",
        text="16 : 9",
        onclick=function()
            ratio_width = 16
            ratio_height = 9
            local new_height = adjust_for_ratio(dialog.data.width, ratio_width, ratio_height)
            dialog:modify {
                id="height",
                text=new_height
            }

            dialog:modify {
                id="onetoone",
                enabled=true
            }

            dialog:modify {
                id="fourtoseven",
                enabled=true
            }

            dialog:modify {
                id="fourtothree",
                enabled=true
            }

            dialog:modify {
                id="seventoeight",
                enabled=true
            }

            dialog:modify {
                id="sixteentonine",
                enabled=false
            }

            dialog:modify {
                id="customratio",
                enabled=true
            }
            
            dialog:modify {
                id="custom",
                visible=false
            }

            dialog:modify {
                id="ratiowidth",
                visible=false
            }

            dialog:modify {
                id="ratioheight",
                visible=false
            }
        end
    }

    dialog:button {
        id="customratio",
        text="Custom",
        onclick=function()
            if (dialog.data.ratiowidth > 1) then
                ratio_width = dialog.data.ratiowidth
            else
                ratio_width = 1
            end
            if (dialog.data.ratioheight > 1) then
                ratio_height = dialog.data.ratioheight
            else
                ratio_height = 1
            end
            local new_height = adjust_for_ratio(dialog.data.width, ratio_width, ratio_height)
            dialog:modify {
                id="height",
                text=new_height
            }

            dialog:modify {
                id="onetoone",
                enabled=true
            }

            dialog:modify {
                id="fourtoseven",
                enabled=true
            }

            dialog:modify {
                id="fourtothree",
                enabled=true
            }

            dialog:modify {
                id="seventoeight",
                enabled=true
            }

            dialog:modify {
                id="sixteentonine",
                enabled=true
            }

            dialog:modify {
                id="customratio",
                enabled=false
            }

            dialog:modify {
                id="custom",
                visible=true
            }

            dialog:modify {
                id="ratiowidth",
                visible=true
            }

            dialog:modify {
                id="ratioheight",
                visible=true
            }
        end
    }

    -----------------------------------
    -- CUSTOM RATIO
    -----------------------------------
    dialog:separator {
        id="custom",
        text="Custom Ratio",
        visible=false
    }

    dialog:number {
        id="ratiowidth",
        label="W:",
        decimals=0,
        text="1",
        visible=false,
        onchange=function()
            ratio_width = dialog.data.ratiowidth
            local new_height = adjust_for_ratio(dialog.data.width, dialog.data.ratiowidth, dialog.data.ratioheight)
            dialog:modify {
                id="height",
                text=new_height
            }
        end
    }

    dialog:number {
        id="ratioheight",
        label="H:",
        decimals=0,
        text="1",
        visible=false,
        onchange=function()
            ratio_height = dialog.data.ratioheight
            local new_height = adjust_for_ratio(dialog.data.width, dialog.data.ratiowidth, dialog.data.ratioheight)
            dialog:modify {
                id="height",
                text=new_height
            }
        end
    }

    -----------------------------------
    -- PIXELS
    -----------------------------------
    dialog:separator {
        id="pixels",
        text="Size"
    }

    dialog:number {
        id="width",
        label="Width:",
        decimals=0,
        onchange=function()
            if (ratio_width == -1) then return end
            local new_height = adjust_for_ratio(dialog.data.width, ratio_width, ratio_height)
            dialog:modify {
                id="height",
                text=new_height
            }
        end
    }

    dialog:number {
        id="height",
        label="Height:",
        decimals=0,
        onchange=function()
            if (ratio_height == -1) then return end
            local new_width = adjust_for_ratio(dialog.data.height, ratio_height, ratio_width)
            dialog:modify {
                id="width",
                text=new_width
            }
        end
    }

    -----------------------------------
    -- FINALIZE
    -----------------------------------

    dialog:separator {
        id="footer",
        text="Finalize"
    }

    dialog:button {
        id="create",
        text="Create New",
        onclick=function()
            dialog:close()
            app.command.NewFile {
                ui=true,
                width=dialog.data.width,
                height=dialog.data.height,
                colorMode=ColorMode.RGB,
                fromClipboard=false
            }
        end
    }

    -----------------------------------
    -- ENSURE DEFAULT CANVAS SIZE
    -----------------------------------

    dialog:modify {
        id="width",
        text=64
    }

    dialog:modify {
        id="height",
        text=64
    }

    dialog:modify {
        id="custom",
        visible=false
    }

    return dialog
end

mainWindow():show{ wait=true }
