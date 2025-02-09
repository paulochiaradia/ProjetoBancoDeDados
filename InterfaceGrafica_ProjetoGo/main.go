package main

import (
	"database/sql"
	"fmt"
	"html/template"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
)

var db *sql.DB
var tmpl = template.Must(template.ParseFiles("index.html"))

// Dados para a página HTML
type PageData struct {
	Tables    []string
	Columns   []string
	Rows      [][]string
	TableName string
}

func main() {
	// Conecte-se ao banco de dados
	var err error
	db, err = sql.Open("mysql", "golang:golang@tcp(127.0.0.1:3306)/onibus")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	// Configure os handlers
	http.HandleFunc("/", indexHandler)
	http.HandleFunc("/query", queryHandler)

	// Inicie o servidor
	fmt.Println("Servidor iniciado na porta 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}

// Manipulador para a página inicial
func indexHandler(w http.ResponseWriter, r *http.Request) {
	tables, err := getTables()
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	data := PageData{Tables: tables}
	tmpl.Execute(w, data)
}

// Manipulador para a consulta
func queryHandler(w http.ResponseWriter, r *http.Request) {
	tableName := r.FormValue("table")
	columns, rows, err := queryTable(tableName)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	tables, _ := getTables()
	data := PageData{Tables: tables, Columns: columns, Rows: rows, TableName: tableName}
	tmpl.Execute(w, data)
}

// Função para obter a lista de tabelas
func getTables() ([]string, error) {
	rows, err := db.Query("SHOW TABLES")
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var tables []string
	for rows.Next() {
		var table string
		if err := rows.Scan(&table); err != nil {
			return nil, err
		}
		tables = append(tables, table)
	}
	return tables, nil
}

// Função para executar a consulta SELECT *
func queryTable(tableName string) ([]string, [][]string, error) {
	query := fmt.Sprintf("SELECT * FROM %s", tableName)
	rows, err := db.Query(query)
	if err != nil {
		return nil, nil, err
	}
	defer rows.Close()

	columns, err := rows.Columns()
	if err != nil {
		return nil, nil, err
	}

	var results [][]string
	for rows.Next() {
		row := make([]interface{}, len(columns))
		rowPtrs := make([]interface{}, len(columns))
		for i := range row {
			rowPtrs[i] = &row[i]
		}
		if err := rows.Scan(rowPtrs...); err != nil {
			return nil, nil, err
		}

		strRow := make([]string, len(columns))
		for i, col := range row {
			if col != nil {
				switch col.(type) {
				case int, int32, int64:
					strRow[i] = fmt.Sprintf("%d", col)
				default:
					strRow[i] = fmt.Sprintf("%s", col)
				}
			} else {
				strRow[i] = "NULL"
			}
		}
		results = append(results, strRow)
	}
	return columns, results, nil
}
