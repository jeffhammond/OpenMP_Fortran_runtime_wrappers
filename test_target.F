!------------------------------------------
!
! Copyright 2016, Intel Corporation
!
! See LICENSE for details.
!
! Author: Jeff Hammond
!         Data Center Group
!         Intel Corporation
!
!------------------------------------------

program test
  use iso_c_binding
  use omp_lib_f03
  use omp_target_f03
  implicit none
  integer :: nt
  call omp_set_num_threads_c(4)
  print*,'omp_set_num_threads_c(4)'
  nt = omp_get_num_threads_c()
  print*,'omp_get_num_threads_c',nt
  nt = omp_get_max_threads_c()
  print*,'omp_get_max_threads_c',nt
end program test
