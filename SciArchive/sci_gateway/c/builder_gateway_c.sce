// ----------------------------------------------------------------------------
//  This file was automatically generated by SWIG (http://www.swig.org).
//  Version 3.0.5
// 
//  Do not make changes to this file unless you know what you are doing--modify
//  the SWIG interface file instead.
// ----------------------------------------------------------------------------- */

mode(-1);
lines(0);
originaldir = pwd();
builddir = get_absolute_file_path('builder_gateway_c.sce');
cd(builddir);
ilib_verbose(0);
libs = [];
cflags = [];
ldflags = ["-larchive"];
files = "archive_wrap.c";
files($ + 1) = "../../src/c/ArchiveList.c";
table = ["archive_Init","archive_Init";"SWIG_this","SWIG_this";"SWIG_ptr","SWIG_ptr";"ArchiveList","_wrap_ArchiveList";];
ierr = 0;
if ~isempty(table) then
  ierr = execstr("ilib_build(''archive'', table, files, libs, [], ldflags, cflags);", 'errcatch');
  if ierr <> 0 then
    err_msg = lasterror();
  end
end
cd(originaldir);
if ierr <> 0 then
  error(ierr, err_msg);
end