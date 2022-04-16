print("What's Up My Dudes")

timerman = coroutine.create(
    function()
        while true do
            print("It is " .. os.date("%A") .. ", My Dudes.")
            coroutine.yield()
        end        
    end
)

while true do
    coroutine.resume(timerman)
    os.sleep(5)
end

