module string_utils
    implicit none

     contains
        logical function is_digit(ch)
            character :: ch ! in
            logical :: return_val ! return out
            integer :: char_as_int, ascii_0, ascii_9

            ascii_0 = 48
            ascii_9 = 57


            return_val = .FALSE.

            char_as_int = iachar(ch)

            if (char_as_int >= ascii_0 .AND. char_as_int <= ascii_9) then
                return_val = .TRUE.
            endif

            is_digit = return_val
        end function

        integer function string_digit_to_int(string)
            character (len = *) string ! in
            integer :: return_val ! return out
            integer :: i, map_size

            return_val = -1

            if (string(1:3) == "one") then
                return_val = 1
            else if (string(1:3) == "two") then
                return_val = 2
            else if (string(1:5) == "three") then
                return_val = 3
            else if (string(1:4) == "four") then
                return_val = 4
            else if (string(1:4) == "five") then
                return_val = 5
            else if (string(1:3) == "six") then
                return_val = 6
            else if (string(1:5) == "seven") then
                return_val = 7
            else if (string(1:5) == "eight") then
                return_val = 8
            else if (string(1:4) == "nine") then
                return_val = 9
            end if

            string_digit_to_int = return_val
        end function

        integer function count_char_in_string(string, ch)
            character (len = *) string ! in
            character :: ch            ! in
            integer :: return_value    ! return out
            integer :: i

            return_value = 0

            do i = 1, len(string)
                if (string(i : i) == ch) then
                    return_value = return_value + 1
                end if
            end do

            count_char_in_string = return_value
        end function

        integer function get_first_character_index(string, ch)
            character (len = *) string ! in
            character :: ch            ! in
            integer :: return_value    ! return out
            integer :: i

            return_value = 0

            do i = 0, len(string)
                if (string(i : i) == ch) then
                    return_value = i
                end if
            end do

            get_first_character_index = return_value
        end function
end module string_utils
