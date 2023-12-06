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

end test_suite
