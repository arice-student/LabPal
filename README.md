# Anthony Rice - Individual Project

This repository will serve as Anthony Rice's Individual project (Lab Pal) for Madison College's Enterprise Java Class.

### Problem Statement

I used to work at a contract laboratory as a project manager and most of my project tracking was performed on either Microsoft Excel or OneNote.  Since myself and other project managers managed their projects in a similar manner, I figured it would be beneficial to create a web application instead to track this information.

Tracking Items: Clients, Methods, Samples, Tests, etc.

### Project Technologies/Techniques

* Security/Authentication
    * Tomcat's JDBC Realm Authentication
* Database
    * MySQL 8.0.22
* ORM Framework
    * Hibernate 5
* Dependency Management
    * Maven
* CSS
    * Bootstrap
* Data Validation
    * Bootstrap Validator for front end??
    * Explore Hibernate's validation??
* Logging
    * Log4J2
* Hosting
    * AWS
* Independent Research Topic/s
    * CI tools in AWS??
    * Hibernate Validation??
    * Hibernate Search??
* Project Lombok
* Unit Testing
    * JUnit tests to achieve 80%+ code coverage
* IDE: IntelliJ IDEA


### Design

* [User Stories](_studentFiles/DesignDocuments/userStories.md)
* [Home Page](_studentFiles/DesignDocuments/wireframes/homePage.png)
* [Database Design](_studentFiles/DesignDocuments/DatabaseDiagram.jpeg)

### [Project Plan](_studentFiles/ProjectPlan.md)

### Examples of documentation of progress, reflections, and time spent on this class
Choose a format that works for you, or create your own.

#### [TimeLog](TimeLog.md)
#### [References](References.md)
#### [Weekly Refelection](WeeklyReflection.md)
#### [Journal](Journal.md)

-------------------------------------------------------------------------

### Final Project Presentation

* Project Motivation
  * Create a application that can be used for tracking sample testing in a laboratory.
  
* Application Demonstration
  * Home Page
  * Sign Up
  * Contact Us
  * My Dashboard
    * User Roles
      * Admin (arice)
      * User (user)
    * Search Functionality
    * View Functionality
    * Add Functionality (Clients)
    * My Profile
  
* Code Talk
  * Validation of Data: HTML Validation
  * Log Statements: Show labpal.log.  Only used when implementing features
  * Error Handling: Minimal
  * Unit Testing: Created Test Daos for all Entities except Test and Role.
    * Coverage: Entities had 61% method coverage.
  
* Video Link: https://youtu.be/HN2s0eqoB9c
  
* Mockaroo: Realistic data sets

* Project Improvements (if continuing)
  * Dashboard
    * Create forms for each Entity
    * Allow any item in an Entity to be edited
    * Implement REST functionality for logged in users
  * Security
    * Error Handling for incorrect inputs (adding text to the ID search)
    * Redirect to 404 error pages
    * Code Coverage improvement
    * Allow users to create a password at login
    * Hash passwords