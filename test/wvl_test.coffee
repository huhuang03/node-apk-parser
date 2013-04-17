fs = require 'fs'
assert = require 'assert'

parseApk = require '..'

describe 'WVL', ->
    output = null

    before (done) ->
        fs.readFile __dirname + '/samples/wvl.txt', 'utf8', (err, txt) ->
            return done(err) if err
            parseApk.parseOutput txt, (err, out) ->
                return done(err) if err
                output = out
                done()

    it 'Parses correctly', ->
        assert.notEqual(null, output)
