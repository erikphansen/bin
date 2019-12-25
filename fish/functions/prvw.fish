function prvw
  set -l repobase (git rev-parse --show-toplevel);
  if echo $repobase | grep 'vets-website$' > /dev/null
    # TODO: make it possible to pass the base branch to this prvw func
    pr master -d --labels VSA --assign erikphansen
  else
    echo 'You must be in the vets-website repo'
    return 1
  end
end
