%module archive

%inline %{
        extern char* ArchiveList(char *filename);
        %}
