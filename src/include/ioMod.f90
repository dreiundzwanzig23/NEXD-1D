! Simple I/O utilities for reading and writing vectors
module ioMod
  use constantsMod
  implicit none
contains
  subroutine writeVector(filename, vec)
    character(len=*), intent(in) :: filename
    real(kind=custom_real), dimension(:), intent(in) :: vec
    integer :: unit, i
    open(newunit=unit, file=filename, status='replace', action='write')
    do i = 1, size(vec)
      write(unit,*) vec(i)
    end do
    close(unit)
  end subroutine writeVector

  function readVector(filename) result(vec)
    character(len=*), intent(in) :: filename
    real(kind=custom_real), allocatable :: vec(:)
    integer :: unit, n, i
    real(kind=custom_real) :: tmp
    n = 0
    open(newunit=unit, file=filename, status='old', action='read')
    do
      read(unit,*,end=10) tmp
      n = n + 1
    end do
10  continue
    rewind(unit)
    allocate(vec(n))
    do i = 1, n
      read(unit,*) vec(i)
    end do
    close(unit)
  end function readVector
end module ioMod
