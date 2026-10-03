# Student Database Management System

## Project Overview

The Student Database Management System is a MySQL-based project designed to manage student information, courses, and marks efficiently.

This project demonstrates how SQL can be used to store, retrieve, update, and analyze student academic data.

## Technologies Used

- MySQL
- MySQL Workbench
- SQL

## Database Tables

### 1. Students

Stores student details such as:

- Student ID
- Student Name
- Email
- Department

### 2. Courses

Stores course information such as:

- Course ID
- Course Name
- Credits

### 3. Marks

Stores student marks for different courses.

- Mark ID
- Student ID
- Course ID
- Marks

## SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- INSERT
- SELECT
- UPDATE
- DELETE
- PRIMARY KEY
- FOREIGN KEY
- JOIN
- GROUP BY
- ORDER BY
- WHERE
- AVG()
- MAX()
- COUNT()
- CRUD Operations

## Main Features

- Add and manage student information
- Manage course details
- Store student marks
- Find student marks by course
- Calculate average marks
- Find highest marks
- Count students in each course
- Find top-scoring students
- Perform CRUD operations
- Analyze student academic performance

## Sample SQL Operations

The project includes queries for:

- Displaying student and course details using JOIN
- Calculating average marks for each course
- Finding the top scorer
- Counting students in each course
- Finding students scoring above 85
- Finding the highest mark in each course
- Calculating each student's average marks
- Displaying students enrolled in a specific course

## Project Structure

```text
Student-Database-Management-System/
│
├── student_management.sql
└── README.md