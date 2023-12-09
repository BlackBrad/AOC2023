module day2_helpers
    contains
        logical function is_game_substring_valid(red_limit, green_limit, blue_limit, game_substring)
            integer :: red_limit, green_limit, blue_limit
            character (len = *) :: game_substring
            logical :: return_value ! return out

            return_value = .FALSE.

            is_game__substring_valid = return_value
        end function
end module
