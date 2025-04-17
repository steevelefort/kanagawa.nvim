---@class PaletteColors
local palette = {
    -- Bg Shades (basés sur les tons de bleu foncé de Moonlight)
    sumiInk0 = "#161a2a", -- base0
    sumiInk1 = "#191a2a", -- base1/bg-alt
    sumiInk2 = "#1e2030", -- base2
    sumiInk3 = "#212337", -- bg
    sumiInk4 = "#222436", -- base3
    sumiInk5 = "#2f334d", -- base4
    sumiInk6 = "#444a73", -- base5/grey

    -- Popup and Floats
    waveBlue1 = "#383e5c", -- region
    waveBlue2 = "#444a73", -- base5

    -- Diff and Git
    winterGreen = "#4fd6be", -- dark-teal pour winterGreen (modify)
    winterYellow = "#ffc777", -- yellow pour winterYellow
    winterRed = "#ff5370", -- dark-red pour winterRed
    winterBlue = "#82aaff", -- blue pour winterBlue
    autumnGreen = "#c3e88d", -- green pour autumnGreen
    autumnRed = "#ff757f", -- red pour autumnRed
    autumnYellow = "#ffc777", -- yellow pour autumnYellow

    -- Diag
    samuraiRed = "#ff5370", -- dark-red
    roninYellow = "#ffc777", -- yellow
    waveAqua1 = "#77e0c6", -- teal
    dragonBlue = "#82aaff", -- blue

    -- Fg and Comments
    oldWhite = "#b4c2f0", -- base8/fg-alt
    fujiWhite = "#c8d3f5", -- fg
    fujiGray = "#7a88cf", -- indigo/comments

    -- Various purples, blues, pinks (couleurs caractéristiques de Moonlight)
    oniViolet = "#c099ff", -- magenta
    oniViolet2 = "#baacff", -- light-magenta
    crystalBlue = "#82aaff", -- blue
    springViolet1 = "#c099ff", -- magenta
    springViolet2 = "#baacff", -- light-magenta
    springBlue = "#50c4fa", -- light-blue
    lightBlue = "#86e1fc", -- dark-cyan
    waveAqua2 = "#77e0c6", -- teal

    springGreen = "#c3e88d", -- green
    boatYellow1 = "#ffc777", -- yellow
    boatYellow2 = "#ffc777", -- yellow
    carpYellow = "#ffc777", -- yellow

    sakuraPink = "#f989d3", -- violet
    waveRed = "#ff757f", -- red
    peachRed = "#ff5370", -- dark-red
    surimiOrange = "#ff995e", -- orange
    katanaGray = "#828bb8", -- base6

    -- Dragon colors (adapté avec des teintes similaires mais dans la gamme Moonlight)
    dragonBlack0 = "#161a2a", -- base0
    dragonBlack1 = "#191a2a", -- base1
    dragonBlack2 = "#1e2030", -- base2
    dragonBlack3 = "#212337", -- bg
    dragonBlack4 = "#222436", -- base3
    dragonBlack5 = "#2f334d", -- base4
    dragonBlack6 = "#444a73", -- base5

    dragonWhite = "#c8d3f5", -- fg
    dragonGreen = "#c3e88d", -- green
    dragonGreen2 = "#77e0c6", -- teal
    dragonPink = "#f989d3", -- violet
    dragonOrange = "#ff995e", -- orange
    dragonOrange2 = "#ff995e", -- orange
    dragonGray = "#a9b8e8", -- base7
    dragonGray2 = "#828bb8", -- base6
    dragonGray3 = "#7a88cf", -- indigo/comments
    dragonBlue2 = "#82aaff", -- blue
    dragonViolet = "#c099ff", -- magenta
    dragonRed = "#ff757f", -- red
    dragonAqua = "#77e0c6", -- teal
    dragonAsh = "#7a88cf", -- indigo/comments
    dragonTeal = "#4fd6be", -- dark-teal
    dragonYellow = "#ffc777", -- yellow

    -- Lotus colors (adapté avec la palette Moonlight)
    lotusInk1 = "#444a73", -- base5
    lotusInk2 = "#383e5c", -- region
    lotusGray = "#c8d3f5", -- fg
    lotusGray2 = "#828bb8", -- base6
    lotusGray3 = "#a9b8e8", -- base7
    lotusWhite0 = "#b4c2f0", -- base8/fg-alt
    lotusWhite1 = "#c8d3f5", -- fg
    lotusWhite2 = "#c8d3f5", -- fg
    lotusWhite3 = "#c8d3f5", -- fg
    lotusWhite4 = "#c8d3f5", -- fg
    lotusWhite5 = "#c8d3f5", -- fg
    lotusViolet1 = "#c099ff", -- magenta
    lotusViolet2 = "#baacff", -- light-magenta
    lotusViolet3 = "#f3c1ff", -- pink
    lotusViolet4 = "#c099ff", -- magenta
    lotusBlue1 = "#82aaff", -- blue
    lotusBlue2 = "#50c4fa", -- light-blue
    lotusBlue3 = "#86e1fc", -- dark-cyan
    lotusBlue4 = "#4976eb", -- dark-blue
    lotusBlue5 = "#82aaff", -- blue
    lotusGreen = "#c3e88d", -- green
    lotusGreen2 = "#77e0c6", -- teal
    lotusGreen3 = "#7af8ca", -- light-teal
    lotusPink = "#f989d3", -- violet
    lotusOrange = "#ff995e", -- orange
    lotusOrange2 = "#ff995e", -- orange
    lotusYellow = "#ffc777", -- yellow
    lotusYellow2 = "#ffc777", -- yellow
    lotusYellow3 = "#ffc777", -- yellow
    lotusYellow4 = "#ffc777", -- yellow
    lotusRed = "#ff757f", -- red
    lotusRed2 = "#ff5370", -- dark-red
    lotusRed3 = "#ff5370", -- dark-red
    lotusRed4 = "#ff98a4", -- light-red
    lotusAqua = "#77e0c6", -- teal
    lotusAqua2 = "#4fd6be", -- dark-teal
    lotusTeal1 = "#4fd6be", -- dark-teal
    lotusTeal2 = "#77e0c6", -- teal
    lotusTeal3 = "#86e1fc", -- dark-cyan
    lotusCyan = "#b4f9f8", -- cyan
}

local M = {}
--- Generate colors table:
--- * opts:
---   - colors: Table of personalized colors and/or overrides of existing ones.
---     Defaults to MoonlightConfig.colors.
---   - theme: Use selected theme. Defaults to MoonlightConfig.theme
---     according to the value of 'background' option.
---@param opts? { colors?: table, theme?: string }
---@return { theme: ThemeColors, palette: PaletteColors}
function M.setup(opts)
    opts = opts or {}
    local override_colors = opts.colors or require("moonlight").config.colors
    local theme = opts.theme or require("moonlight")._CURRENT_THEME -- WARN: this fails if called before moonlight.load()

    if not theme then
        error("moonlight.colors.setup(): Unable to infer `theme`. Either specify a theme or call this function after ':colorscheme moonlight'")
    end

    -- Add to and/or override palette_colors
    local updated_palette_colors = vim.tbl_extend("force", palette, override_colors.palette or {})

    -- Generate the theme according to the updated palette colors
    local theme_colors = require("moonlight.themes")[theme](updated_palette_colors)

    -- Add to and/or override theme_colors
    local theme_overrides = vim.tbl_deep_extend("force", override_colors.theme["all"] or {}, override_colors.theme[theme] or {} )
    local updated_theme_colors = vim.tbl_deep_extend("force", theme_colors, theme_overrides)
    -- return palette_colors AND theme_colors

    return {
        theme = updated_theme_colors,
        palette = updated_palette_colors,
    }
end

return M
