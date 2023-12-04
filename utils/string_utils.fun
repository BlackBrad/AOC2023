test_suite string_utils

setup
end setup

teardown
end teardown

test test_is_digit_0
    logical :: is_digit_result

    is_digit_result = is_digit('0')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_1
    logical :: is_digit_result

    is_digit_result = is_digit('1')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_2
    logical :: is_digit_result

    is_digit_result = is_digit('2')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_3
    logical :: is_digit_result

    is_digit_result = is_digit('3')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_4
    logical :: is_digit_result

    is_digit_result = is_digit('4')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_5
    logical :: is_digit_result

    is_digit_result = is_digit('5')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_6
    logical :: is_digit_result

    is_digit_result = is_digit('6')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_7
    logical :: is_digit_result

    is_digit_result = is_digit('7')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_8
    logical :: is_digit_result

    is_digit_result = is_digit('8')


    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_9
    logical :: is_digit_result

    is_digit_result = is_digit('9')

    assert_true(is_digit_result .eqv. .TRUE.)
end test

test test_is_digit_a
    logical :: is_digit_result

    is_digit_result = is_digit('a')

    assert_true(is_digit_result .eqv. .FALSE.)
end test

test test_is_digit_b
    logical :: is_digit_result

    is_digit_result = is_digit('b')

    assert_true(is_digit_result .eqv. .FALSE.)
end test

test test_is_digit_c
    logical :: is_digit_result

    is_digit_result = is_digit('c')

    assert_true(is_digit_result .eqv. .FALSE.)
end test

test test_is_digit_.
    logical :: is_digit_result

    is_digit_result = is_digit('.')

    assert_true(is_digit_result .eqv. .FALSE.)
end test

test test_is_digit_exlaim
    logical :: is_digit_result

    is_digit_result = is_digit('!')

    assert_true(is_digit_result .eqv. .FALSE.)
end test

end test_suite
