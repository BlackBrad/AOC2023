test_suite day2_helpers

test test_is_game_valid_1
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "1 red, 1 green, 1 blue")

    assert_true(return_val)
end test

test test_is_game_valid_2
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "1 red, 1 green")

    assert_true(return_val)
end test

test test_is_game_valid_3
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "1 red")

    assert_true(return_val)
end test

test test_is_game_valid_4
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "1 green")

    assert_true(return_val)
end test

test test_is_game_valid_5
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "1 blue")

    assert_true(return_val)
end test

test test_is_game_valid_6
    logical :: return_val

    return_val = is_game_substring_valid(2, 1, 1, "1 blue")

    assert_true(return_val)
end test

test test_is_game_valid_7
    logical :: return_val

    return_val = is_game_substring_valid(2, 2, 1, "1 blue")

    assert_true(return_val)
end test

test test_is_game_valid_8
    logical :: return_val

    return_val = is_game_substring_valid(1, 22, 22, "21 blue")

    assert_true(return_val)
end test

test test_is_game_valid_real_example_1
    logical :: return_val

    return_val = is_game_substring_valid(12, 13, 14, "8 green, 6 blue, 20 red")

    assert_false(return_val)
end test

test test_is_game_valid_real_example_2
    logical :: return_val

    return_val = is_game_substring_valid(12, 13, 14, "1 green, 3 red, 6 blue")

    assert_true(return_val)
end test

test test_is_game_valid_real_example_3
    logical :: return_val

    return_val = is_game_substring_valid(12, 13, 14, "3 green, 6 red")

    assert_true(return_val)
end test

test test_is_game_valid_real_example_4
    logical :: return_val

    return_val = is_game_substring_valid(12, 13, 14, "3 green, 15 blue, 14 red")

    assert_false(return_val)
end test

test test_is_game_valid_1_false
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "2 red")

    assert_false(return_val)
end test

test test_is_game_valid_2_false
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "2 green")

    assert_false(return_val)
end test

test test_is_game_valid_3_false
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "2 blue")

    assert_false(return_val)
end test

test test_is_game_valid_4_false
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 20, "21 blue")

    assert_false(return_val)
end test

test test_is_game_valid_5_false
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 20, "19 blue, 2 red")

    assert_false(return_val)
end test

test test_is_game_valid_6_false
    logical :: return_val

    return_val = is_game_substring_valid(2, 1, 20, "19 blue, 1 red, 21 blue")

    assert_false(return_val)
end test

test test_is_game_string_valid_1
    logical :: return_val

    return_val = is_game_string_valid(2, 2, 20, "Game 1: 1 red, 1 green, 1 blue; 2 red, 2 green, 2 blue")

    assert_true(return_val)
end test


! Run is_game_string_valid against the real example input
test test_is_game_string_valid_real_example_1
    logical :: return_val

    return_val = is_game_string_valid(12, 13, 14, "Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green")

    assert_true(return_val)
end test

test test_is_game_string_valid_real_example_2
    logical :: return_val

    return_val = is_game_string_valid(12, 13, 14, "Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue")

    assert_true(return_val)
end test

test test_is_game_string_valid_real_example_3
    logical :: return_val

    return_val = is_game_string_valid(12, 13, 14, "Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red")

    assert_false(return_val)
end test

test test_is_game_string_valid_real_example_4
    logical :: return_val

    return_val = is_game_string_valid(12, 13, 14, "Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red")

    assert_false(return_val)
end test

end test_suite
