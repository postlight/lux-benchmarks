# Lux-Benchmarks

## Preface

This is a quick and dirty benchmark to show how [Lux](http://github.com/postlight/lux)
compares to other popular frameworks based on what you "out of the box".
In other words, no performance optimizations have been made to any of these
applications.

This benchmark is measured on a simple test of returning the first 25 records of
an API resource and its relationship. Respectively `Task` and `TaskList`.

**Note:**

By no means am I an expert at benchmarks nor are benchmarks the most accurate
way of measuring the quality of a framework.

If you see any thing fishy or would like to add anything to this repo, feel free
to submit an issue or fork this repo and submit a PR.


### Results

I have gotten the following results after running this benchmark 3 times and taking
the average Requests/sec and Transfer/sec per each framework.


Framework     | Requests Per Second | Transfer Per Second
------------- | ------------------- | -------------------
**[Lux][]**   | 902.12 :star:       | 7.94MB :star:
[Loopback][]  | 763.82              | 1.67MB
[Sails][]     | 174.96              | 1.15MB
[Rails][]     | 68.17               | 536.55KB

[Rails]: http://rubyonrails.org
[Sails]: http://sailsjs.org
[Loopback]: http://loopback.io
[Lux]: https://github.com/postlight/lux

**Hardware:**

MacBook Pro with a `quad-core 2.6GHz i7` processor and `16GB` of memory.


## Contributing

### Installation

Make sure you have the following:
* Node (>= 4.0)
* Lux (installed globally)
* MySQL (accessible on port `3306`)

```bash
git clone https://github.com/postlight/lux-benchmarks
cd lux-benchmarks
npm install
cat fixtures/data.sql | mysql -u root -p
```


### Running

Execute the following command to run the benchmarks.

```bash
npm start
```
