#include <unistd.h>
#include <sys/syscall.h>

extern ssize_t write(int file, const void *buf, size_t nbyte) {
    syscall(SYS_write, file, buf, nbyte);
    return 0;
}
