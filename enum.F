      module enumtest
      use iso_c_binding
#if NAMED_ENUM
      enum, bind(c) :: color
        enumerator :: red = 4, blue = 9
        enumerator yellow
      end enum
#else
      enum, bind(c)
        enumerator :: red = 4, blue = 9
        enumerator yellow
      end enum
#endif
      end module enumtest
