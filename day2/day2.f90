
#ifdef REAL_INPUT
#define FILE_PATH "day2/real.txt"
#else
#define FILE_PATH "day2/example.txt"
#endif

program day2
    use file_helpers
    use string_utils
    use day2_helpers

    character(len=255), pointer :: file_data (:)
    integer, dimension(:), allocatable :: all_integers
    integer :: total_value, i, id_value, first_space_index, first_colon_index
    integer :: red_limit, green_limit, blue_limit
    logical :: game_string_valid

    red_limit = 12
    green_limit = 13
    blue_limit = 14

    total_value = 0

    game_string_valid = .TRUE.

    file_size = read_file(FILE_PATH, file_data)

    allocate(all_integers(file_size))

    do i = 1, file_size
        ! Substring the id out
        first_colon_index = get_first_character_index(file_data(i), ":")
        read(file_data(i)(5 : first_colon_index - 1), "(i5)") id_value

        game_string_valid = is_game_string_valid(red_limit, green_limit, blue_limit, file_data(i))

        if (game_string_valid .eqv. .TRUE.) then
            total_value = total_value + id_value
        end if
    end do

    print *, total_value

end program day2
