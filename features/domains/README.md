# Domains Specific behaviors

Once the user behaviours has been defined, developer and analysts need to define how to fulfill the requirements:

- the data that need to be managed
- how the system should be implemented.

We are now in the *Domain behaviors* phase.

## Analysts contributions

The analysts can provide a fundamental value in this phase, explaining to developers:

- the data that will be required and handled
- the corner cases
- the specific behaviors that the software should have with the user interaction to get the maximum value
- if present, the interactions/data exchange to be done with the other parts of the system.

## Developers contributions

The developers has the important task to translate the behaviour in technical requirements that will allow the parallelization of the development.

Let's suppose we are building a cloud-based web application, the domain specific behaviours could be:

- the REST endpoints that the frontend will call and the data that will be provided
- or the message that the service have to send to the message broker an external service
- or any other communication between two or more layers of the application

## In a nutshell

Domains Specific Behaviour will allow the parallelization of the feature implementation between two or more developers (and/or teams!) defining:

- the contracts between two or more subsystems (or external systems)
- the names of the endpoints, of the queue, etc to be called
- the corner cases that the developers should manage
- the data that should be managed in this feature

It is usually done together from analysts (and/or testers) and developers.

Analyst will provide the requirement, developers will translate them in a technical way.
