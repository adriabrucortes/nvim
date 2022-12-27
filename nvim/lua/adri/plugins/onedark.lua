local setup, onedark = pcall(require, "onedark")
if not setup then
    return
end

onedark.setup({
    style = 'deep',
    transparent = true,
})

onedark.load()
