program palindrome
    character (len=255) word1
    character (len=255) word2
    integer :: word1_size
    integer :: word2_size
    logical :: palindromes

    ! Get user input
    write(*, '(a)', advance='no') "Enter word1: "
    read *, word1

    write(*, '(a)', advance='no') "Enter word2: "
    read *, word2

    word1_size = len(trim(word1))
    word2_size = len(trim(word2))

    palindromes = .TRUE.

    if (word1_size == word2_size) then
        do i = 1, word1_size
            if (word1(i:i) == word2(word2_size:word2_size)) then
                word2_size = word2_size - 1
            else
                palindromes = .FALSE.
            end if
        end do
    else
        palindromes = .FALSE.
    end if

    if (palindromes .eqv. .TRUE.) then
        print *, "These are palindromes!"
    else
        print *, "These are not palindromes!"
    end if

end program palindrome
