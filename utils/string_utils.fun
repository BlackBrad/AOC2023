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

test test_string_digit_to_int_one
    integer :: int_result
    character(len=10) :: test_value

    test_value = "one"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 1)
end test

test test_string_digit_to_int_two
    integer :: int_result
    character(len=10) :: test_value

    test_value = "two"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 2)
end test

test test_string_digit_to_int_three
    integer :: int_result
    character(len=10) :: test_value

    test_value = "three"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 3)
end test

test test_string_digit_to_int_four
    integer :: int_result
    character(len=10) :: test_value

    test_value = "four"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 4)
end test

test test_string_digit_to_int_five
    integer :: int_result
    character(len=10) :: test_value

    test_value = "five"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 5)
end test

test test_string_digit_to_int_six
    integer :: int_result
    character(len=10) :: test_value

    test_value = "six"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 6)
end test

test test_string_digit_to_int_seven
    integer :: int_result
    character(len=10) :: test_value

    test_value = "seven"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 7)
end test

test test_string_digit_to_int_eight
    integer :: int_result
    character(len=10) :: test_value

    test_value = "eight"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 8)
end test

test test_string_digit_to_int_nine
    integer :: int_result
    character(len=10) :: test_value

    test_value = "nine"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 9)
end test

! Test string_digit_to_int works with exta characters on the end
test test_string_digit_to_int_onea
    integer :: int_result
    character(len=10) :: test_value

    test_value = "onea"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 1)
end test

test test_string_digit_to_int_twobc
    integer :: int_result
    character(len=10) :: test_value

    test_value = "twobc"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 2)
end test

test test_string_digit_to_int_threedef
    integer :: int_result
    character(len=10) :: test_value

    test_value = "threedef"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 3)
end test

test test_string_digit_to_int_fourghij
    integer :: int_result
    character(len=10) :: test_value

    test_value = "fourghij"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 4)
end test

test test_string_digit_to_int_fivelmnop
    integer :: int_result
    character(len=10) :: test_value

    test_value = "fiveklmnop"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 5)
end test

test test_string_digit_to_int_sixabcd
    integer :: int_result
    character(len=10) :: test_value

    test_value = "sixabcd"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 6)
end test

test test_string_digit_to_int_seven123
    integer :: int_result
    character(len=10) :: test_value

    test_value = "seven123"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 7)
end test

test test_string_digit_to_int_eightacv45
    integer :: int_result
    character(len=10) :: test_value

    test_value = "eightacv45"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 8)
end test

test test_string_digit_to_int_nineone
    integer :: int_result
    character(len=10) :: test_value

    test_value = "nineone"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, 9)
end test

! Test invalid values for string_digit_to_int
test test_string_digit_to_int_acbd
    integer :: int_result
    character(len=10) :: test_value

    test_value = "abcd"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, -1)
end test

test test_string_digit_to_int_1234
    integer :: int_result
    character(len=10) :: test_value

    test_value = "1234"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, -1)
end test

test test_string_digit_to_int_1
    integer :: int_result
    character(len=10) :: test_value

    test_value = "1"

    int_result = string_digit_to_int(test_value)

    assert_equal(int_result, -1)
end test

test test_count_char_in_string_1
    integer :: int_result

    int_result = count_char_in_string(";", ';')

    assert_equal(int_result, 1)
end test

test test_count_char_in_string_2
    integer :: int_result

    int_result = count_char_in_string(";;", ';')

    assert_equal(int_result, 2)
end test

test test_count_char_in_string_3
    integer :: int_result

    int_result = count_char_in_string(";;;;;;;;;;", ';')

    assert_equal(int_result, 10)
end test

test test_count_char_in_string_4
    integer :: int_result

    int_result = count_char_in_string(";aaa;", ';')

    assert_equal(int_result, 2)
end test

test test_count_char_in_string_5
    integer :: int_result

    int_result = count_char_in_string("aaa;aaa;aa", ';')

    assert_equal(int_result, 2)
end test

test test_get_first_character_index_1
    integer :: int_result

    int_result = get_first_character_index(";", ';')

    assert_equal(int_result, 1)
end test

test test_get_first_character_index_2
    integer :: int_result

    int_result = get_first_character_index(" ;", ';')

    assert_equal(int_result, 2)
end test

test test_get_first_character_index_3
    integer :: int_result

    int_result = get_first_character_index("abcdefg;", ';')

    assert_equal(int_result, 8)
end test

end test_suite
