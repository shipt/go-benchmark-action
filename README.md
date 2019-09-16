# go-benchmark-action

This GitHub action is used to compare benchmarks of `base` and `ref` branches of a pull request. The comparison results will be shown as a single comment in the pull request.

An example workflow file that would use this action is

```yml
name: Go Benchmark Workflow
on: [pull_request]
jobs:
    benchmark:
        runs-on: ubuntu-latest
        steps:
        - name: Perform benchmarks
          if: github.event_name == 'pull_request' && github.event.action == 'synchronize'
          run: shipt/go-benchmark-action
          env:
            GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
