# fish for Jest

complete -f -c jest -l help -s h -d 'Show help'
complete -f -c jest -l automock -d 'Automock all files by default'
complete -f -c jest -l bail -s b -d 'Exit the test suite immediately upon the first failing test'
complete -f -c jest -l browser -d 'Respect the "browser" field in package.json when resolving modules'
complete -f -c jest -l cache -d 'Whether to use the transform cache'
complete -f -c jest -l no-cache -d 'Disable the cache'
complete -f -c jest -l cacheDirectory -d 'The directory where Jest should store its  dependency information'
complete -f -c jest -l ci -d 'Whether to run Jest in continuous integration (CI) mode'
complete -f -c jest -l clearMocks -d 'Automatically clear mock calls and instances every test'
complete -f -c jest -l collectCoverage -d 'Alias for --coverage'
complete -f -c jest -l collectCoverageFrom -d 'glob pattern matching files that coverage info needs to be collected from'
complete -f -c jest -l collectCoverageOnlyFrom -d 'Explicit list of paths coverage will be restricted to'
complete -f -c jest -l color -d 'Forces test results output color highlighting'
complete -f -c jest -l colors -d 'Alias for --color'
complete -c jest -l config -s c -d 'The path to a jest config file'
complete -f -c jest -l coverage -d 'Indicates that test coverage info be collected and reported in the output'
complete -f -c jest -l coverageDirectory -d 'The directory where Jest should output its coverage files'
complete -f -c jest -l coveragePathIgnorePatterns -d 'Pattern of files to ignore'
complete -f -c jest -l coverageReporters -d 'A list of reporter names that Jest uses when writing coverage reports'
complete -f -c jest -l coverageThreshold -d 'A JSON used to configure minimum threshold enforcement for coverage results'
complete -f -c jest -l debug -d 'Print debugging info about your jest config'
complete -f -c jest -l env -d 'The test environment used for all tests'
complete -f -c jest -l expand -s e -d 'Use this flag to show full diffs instead of a patch'
complete -f -c jest -l findRelatedTests -d 'Find related tests for a list of source files'
complete -f -c jest -l forceExit -d 'Force Jest to exit after all tests have completed running'
complete -f -c jest -l globals -d 'A JSON string with map of global variables'
complete -f -c jest -l haste -d 'A JSON string with map of variables for the haste module system'
complete -f -c jest -l json -d 'Prints the test results in JSON'
complete -f -c jest -l lastCommit -d 'Will run all tests affected by file changes in the last commit made'
complete -f -c jest -l listTests -d 'Lists all tests Jest will run given the arguments and exits'
complete -f -c jest -l logHeapUsage -d 'Logs the heap usage after every test'
complete -f -c jest -l mapCoverage -d 'Maps code coverage reports against original source code'
complete -f -c jest -l maxWorkers -s w -d 'Specifies the maximum number of workers'
complete -f -c jest -l moduleDirectories -d 'Dir names to be searched recursively up from the requiring module''s location'
complete -f -c jest -l moduleFileExtensions -d 'An array of file extensions your modules use'
complete -f -c jest -l -moduleNameMapper -d 'A JSON with map from regexps to module names that allow to stub out resources'
complete -f -c jest -l modulePathIgnorePatterns -d 'Modules to ignore'
complete -f -c jest -l modulePaths -d 'An alternative API to setting the NODE_PATH env variable'
complete -f -c jest -l noStackTrace -d 'Disables stack trace in test results output'
complete -f -c jest -l notify -d 'Activates notifications for test results'
complete -f -c jest -l onlyChanged -s o -d 'Run tests based on the changed files'
complete -c jest -l outputFile -d 'A file where to write test results'
complete -c jest -l preset -d 'A preset that is used as a base for Jest''s configuration'
complete -f -c jest -l projects -d 'A list of projects that use Jest to run all tests'
complete -f -c jest -l reporters -d 'A list of custom reporters for the test suite'
complete -f -c jest -l resetMocks -d 'Automatically reset mock state between every test'
complete -f -c jest -l resetModules -d 'Whatever to reset the module registry for every test'
complete -f -c jest -l resolver -d 'A JSON string which allows the use of a custom resolver'
complete -c jest -l rootDir -d 'The root directory that Jest should scan for tests and modules within'
complete -c jest -l roots -d 'Paths to directories that Jest should use to search for files in'
complete -f -c jest -l runInBand -s i -d 'Run all tests serially in the current process'
complete -c jest -l setupFiles -d 'The paths to modules to configure the testing environment'
complete -c jest -l setupTestFrameworkScriptFile -d 'The path to a module to configure the testing framework'
complete -f -c jest -l showConfig -d 'Print your jest config and then exits'
complete -f -c jest -l silent -d 'Prevent tests from printing messages through the console'
complete -c jest -l snapshotSerializers -d 'Snapshot serializer modules Jest should use for snapshot testing'
complete -f -c jest -l testEnvironment -d 'Alias for --env'
complete -f -c jest -l testMatch -d 'The glob patterns Jest uses to detect test files'
complete -f -c jest -l testNamePattern -s t -d 'Run only tests with a name that matches the regex pattern'
complete -f -c jest -l testPathIgnorePatterns -d 'Paths to skip'
complete -f -c jest -l testPathPattern -d 'Regex for test paths'
complete -f -c jest -l testRegex -d 'The regexp pattern Jest uses to detect test files'
complete -f -c jest -l testResultsProcessor -d 'Allows the use of a custom results processor'
complete -f -c jest -l testRunner -d 'Allows to specify a custom test runner'
complete -f -c jest -l testURL -d 'This option sets the URL for the jsdom environment'
complete -f -c jest -l timers -d 'Setting this value to fake value of timers'
complete -f -c jest -l transform -d 'A JSON string which maps from regular expressions to paths to transformers'
complete -f -c jest -l transformIgnorePatterns -d 'Regexp patterns matched against all source file paths before transformation'
complete -f -c jest -l unmockedModulePathPatterns -d 'a regex pattern of module to unmock'
complete -f -c jest -l updateSnapshot -s u -d 'Use this flag to re-record snapshots'
complete -f -c jest -l useStderr -d 'Divert all output to stderr'
complete -f -c jest -l verbose -d 'Display individual test results with the test suite hierarchy'
complete -f -c jest -l version -s v -d 'Print the version and exit'
complete -f -c jest -l watch -d 'Watch files for changes and rerun tests related to changed files'
complete -f -c jest -l watchAll -d 'Watch files for changes and rerun all tests'
complete -f -c jest -l watchman -d 'Whether to use watchman for file crawling'
complete -f -c jest -l no-watchman -d 'Disable using watchman for file crawling'
complete -f -c jest -l detectOpenHandles -d 'Print out open handles preventing Jest from exiting at the end of a test run'
