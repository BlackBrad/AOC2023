module file_helpers
    implicit none

    contains
        integer function read_file(file_data)
            character (len=255) :: file_data
            read_file = 0
        end function

        integer function get_file_size(file_path)
            integer :: file_descriptor = 1
            character (len=255) :: file_path
            integer :: file_size

            open(file_descriptor, file = file_path)

            close(file_descriptor)

            get_file_size = file_size

        end function

        integer function read_file_contents(file_path)
            character (len = 255) :: file_path

            read_file_contents = 0
        end function
end module file_helpers
