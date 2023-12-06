
#ifdef REAL_INPUT
#define FILE_PATH "day1/real.txt"
#else
#define FILE_PATH "day1/example.txt"
#endif

program day1
    use file_helpers
    use string_utils

    character(len=255), pointer :: file_data (:)
    integer :: file_size, i, j
    logical :: is_digit_result
    integer :: idigit1, idigit2, total_value
    integer, dimension(:), allocatable :: all_integers

    file_size = read_file(FILE_PATH, file_data)

    allocate(all_integers(file_size))

    total_value = 0

    do i = 1, file_size
        idigit1 = -1
        idigit2 = -1
        do j =1, len(trim(file_data(i)))
            is_digit_result = is_digit(file_data(i)(j:j))

            if (is_digit_result) then
                if (idigit1 == -1) then
                    read(file_data(i)(j:j), "(i1)") idigit1
                else
                    read(file_data(i)(j:j), "(i1)") idigit2
                end if
            end if
        end do

        ! If a second digit was not found then make the second digit the same
        ! as the first
        if (idigit2 == -1) idigit2 = idigit1

        all_integers(i) = (idigit1 * 10) + idigit2

    end do

    ! Take the sum of all the numbers found
    do i = 1, file_size
        total_value = total_value + all_integers(i)
    end do

    print *, total_value

end program day1
