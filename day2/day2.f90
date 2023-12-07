
#ifdef REAL_INPUT
#define FILE_PATH "day1/real.txt"
#else
#define FILE_PATH "day1/example.txt"
#endif

program day2
    use file_helpers
    use string_utils

    character(len=255), pointer :: file_data (:)
    integer, dimension(:), allocatable :: all_integers
    integer :: total_value

    file_size = read_file(FILE_PATH, file_data)

    allocate(all_integers(file_size))

    print *, total_value

end program day2
