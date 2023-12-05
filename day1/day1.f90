
#ifdef REAL_INPUT
#define FILE_PATH "day1/real.txt"
#else
#define FILE_PATH "day1/example.txt"
#endif

module day1_helpers
    contains
        character function check_three_letters(string)
            character (len = 3) :: string
            character :: return_val

            return_val = "!"

            check_three_letters = return_val

        end function
end module day1_helpers

program day1
    use file_helpers
    use string_utils

    character(len=255), pointer :: file_data (:)
    integer :: file_size, i, j, string_len
    logical :: is_digit_result
    character (len=255) :: temp_string
    character :: digit1, digit2
    integer, dimension(:), allocatable :: all_integers
    integer :: new_int, total_value
    character (len=2) :: another_string

    file_size = read_file(FILE_PATH, file_data)

    allocate(all_integers(file_size))

    total_value = 0

    do i = 1, file_size
        digit1 = '!'
        digit2 = '!'
        string_len = len(trim(file_data(i)))
        do j =1, string_len
            is_digit_result = is_digit(file_data(i)(j:j))

            if (is_digit_result) then
                if (digit1 == '!') then
                    digit1 = file_data(i)(j:j)
                else
                    digit2 = file_data(i)(j:j)
                end if
            end if
        end do
        ! Now we want to format the two integers into a single integer
        if (digit2 == '!') digit2 = digit1

        another_string = digit1 // digit2
        read(another_string, "(i2)") new_int

        all_integers(i) = new_int

    end do

    do i = 1, file_size
        total_value = total_value + all_integers(i)
    end do

    print *, total_value

end program day1
