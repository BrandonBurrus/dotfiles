" Generate empty test stubs for java maven projects

let s:srcDir = 'src'
let s:mainDir = 'main'
let s:testDir = 'test'
let s:lang = 'java'

function s:MvnGenerateTestFile() abort
  const l:currentBufferPath = expand('%:p')
  const l:currentBufferFileName = l:currentBufferPath[strridx(l:currentBufferPath, '/') + 1:]

  if stridx(l:currentBufferPath, s:srcDir) >= 0
    let l:rootWorkingDir = l:currentBufferPath[:stridx(l:currentBufferPath, s:srcDir) + len(s:srcDir)]
    let l:actualWorkingDir = l:rootWorkingDir . s:mainDir . '/' . s:lang . '/'
    let l:pkgDirs = l:currentBufferPath[len(l:actualWorkingDir):-len(l:currentBufferFileName) - 2]
    let l:testGenDir = l:rootWorkingDir . s:testDir . '/' . s:lang . '/' . l:pkgDirs

    if !isdirectory(l:testGenDir)
      call mkdir(l:testGenDir, 'p')
    endif

    let l:javaTestFile = l:testGenDir . '/' . substitute(l:currentBufferFileName, '.java', 'Tests.java', '')
    NERDTreeRefreshRoot

    if empty(glob(l:javaTestFile))
      call execute('!touch ' . l:javaTestFile)
      NERDTreeRefreshRoot

      let l:javaPackageName = substitute(l:pkgDirs, '/', '.', 'g')
      call writefile(
          \ [
          \ 'package ' . l:javaPackageName . ';',
          \ '',
          \ 'import org.junit.Test;',
          \ '',
          \ 'public class ' . substitute(l:currentBufferFileName, '.java', 'Tests', '') . ' {',
          \ "\t",
          \ '}'
          \ ],
          \ l:javaTestFile,
          \ 'a'
      \)
      execute 'vsplit ' . l:javaTestFile
    else
      echo 'Test file already exists!'
    endif

  else
    throw 'Buffer is not in a valid directory structure'
  endif
endfunction

command! MvnGenerateTestFile :call s:MvnGenerateTestFile()
