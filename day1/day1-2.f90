
#ifdef REAL_INPUT
#define FILE_PATH "day1/real.txt"
#else
#define FILE_PATH "day1/example-2.txt"
#endif

program day1
    use file_helpers
    use day1_helpers

    character(len=255), pointer :: file_data (:)
    integer :: file_size, i, j
    logical :: is_digit_result, found_string_digit, found_int_digit
    integer :: idigit1, idigit2, total_value, string_as_int
    integer, dimension(:), allocatable :: all_integers

    file_size = read_file(FILE_PATH, file_data)

    allocate(all_integers(file_size))

    total_value = 0
    found_string_digit = .FALSE.
    found_int_digit = .FALSE.

    do i = 1, file_size
        all_integers(i) = get_value_from_line(file_data(i))
    end do

    ! Take the sum of all the numbers found
    do i = 1, file_size
        total_value = total_value + all_integers(i)
    end do

    print *, total_value

end program day1
