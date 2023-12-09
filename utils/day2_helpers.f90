module day2_helpers
    use string_utils

    contains
        logical function is_game_substring_valid(red_limit, green_limit, blue_limit, game_substring)
            integer :: red_limit, green_limit, blue_limit ! in
            character (len = *) :: game_substring         ! in
            logical :: return_value                       ! return out
            integer :: i, red_count, green_count, blue_count
            integer :: digit_1, digit_2, count_value
            logical :: is_digit_value

            return_value = .TRUE.
            is_digit_value = .FALSE.
            red_count = 0
            green_count = 0
            blue_count = 0
            digit_1 = -1
            digit_2 = -1
            count_value = 0

            do i = 1, len(game_substring)
                if (game_substring(i:i) /= " ") then
                    is_digit_value = is_digit(game_substring(i:i))

                    if (is_digit_value) then
                        if (count_value == 0) then
                            read(game_substring(i : i), "(i1)") count_value
                        else
                            read(game_substring(i : i), "(i1)") digit_2
                            count_value = (count_value * 10) + digit_2
                        end if
                    else
                        if (game_substring(i : i + 2) == "red") then
                            red_count = count_value
                        else if (game_substring(i : i + 4) == "green") then
                            green_count = count_value
                        else if (game_substring(i : i + 3) == "blue") then
                            blue_count = count_value
                        end if
                    end if
                end if

                if (blue_count > 0 .OR. red_count > 0 .OR. green_count > 0) then
                    count_value = 0
                end if
            end do

            if (red_count > red_limit .OR. green_count > green_limit .OR. blue_count > blue_limit) then
                return_value = .FALSE.
            end if

            is_game_substring_valid = return_value
        end function
end module
