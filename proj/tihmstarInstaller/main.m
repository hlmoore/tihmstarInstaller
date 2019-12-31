#import <Foundation/Foundation.h>
#include <pwd.h>
#include <spawn.h>
void InstallDepends(char *name_of_file) {
    extern char **environ;
    pid_t pid;
    char *argv[] = {
        "/usr/local/bin/brew",
        "install",
        name_of_file,
        NULL};
    
    posix_spawn(&pid, argv[0], NULL, NULL, argv, environ);
    waitpid(pid, NULL, 0);
    printf("Done!\n");
}
int main() {
    @autoreleasepool {
        // insert code here...
        
        printf("===========================================\n");
        printf("Tihmstar depends installer by Brandon Plank\n");
        printf("===========================================\n");
        
        sleep(1);
        
        printf("Installing! Please Wait!\n");
        
        InstallDepends("ack");
        InstallDepends("atk");
        InstallDepends("autoconf");
        InstallDepends("automake");
        InstallDepends("binutils");
        InstallDepends("binwalk");
        InstallDepends("boost");
        InstallDepends("cairo");
        InstallDepends("cifer");
        InstallDepends("clutter");
        InstallDepends("cmake");
        InstallDepends("cogl");
        InstallDepends("colormake");
        InstallDepends("coreutils");
        InstallDepends("cryptopp");
        InstallDepends("curl");
        InstallDepends("dex2jar");
        InstallDepends("dns2tcp");
        InstallDepends("docbook");
        InstallDepends("docbook-xsl");
        InstallDepends("dpkg");
        InstallDepends("expat");
        InstallDepends("fcrackzip");
        InstallDepends("findutils");
        InstallDepends("fontconfig");
        InstallDepends("foremost");
        InstallDepends("freetype");
        InstallDepends("fribidi");
        InstallDepends("gcc");
        InstallDepends("gdbm");
        InstallDepends("gdk-pixbuf");
        InstallDepends("gettext");
        InstallDepends("git");
        InstallDepends("glib");
        InstallDepends("gmp");
        InstallDepends("gnu-tar");
        InstallDepends("graphite2");
        InstallDepends("gtk-doc");
        InstallDepends("harfbuzz");
        InstallDepends("hashpump");
        InstallDepends("hydra");
        InstallDepends("icu4c");
        InstallDepends("isl");
        InstallDepends("john");
        InstallDepends("jpeg");
        InstallDepends("json-glib");
        InstallDepends("knock");
        InstallDepends("ldid");
        InstallDepends("libdnet");
        InstallDepends("libffi");
        InstallDepends("libimobiledevice");
        InstallDepends("libmpc");
        InstallDepends("libplist");
        InstallDepends("libpng");
        InstallDepends("libssh");
        InstallDepends("libtasn1");
        InstallDepends("libtiff");
        InstallDepends("libtool");
        InstallDepends("libusb");
        InstallDepends("libusbmuxd");
        InstallDepends("libxml2");
        InstallDepends("libzip");
        InstallDepends("lua");
        InstallDepends("lynx");
        InstallDepends("lzo");
        InstallDepends("m4");
        InstallDepends("moreutils");
        InstallDepends("mpfr");
        InstallDepends("mysql-client");
        InstallDepends("nmap");
        InstallDepends("node");
        InstallDepends("openssl@1.1");
        InstallDepends("p7zip");
        InstallDepends("pango");
        InstallDepends("pcre");
        InstallDepends("pcre2");
        InstallDepends("perl");
        InstallDepends("pigz");
        InstallDepends("pixman");
        InstallDepends("pkg-config");
        InstallDepends("pngcheck");
        InstallDepends("python3");
        InstallDepends("readline");
        InstallDepends("screenfetch");
        InstallDepends("socat");
        InstallDepends("source-highlight");
        InstallDepends("sqlite");
        InstallDepends("sqlmap");
        InstallDepends("ssdeep");
        InstallDepends("tcpflow");
        InstallDepends("tcpreplay");
        InstallDepends("tcptrace");
        InstallDepends("ucspi-tcp");
        InstallDepends("xz");
        printf("Fully installed!\nYou no-longer need to run this script!\n");
        printf("Now to compile, lets say img4tool, run\n./autogen.sh\nmake\nsudo make install\n");
    }
    return 0;
}
