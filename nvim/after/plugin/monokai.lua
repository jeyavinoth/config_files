local status, m = pcall(require, 'monokai')
if not status then return end

m.setup {
 palette = m.pro
}
