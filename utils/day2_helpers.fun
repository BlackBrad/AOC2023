test_suite day2_helpers

test test_is_game_valid
    logical :: return_val

    return_val = is_game_substring_valid(1, 1, 1, "1 red, 1 green, 1 blue")

    assert_true(return_val)
end test

end test_suite
