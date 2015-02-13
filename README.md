
# eCRM

## Overview

**eCRM**, Customer Relationship Management single page front end implemented with Ember.js

## Project Structure
**eCRM**, is structured from a Ember-Rails Framework  application and its dependencies are managed with rvm and ruby bundler.

Rails is used for asset pipeline generation and serving the Ember app.  As such, there is no ActiveRecord implementation and no Rails Models/Views/Controllers (sans empty Applicatiopn and Home controllers).

The real Ember app can be found in the app/assets/javascript directory. Coffeescript is used in place of Javascript.  Templates are HTMLBars (HandleBars variant for Ember with better DOM integration).

## Web Routes
route | Purpose
------------ | ------------- 
/ | Index customers


## Implemetation Notes

#### Adapters
The Ember app uses an ActiveModel adapter as the Zend Framework RestFul adapter is built to be compliant.


#### Controllers

Controller | Purpose
------------ | ------------- 
Customer | Ember controller for showing Customer Object 
CustomerEdit | Ember controller for editing/deleting Customer Object 
CustomerNew | Ember controller for creating Customer Object 
Customers | Ember controller for indexing Customer Objects

#### Models

Controller | Purpose
------------ | ------------- 
Customer | Ember model of Customer Object 

#### Routes (Controller Preperation)

Controller | Purpose
------------ | ------------- 
Customer | Ember controller for showing Customer Object 
CustomerEdit | Ember controller for editing/deleting Customer Object 
CustomerNew | Ember controller for creating Customer Object 
Customers | Ember controller for indexing Customer Objects

#### Templates

Controller | Purpose
------------ | ------------- 
Customer | HTMLBars template for showing Customer Object 
CustomerEdit | HTMLBars template for editing Customer Object 
CustomerNew | HTMLBars template for creating Customer Object 
Customers | HTMLBars template for indexing Customer Objects


### Cross Domain
#### XDomain.js
Used in conjunction with zCRM, a  Zend Framework 2 back end api.
##### Library
Library served from /public/xdomain.min.js
##### Configuration
Backend is configured as a master from /app/views/layouts/application.html.erb It identifies which slaves to provision for cross domain access from the frontend.

## API Authorization
Access is restricted to API routes using JSON Web Tokens passed through an X-AUTH-TOKEN for each request. Only one valid token is authorized.  Please use the following:

header | Value
------------ | ------------- 
X-AUTH-TOKEN | eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOiI5NzUzIiwiZXhwIjpudWxsfQ.sDg1qCCcKIo_290O6jIk7fnYDU6b6by0LweFYlW6iqE
