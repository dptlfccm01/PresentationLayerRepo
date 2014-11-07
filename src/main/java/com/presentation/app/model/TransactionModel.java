package com.presentation.app.model;

public class TransactionModel {

	private String description;
	private double value;
	private String transactionType;
	
	
	public TransactionModel(){}
	
	public String getDescription() {
		return description;
	}
	public double getValue() {
		return value;
	}
	public String getTransactionType() {
		return transactionType;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setValue(double value) {
		this.value = value;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	
}
