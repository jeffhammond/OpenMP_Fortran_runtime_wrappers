! example from http://stackoverflow.com/tags/fortran-iso-c-binding/info
! MODULE FTN_C
!   INTERFACE
!     INTEGER (C_INT) FUNCTION C_LIBRARY_FUNCTION(SENDBUF, SENDCOUNT, RECVCOUNTS) &
!                     BIND(C, NAME='C_Library_Function')
!       USE ISO_C_BINDING
!       IMPLICIT NONE
!       TYPE (C_PTR), VALUE :: SENDBUF
!       INTEGER (C_INT), VALUE :: SENDCOUNT
!       TYPE (C_PTR), VALUE :: RECVCOUNTS
!     END FUNCTION C_LIBRARY_FUNCTION
!   END INTERFACE
! END MODULE FTN_C

module omp_lib_f03
  interface
    subroutine omp_set_num_threads_c(num_threads) &
               bind(C, name="omp_set_num_threads")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), value :: num_threads
    end subroutine omp_set_num_threads_c
  end interface
end module omp_lib_f03

