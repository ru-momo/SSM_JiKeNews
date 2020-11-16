package com.suha.util;

import java.io.Serializable;
import java.util.List;

public class Page<T> implements Serializable{

    /**
     *分页
     */
    private static final long serialVersionUID = 1L;
    private int total;		// 总页数
    private int page;     // 当前页
    private int size;     // 每页数
    private List<T> rows; // 结果集
    private int sum ;     // 总条数
    public int getTotal() {
        return total;
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
    public int getSum() {
        return sum;
    }
    public void setSum(int sum) {
        this.sum = sum;
    }
    @Override
    public String toString() {
        return "Page [total=" + total + ", page=" + page + ", size=" + size + ", rows=" + rows + ", sum=" + sum + "]";
    }

}