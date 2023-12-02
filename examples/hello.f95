program hello
    character(len=255) :: given_name
    write (*, '(a)', advance='no') "What is your name?"
    read *, given_name
    print *, "Hello ", trim(given_name), "!"
end program hello
