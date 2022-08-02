
# Jobsity Android Challenge

Project developed for Jobsity Challenge.


## **Notes**

**The project has all the mandatory features and bonus items.** It also has some **additional** features like:
* Unit test of serie datasource as an example of unit test.
* Automaticaly switch between Light/Dark mode based on the system settings.
* Cache http request to save time and user data.
* "Infinite scroll" pagination on series and people pages.
* PIN is secure stored with cryptography.


&nbsp;

## **Project Structure**

The code is structured using principles from Clean Archictecture. 

All the classes are easily testable and all the services, repositories, datasources and other classes that execute logic have abstract/implementation classes, making the project more flexible.

The project has 4 layers:
* **domain**: Models, enums, failures and interfaces.
* **presentation**: UI elements.
* **infrastructure**: Datasources, repositories and services implementations.
* **application**: Bloc/cubits that uses implementation classes from infrastructure and communicates with the presentation.


&nbsp;

## **Release Apk**

The release apk can be found in the [releases](https://github.com/gcostaapps/jobsity-challenge/tree/main/releases) folder of this repository.

&nbsp;

## **Improvements that can be made**

For a limited time project some production standarts were skipped, resulting in some future improvements that can be made:

* Increase the unit test coverage. 
* Reduce the amount of series/persons returned by each pagination to save internet data and avoid jankiness on UI when parsing data.
* Use compute to parse the objects on a separate isolate, avoiding UI jankiness in lower end devices.
* Adding golden, widget and integration tests could also be a good improvement.
* Shimmers elements could be used instead of CircularProgressIndicator.
* Localization could also be done with ease.
* Loggers and analytics could be implemented.

&nbsp;



