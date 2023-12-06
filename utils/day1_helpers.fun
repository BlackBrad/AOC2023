test_suite day1_helpers

setup
end setup

teardown
end teardown

test test_get_value_from_line_11
    integer :: return_value

    return_value = get_value_from_line("11")

    assert_equal(return_value, 11)
end test

test test_get_value_from_line_12
    integer :: return_value

    return_value = get_value_from_line("12")

    assert_equal(return_value, 12)
end test

test test_get_value_from_line_1_single_digit
    integer :: return_value

    return_value = get_value_from_line("1")

    assert_equal(return_value, 11)
end test

test test_get_value_from_line_one_one

    integer :: return_value

    return_value = get_value_from_line("oneone")

    assert_equal(return_value, 11)
end test

test test_get_value_from_line_one_two
    integer :: return_value

    return_value = get_value_from_line("onetwo")

    assert_equal(return_value, 12)
end test

! Unit tests for real output from the advent of code website
test test_get_value_from_line_two1nine
    integer :: return_value

    return_value = get_value_from_line("two1nine")

    assert_equal(return_value, 29)
end test

test test_get_value_from_line_eightwothree
    integer :: return_value

    return_value = get_value_from_line("eightwothree")

    assert_equal(return_value, 83)
end test

test test_get_value_from_line_abcone2threexyz
    integer :: return_value

    return_value = get_value_from_line("abcone2threexyz")

    assert_equal(return_value, 13)
end test

test test_get_value_from_line_xtwone3four
    integer :: return_value

    return_value = get_value_from_line("xtwone3four")

    assert_equal(return_value, 24)
end test

test test_get_value_from_line_4nineeightseven2
    integer :: return_value

    return_value = get_value_from_line("4nineeightseven2")

    assert_equal(return_value, 42)
end test

test test_get_value_from_line_zoneight234
    integer :: return_value

    return_value = get_value_from_line("zoneight234")

    assert_equal(return_value, 14)
end test

test test_get_value_from_line_7pqrstsixteen
    integer :: return_value

    return_value = get_value_from_line("7pqrstsixteen")

    assert_equal(return_value, 76)
end test

end test_suite
