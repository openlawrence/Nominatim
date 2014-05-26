#ifndef INPUT_H
#define INPUT_H


struct Input
{
    char *name;
    enum { plainFile, gzipFile, bzip2File } type;
    void *fileHandle;
    // needed by bzip2 when decompressing from multiple streams. other
    // decompressors must ignore it.
    FILE *systemHandle;
    int eof;
    char buf[4096];
    int buf_ptr, buf_fill;
};

int readFile(struct Input *context, char * buffer, int len);
//int readFile(void *context, char * buffer, int len);
int inputClose(void *context);
void *inputOpen(const char *name);
char inputGetChar(void *context);
int inputEof(void *context);
xmlTextReaderPtr inputUTF8(const char *name);

#endif
