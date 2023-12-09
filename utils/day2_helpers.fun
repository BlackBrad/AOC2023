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

end test_suite
