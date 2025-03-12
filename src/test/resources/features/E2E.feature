@E2E
Feature: Demo feature

  Background: run background

  Scenario: sample scenario
    * def args = {}
    * args.name = "password"
    * karate.call("Template.feature@template",args)
    * print "E2E scenario"