package com.suha.util;

import java.io.Serializable;
import java.util.List;

public class Page<T> implements Serializable {
        private static final long serialVersionUID=1L;
        private int total;
        private  int page;
        private int size;
        private List<T> rows;
        public int getTotal(){
            return total;
        }

        public Page() {
        }

        public Page(int total, int page, int size, List<T> rows) {
            this.total = total;
            this.page = page;
            this.size = size;
            this.rows = rows;
        }

        @Override
        public String toString() {
            return "Page{" +
                    "total=" + total +
                    ", page=" + page +
                    ", size=" + size +
                    ", rows=" + rows +
                    '}';
        }

        public void setTotal(int total) {
            this.total = total;
        }

        public int getPage() {
            return page;
        }

        public void setPage(int page) {
            this.page = page;
        }

        public int getSize() {
            return size;
        }

        public void setSize(int size) {
            this.size = size;
        }

        public List<T> getRows() {
            return rows;
        }

        public void setRows(List<T> rows) {
            this.rows = rows;
        }
    }


