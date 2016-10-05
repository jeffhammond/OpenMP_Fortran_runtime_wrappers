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

!
! TODO figure out how to wrap enum
!
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
  ! 3.2.22 omp_get_proc_bind
  interface
    integer (c_int) function omp_get_proc_bind_c() &
                             bind(C, name="omp_get_proc_bind")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_proc_bind_c
  end interface
  ! 3.2.23 omp_get_num_places
  interface
    integer (c_int) function omp_get_num_places_c() &
                             bind(C, name="omp_get_num_places")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_num_places_c
  end interface
  ! 3.2.24 omp_get_place_num_procs
  interface
    integer (c_int) function omp_get_place_num_procs_c() &
                             bind(C, name="omp_get_place_num_procs")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_place_num_procs_c
  end interface
  ! 3.2.25 omp_get_place_proc_ids
  interface
    integer (c_int) function omp_get_place_proc_ids_c() &
                             bind(C, name="omp_get_place_proc_ids")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_place_proc_ids_c
  end interface
  ! 3.2.26 omp_get_place_num
  interface
    integer (c_int) function omp_get_place_num_c() &
                             bind(C, name="omp_get_place_num")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_place_num_c
  end interface
  ! 3.2.27 omp_get_partition_num_places
  interface
    integer (c_int) function omp_get_partition_num_places_c() &
                             bind(C, name="omp_get_partition_num_places")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_partition_num_places_c
  end interface
  ! 3.2.28 omp_get_partition_place_nums
  interface
    integer (c_int) function omp_get_partition_place_nums_c() &
                             bind(C, name="omp_get_partition_place_nums")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_partition_place_nums_c
  end interface
  ! 3.2.29 omp_set_default_device
  interface
    subroutine omp_set_default_device_c(default_device) &
               bind(C, name="omp_set_default_device")
      use iso_c_binding, only: c_int
      implicit none
      integer (c_int), value :: default_device
    end subroutine omp_set_default_device_c
  end interface
  ! 3.2.30 omp_get_default_device
  interface
    integer (c_int) function omp_get_default_device_c() &
                             bind(C, name="omp_get_default_device")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_default_device_c
  end interface
  ! 3.2.31 omp_get_num_devices
  interface
    integer (c_int) function omp_get_num_devices_c() &
                             bind(C, name="omp_get_num_devices")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_num_devices_c
  end interface
  ! 3.2.32 omp_get_num_teams
  interface
    integer (c_int) function omp_get_num_teams_c() &
                             bind(C, name="omp_get_num_teams")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_num_teams_c
  end interface
  ! 3.2.33 omp_get_team_num
  interface
    integer (c_int) function omp_get_team_num_c() &
                             bind(C, name="omp_get_team_num")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_team_num_c
  end interface
  ! 3.2.34 omp_is_initial_device
  interface
    integer (c_int) function omp_is_initial_device_c() &
                             bind(C, name="omp_is_initial_device")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_is_initial_device_c
  end interface
  ! 3.2.35 omp_get_initial_device
  interface
    integer (c_int) function omp_get_initial_device_c() &
                             bind(C, name="omp_get_initial_device")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_initial_device_c
  end interface
  ! 3.2.36 omp_get_max_task_priority
  interface
    integer (c_int) function omp_get_max_task_priority_c() &
                             bind(C, name="omp_get_max_task_priority")
      use iso_c_binding, only: c_int
      implicit none
    end function omp_get_max_task_priority_c
  end interface
  ! 3.4.1 omp_get_wtime
  interface
    integer (c_double) function omp_get_wtime_c() &
                                bind(C, name="omp_get_wtime")
      use iso_c_binding, only: c_double
      implicit none
    end function omp_get_wtime_c
  end interface
  ! 3.4.2 omp_get_wtick
  interface
    integer (c_double) function omp_get_wtick_c() &
                             bind(C, name="omp_get_wtick")
      use iso_c_binding, only: c_double
      implicit none
    end function omp_get_wtick_c
  end interface
end module omp_lib_f03

module omp_lock_f03
  ! 3.3.1 omp_init_lock
  interface
    subroutine omp_init_lock_c(lock) &
               bind(C, name="omp_init_lock")
      use iso_c_binding, only: c_ptr
      implicit none
      type (c_ptr), value :: lock
    end subroutine omp_init_lock_c
  end interface
  ! 3.3.6 omp_test_lock
  interface
    integer (c_int) function omp_test_lock_c(lock) &
                             bind(C, name="omp_test_lock")
      use iso_c_binding, only: c_int, c_ptr
      implicit none
      type (c_ptr), value :: lock
    end function omp_test_lock_c
  end interface
end module omp_lock_f03

module omp_target_f03
end module omp_target_f03

