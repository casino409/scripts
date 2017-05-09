import ctypes

# http://terryoy.github.io/2014/03/using-ctypes-to-wrap-c-library.html

# https://docs.python.org/3/library/ctypes.html
# https://docs.python.org/3/library/ctypes.html#accessing-values-exported-from-dlls
# https://docs.python.org/3/library/ctypes.html#ctypes.c_int

# http://intermediate-and-advanced-software-carpentry.readthedocs.io/en/latest/c++-wrapping.html
# http://stackoverflow.com/questions/1942298/wrapping-a-c-library-in-python-c-cython-or-ctypes

lib = ctypes.CDLL('./example.so')
# lib = ctypes.WinDLL('./example.dll')
# lib = ctypes.CDLL.LoadLibrary('./example.dll')


# extern int fact(int n);

fact          = lib.fact
fact.restype  = ctypes.c_int
fact.argtypes = ctypes.c_int,


# extern int my_mod(int x, int y);

mod          = lib.my_mod
mod.restype  = ctypes.c_int
mod.argtypes = ctypes.c_int,ctypes.c_int

# extern double My_variable;

my_var = ctypes.c_double.in_dll(lib, "My_variable")

# extern char *get_time();

ctime         = lib.get_time
ctime.restype = ctypes.c_char_p

print("fact(%d)   = %d" % (5, fact(5)))
print("mod(%d,%d) = %d" % (16, 3, mod(16, 3)))
print(my_var)
print("var = %.2f" % my_var.value)
print(ctime())
