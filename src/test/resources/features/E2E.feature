@E2E
Feature: Demo feature

  Background: run background

  @E2ETesting
  Scenario: sample scenario
    * def args = {}
    * args.name = "password"
    * karate.call("Template.feature@template",args)
    * print "E2E scenario"