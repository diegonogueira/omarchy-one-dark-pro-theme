-- Regras de janela do tema. O Omarchy 4 substituiu o hyprland.conf dos temas
-- do 3.x por este arquivo: o antigo era lido pelo hyprlang e hoje é ignorado.
--
-- O gradiente só é aceito na forma de tabela. A string
-- "rgba(..) rgba(..) 90deg", que o hyprlang entendia, é engolida em silêncio e
-- vira cor sólida.
local active_border_color = {
  colors = { "rgba(61afefff)", "rgba(56b6c2ff)", "rgba(c678ddff)", "rgba(e5c07bff)" },
  angle = 90,
}
local inactive_border_color = "rgba(595959aa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Borda vermelha em fullscreen, para não esquecer que a janela está cobrindo
-- o resto.
o.window({ fullscreen = true }, { border_color = "rgba(e06c75ff)" })
