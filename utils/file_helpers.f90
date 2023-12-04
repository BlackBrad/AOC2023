module file_helpers
    implicit none

    contains
        integer function read_file(file_path, file_data)
            character (len=*) :: file_path ! in
            character (len=255), pointer :: file_data(:) ! out
            integer :: file_size, i

            file_size = get_file_size(file_path)

            ! Allocate array size
            allocate(file_data(file_size))

            open(1, file = file_path, status="old")

            rewind(1)

            do i=1, file_size
                read(1, "(a)") file_data(i)
            end do

            close(1)

            read_file = file_size
        end function

        integer function get_file_size(file_path)
            integer :: file_descriptor = 1
            character (len=*) :: file_path
            character (len=255) :: buffer
            integer :: file_size, ios

            file_size = 0

            open(file_descriptor, file = file_path, status='old')

            do
                read(file_descriptor, "(a)", iostat=ios) buffer


                if (ios < 0) then
                    exit
                end if

                file_size = file_size + 1
            end do

            close(file_descriptor)

            get_file_size = file_size
        end function
end module file_helpers
