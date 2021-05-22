# Software Design Project - Admin Website

Website to facilitate administrator functions

## Build-Test Status

[![Coverage Status](https://coveralls.io/repos/github/RXRider1451/SD_Project_Website/badge.svg?branch=main)](https://coveralls.io/github/RXRider1451/SD_Project_Website?branch=main)

Note: No successful build will occur due a database connection error as we're currently using local databases to work on the website. Once we have access to the server, the builds should be successful as the database will be stored remotely (on the server). Until there is a successful build, the badge status will read "unknown".

## Overview

The admin is the only user of the website. The purpose of the website is to create a user-friendly interface which makes it easy for the system administrator to make changes to the data in the database. 

The Admin must login first with a username annd password which will be verified before access.

The admin needs to be able to perform CRUD functions on the various tables in the database. The admin needs to be able to create, update and delete Users (including other admins), Hospitals, Specialties, Programmes, Groups and Blocks, on the database. 

