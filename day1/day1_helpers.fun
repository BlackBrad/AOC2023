test_suite day1_helpers

setup
end setup

teardown
end teardown

test test_check_three_letters_one
    character :: return_val

    return_val = check_three_letters("one")
    assert_equal(return_val, "1")
end test

test test_check_three_letters_two
    character :: return_val

    return_val = check_three_letters("two")
    assert_equal(return_val, "2")
end test

test test_check_three_letters_six
    character :: return_val

    return_val = check_three_letters("six")
    assert_equal(return_val, "6")
end test

end test_suite
