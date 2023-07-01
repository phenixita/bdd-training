# Components behaviors

Domains specific behaviours will define all the data and the contracts that should be used from the current feature.

Those behaviours will results in one or more UI component.

In this phase, the developer will define how the components will fulfill the domain requirements and how the components will be developed.

The result will be a list of features and scenarios that will allow the TDD development of the components, using a proper gherkin tool, such as `cucumber`, `cucumber-js`, `specflow`, ...

You could choose your preferred testing framework to implement the TDD tests, cucumber (or equivalent) plugins and tools will handle the flow for you, translating and linking the textual `.feature` with the step definition file, containing the test code.
