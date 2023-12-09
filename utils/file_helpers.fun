test_suite file_helpers

character (len=255) :: fake_file_name
integer :: fake_file_size

setup
    ! Create a fake file for testing
    integer :: i

    ! Set the globals
    ! For some reason when I try to declare these at the top I keep getting
    ! 'Unexpected data declaration statement in CONTAINS section'
    fake_file_name = "test.dat"
    fake_file_size = 100

    open (1, file="test.dat", status="new")

    do i=1, fake_file_size
        write(1, *) i
    end do

    close(1)

end setup

teardown
    open(1, file="test.dat")
    close(1, status="delete")
end teardown

test test_get_file_size
    integer :: gotten_size

    gotten_size = get_file_size(fake_file_name)

    assert_equal(gotten_size, fake_file_size)
end test

test test_read_file
    character (len=255), pointer :: file_data (:)
    integer :: gotten_size, file_data_size

    gotten_size = read_file(fake_file_name, file_data)

    assert_equal(gotten_size, fake_file_size)
    assert_equal(size(file_data), fake_file_size)

end test

end test_suite
