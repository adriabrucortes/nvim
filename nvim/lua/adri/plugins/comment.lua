local setup, comment = pcall(require, "Comment") -- protected call to avoid problems if it's not installed
if not setup then
    return
end

comment.setup()
