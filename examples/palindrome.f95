program palindrome
    character (len=255) word1
    character (len=255) word2

    ! Get user input
    write(*, '(a)', advance='no') "Enter word1: "
    read *, word1

    write(*, '(a)', advance='no') "Enter word2: "
    read *, word2
end program palindrome
