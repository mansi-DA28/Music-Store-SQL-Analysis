# 🎵 Music Store SQL Analysis

## 📌 Project Overview
This project analyzes a music store database (Chinook-style dataset) using PostgreSQL. 
The goal is to answer real-world business questions using SQL — ranging from basic 
lookups to advanced queries involving CTEs, window functions, and recursive queries.

## 🛠️ Tools Used
- **PostgreSQL** (Database)
- **pgAdmin** (Query Tool & Database Management)

## 🗂️ Database Structure
The database consists of 11 interconnected tables:
- `artist`, `album`, `track`, `genre`, `media_type`
- `customer`, `employee`, `invoice`, `invoice_line`
- `playlist`, `playlist_track`

Refer to `schema_diagram.png` for the full Entity-Relationship Diagram (ERD).

## 📁 Repository Contents
| File | Description |
|------|--------------|
| `schema.sql` | SQL script to create all database tables |
| `queries.sql` | All analysis queries, categorized by difficulty (Easy, Moderate, Advanced) |
| `*.csv` | Raw data files used to populate the database |
| `schema_diagram.png` | Entity-Relationship Diagram of the database |

## ❓ Business Questions Solved

### Easy
- Who is the senior most employee based on job title?
- Which countries have the most invoices?
- What are the top 3 values of total invoice?
- Which city generated the highest revenue (for planning a promotional event)?
- Who is the best customer (highest total spend)?

### Moderate
- List all customers who listen to Rock music (with email, name, genre).
- Find the top 10 rock bands by number of tracks.
- Find tracks longer than the average song length.

### Advanced
- Find how much each customer spent on their favorite (top-selling) artist.
- Find the most popular music genre for each country (handling ties).
- Find the top-spending customer per country (handling ties).

## 💡 Key Learnings
- Writing multi-table JOIN queries across a normalized schema
- Using CTEs (Common Table Expressions) for cleaner, modular queries
- Applying window functions and subqueries for ranking and comparison
- Handling data import challenges (date formats, schema mismatches) during setup

## 🚀 How to Use
1. Run `schema.sql` in PostgreSQL to create the database structure.
2. Import the CSV files into their respective tables.
3. Run queries from `queries.sql` to explore the analysis.

---
*This project was built as part of my data analytics portfolio.*
