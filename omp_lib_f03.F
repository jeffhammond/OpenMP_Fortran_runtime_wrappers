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

!  use iso_c_binding
!  enum, bind(c) :: omp_sched_t
!    enumerator :: omp_sched_static, omp_sched_dynamic, &
!                  omp_sched_guided, omp_sched_auto
!    enumerator omp_sched_static  = 1
!    enumerator omp_sched_dynamic = 2
!    enumerator omp_sched_guided  = 3
!    enumerator omp_sched_auto    = 4
!  end enum

module omp_lib_f03
  ! 3.2.1 omp_set_num_threads
  interface
    subroutine omp_set_num_threads_c(num_threads) &
               bind(C, name="omp_set_num_threads")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), value :: num_threads
    end subroutine omp_set_num_threads_c
  end interface
  ! 3.2.2 omp_get_num_threads
  interface
    integer (c_int) function omp_get_num_threads_c() &
                             bind(C, name="omp_get_num_threads")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_num_threads_c
  end interface
  ! 3.2.3 omp_get_max_threads
  interface
    integer (c_int) function omp_get_max_threads_c() &
                             bind(C, name="omp_get_max_threads")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_max_threads_c
  end interface
  ! 3.2.4 omp_get_thread_num
  interface
    integer (c_int) function omp_get_thread_num_c() &
                             bind(C, name="omp_get_thread_num")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_thread_num_c
  end interface
  ! 3.2.5 omp_get_num_procs
  interface
    integer (c_int) function omp_get_num_procs_c() &
                             bind(C, name="omp_get_num_procs")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_num_procs_c
  end interface
  ! 3.2.6 omp_in_parallel
  interface
    integer (c_int) function omp_in_parallel_c() &
                             bind(C, name="omp_in_parallel")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_in_parallel_c
  end interface
  ! 3.2.7 omp_set_dynamic
  interface
    subroutine omp_set_dynamic_c(dynamic) &
               bind(C, name="omp_set_dynamic")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), value, intent(in) :: dynamic
    end subroutine omp_set_dynamic_c
  end interface
  ! 3.2.8 omp_get_dynamic
  interface
    integer (c_int) function omp_get_dynamic_c() &
                             bind(C, name="omp_get_dynamic")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_dynamic_c
  end interface
  ! 3.2.9 omp_get_cancellation
  interface
    integer (c_int) function omp_get_cancellation_c() &
                             bind(C, name="omp_get_cancellation")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_cancellation_c
  end interface
  ! 3.2.10 omp_set_nested
  interface
    subroutine omp_set_nested_c(nested) &
               bind(C, name="omp_set_nested")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), value, intent(in) :: nested
    end subroutine omp_set_nested_c
  end interface
  ! 3.2.11 omp_get_nested
  interface
    integer (c_int) function omp_get_nested_c() &
                             bind(C, name="omp_get_nested")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_nested_c
  end interface
  ! 3.2.12 omp_set_schedule
  interface
    subroutine omp_set_schedule_c(schedule, chunk_size) &
               bind(C, name="omp_set_schedule")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), value, intent(in) :: schedule
      integer (c_int), value, intent(in) :: chunk_size
    end subroutine omp_set_schedule_c
  end interface
  ! 3.2.13 omp_get_schedule
  interface
    subroutine omp_get_schedule_c(schedule, chunk_size) &
               bind(C, name="omp_get_schedule")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), intent(out) :: schedule
      integer (c_int), intent(out) :: chunk_size
    end subroutine omp_get_schedule_c
  end interface
  ! 3.2.14 omp_get_thread_limit
  interface
    integer (c_int) function omp_get_thread_limit_c() &
                             bind(C, name="omp_get_thread_limit")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_thread_limit_c
  end interface
  ! 3.2.15 omp_set_max_active_levels
  interface
    subroutine omp_set_max_active_levels_c(max_active_levels) &
               bind(C, name="omp_set_max_active_levels")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), value, intent(in) :: max_active_levels
    end subroutine omp_set_max_active_levels_c
  end interface
  ! 3.2.16 omp_get_max_active_levels
  interface
    integer (c_int) function omp_get_max_active_levels_c() &
                             bind(C, name="omp_get_max_active_levels")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_max_active_levels_c
  end interface
  ! 3.2.17 omp_get_levels
  interface
    integer (c_int) function omp_get_levels_c() &
                             bind(C, name="omp_get_levels")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_levels_c
  end interface
  ! 3.2.18 omp_get_ancestor_thread_num
  interface
    integer (c_int) function omp_get_ancestor_thread_num_c() &
                             bind(C, name="omp_get_ancestor_thread_num")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_ancestor_thread_num_c
  end interface
  ! 3.2.19 omp_get_team_size
  interface
    integer (c_int) function omp_get_team_size_c() &
                             bind(C, name="omp_get_team_size")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_team_size_c
  end interface
  ! 3.2.20 omp_get_active_level
  interface
    integer (c_int) function omp_get_active_level_c() &
                             bind(C, name="omp_get_active_level")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_active_level_c
  end interface
  ! 3.2.21 omp_in_final
  interface
    integer (c_int) function omp_in_final_c() &
                             bind(C, name="omp_in_final")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_in_final_c
  end interface
end module omp_lib_f03

