# Merge sorting algorithm

Each commit improves performance and shows the difference between Ruby methods' speed.

### Installation

```sh
$ git clone git@github.com:alex-pro/sort.git
$ cd sort
$ ruby merge.rb
```

Feel free to make your own experiments.

### SystemStackError exception

In case you don't know why **SystemStackError** appears when you run the program read this [great article](https://nithinbekal.com/posts/ruby-tco/). 

If you want to temporarily avoid this exception copy this `export RUBY_THREAD_VM_STACK_SIZE=5000000` (5000000 is a number of call stack size) to you terminal and hit **Enter**. Then run again.
