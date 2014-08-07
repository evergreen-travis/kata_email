###
Dependencies
###
Antispam = require '../'
should   = require 'should'

###
Test
###
describe 'Antispam :: ', ->

  it 'return the same word if doesnt contains a valid email', ->
    Antispam.parser('hola').should.eql('hola')

  it 'return the same word if the string is AT', ->
    Antispam.parser('AT').should.eql('AT')

  it 'AT between two words is not a valid email',  ->
    Antispam.parser('holaAThola').should.eql('holaAThola')

  it 'replace AT in a valid email', ->
    Antispam.parser('holaAThotmail.com').should.eql('hola@hotmail.com')
