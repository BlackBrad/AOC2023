module string_utils
    implicit none

        type string_to_int_map
            character (len=10) :: string
            integer :: val
        end type

        type(string_to_int_map), dimension(9) :: test

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
            character (len=10) string ! in
            integer :: return_val ! return out
            integer :: i, map_size

            ! Setup the mapping here
            ! TODO, SURELY FORTRAN PROVIDES A NICER MEANS OF DOING THIS?
            test(1)%string = 'one'
            test(1)%val = 1
            test(2)%string = 'two'
            test(2)%val = 2
            test(3)%string = 'three'
            test(3)%val = 3
            test(4)%string = 'four'
            test(4)%val = 4
            test(5)%string = 'five'
            test(5)%val = 5
            test(6)%string = 'six'
            test(6)%val = 6
            test(7)%string = 'seven'
            test(7)%val = 7
            test(8)%string = 'eight'
            test(8)%val = 8
            test(9)%string = 'nine'
            test(9)%val = 9

            return_val = -1

            do i = 1, size(test)
                if (string == test(i)%string) then
                    return_val = test(i)%val
                    exit
                end if
            end do

            string_digit_to_int = return_val
        end function
end module string_utils
