module day1_helpers
    use string_utils

    contains
        integer function get_value_from_line(string)
            character (len = *) :: string ! in
            integer :: return_value ! out return
            integer :: digit1, digit2, string_as_int, found_digit
            logical :: is_digit_result, found_string_digit, found_int_digit
            integer :: i

            digit1 = -1
            digit2 = -1
            string_as_int = -1
            found_digit = -1
            is_digit_result = .FALSE.
            found_string_digit = .FALSE.
            found_int_digit = .FALSE.

            do i = 1, len(trim(string))
                is_digit_result = is_digit(string(i:i))

                if (is_digit_result .AND. .not. found_string_digit) then
                    found_int_digit = .TRUE.
                    read(string(i:i), "(i1)") found_digit
                else
                    string_as_int = string_digit_to_int(string(i:))

                    if (string_as_int /=-1 .AND. .not. found_int_digit) then
                        found_string_digit = .TRUE.
                        found_digit = string_as_int
                    end if
                end if

                if (digit1 == -1) then
                    digit1 = found_digit
                else
                    digit2 = found_digit
                end if
            end do

            if (digit2 == -1) digit2 = digit1

            return_value = (digit1 * 10) + digit2

            get_value_from_line = return_value
        end function

end module day1_helpers
