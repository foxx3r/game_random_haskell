import System.Random

main = do
    number <- randomRIO (1::Int, 50)
    guess number

guess number = do
    putStr "Type a number betweem 1 and 50: "
    tried_guess <- getLine
    if (read tried_guess) < number
       then do
           putStrLn "It's too small"
           guess number
    else if (read tried_guess) > number
        then do
            putStrLn "It's too big"
            guess number
    else putStrLn "You're right"
