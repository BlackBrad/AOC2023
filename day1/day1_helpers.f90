
module day1_helpers
    contains
        character function check_three_letters(string)
            character (len = 3) :: string
            character :: return_val

            return_val = "!"

            if (string == "one") then
                return_val = "1"
            else if (string == "two") then
                return_val = "2"
            else if (string == "six") then
                return_val = "6"
            end if

            check_three_letters = return_val

        end function
end module day1_helpers
