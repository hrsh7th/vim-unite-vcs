let s:save_cpo = &cpo
set cpo&vim

" GRAPH, HASH, PREV_HASH, AUTHOR_NAME, AUTHOR_EMAIL, AUTHOR_DATE, SUBJECT
if !exists('g:versions#type#git#log#format')
  let g:versions#type#git#log#format = '%x09%H%x09%P%x09%an%x09%ae%x09%ai%x09%s'
endif
if !exists('g:versions#type#git#log#limit')
  let g:versions#type#git#log#limit = 1000
endif

function! versions#type#git#log#do(args)
  let path = vital#versions#substitute_path_separator(
        \ get(a:args, 'path', './'))
  let limit = '-' . get(a:args, 'limit',
        \ g:versions#type#git#log#limit)

  let output = vital#versions#system(printf('git log --graph --pretty=format:"%s" %s %s',
        \ g:versions#type#git#log#format,
        \ limit,
        \ vital#versions#get_relative_path(path)))

  return versions#type#git#log#parse(output)
endfunction

function! versions#type#git#log#parse(output)
  let list = map(split(a:output, "\n"),
        \ "versions#type#git#log#create_log(v:val)")
  return filter(list, '!empty(v:val)')
endfunction

function! versions#type#git#log#create_log(line)
  try
    let [graph, revision, prev_revision, author, mail, date, message] =
          \ split(a:line, "\t")
  catch
    return {}
  endtry
  return {
        \ 'revision': revision,
        \ 'prev_revision': prev_revision,
        \ 'author': author,
        \ 'date': matchstr(date,
        \   '\d\{4,4}\-\d\{2,2}-\d\{2,2}\s\d\{2,2}:\d\{2,2}:\d\{2,2}'),
        \ 'message': message,
        \ 'graph': graph,
        \ }
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

