module string_utils
    implicit none

    contains
        logical function is_digit(ch)
            character :: ch ! in
            logical :: return_val ! return out
            character, dimension(10) :: valid_digits
            integer :: i

            valid_digits = (/'1', '2', '3', '4', '5', '6', '7', '8', '9', '0'/)

            return_val = .FALSE.

            do i = 1, size(valid_digits)
                if (valid_digits(i) == ch) then
                    return_val = .TRUE.
                    exit
                end if
            end do

            is_digit = return_val
        end function
end module string_utils
