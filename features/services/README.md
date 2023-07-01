# Services behaviors

Domains specific behaviours will define all the data and the contracts that should be used from the current feature.

Those behaviours will results in one or more endpoint that have to be developed.

In this phase, the developer will define how the endpoint, the service and all the other stuff required to fulfill the domain requirements.

The result will be a list of features and scenarios that will allow the TDD development of the services, using a proper gherkin tool, such as `cucumber`, `cucumber-js`, `specflow`, ...

You could choose your preferred testing framework to implement the TDD tests, cucumber (or equivalent) plugins and tools will handle the flow for you, translating and linking the textual `.feature` with the step definition file, containing the test code.
