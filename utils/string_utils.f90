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
end module string_utils
