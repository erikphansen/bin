function prvw
  # TODO: make it possible to pass the base branch to this prvw func
  set -l repobase (git rev-parse --show-toplevel);
  if test -z (echo $repobase | grep 'vets-website$') > /dev/null
    echo 'You must be in the vets-website repo'
    return 1
  else
    set -l basebranch 'master'
    if count $argv > /dev/null
      set basebranch $argv[1];
    end
    pr $basebranch -d --labels VSA --assign erikphansen
  end
end
