Feature: Template feature

  Background:
    * def apicall = "API.feature"

  @template
  Scenario: Template Scenario
    * print args
    * call read(apicall+"@api") args
    * print "template scenario"