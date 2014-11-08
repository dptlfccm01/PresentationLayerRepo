package com.presentation.app.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.business.service.MainTransactionManager;
import com.integration.model.Transaction;
import com.presentation.app.model.TransactionModel;



@Controller
public class MenuController {

	@RequestMapping("/viewAllTransactions.html")
	public ModelAndView viewAllTransactionsPage(MainTransactionManager mtm){
		ModelAndView model = new ModelAndView("ViewAllTransactions");
		double balance = mtm.getBalance();
		List<Transaction> tlist = mtm.getAllTransactions();
		for(Iterator<Transaction> it = tlist.iterator(); it.hasNext();){
			System.out.println("OUT> "+it.next().getDescription());
		}
		model.addObject("transactionList", tlist);
		model.addObject("balance", balance);
		return model;
	}
	
	@RequestMapping("/addTransaction.html")
	public ModelAndView viewAddTransactionPage(){
		ModelAndView model = new ModelAndView("AddTransaction");
		return model;
	}
	
	@RequestMapping(value="/success.html", method=RequestMethod.POST)
	public ModelAndView addUserSuccessView(@ModelAttribute("transaction") TransactionModel transactionModel, MainTransactionManager mtm){
		
		Transaction transaction = new Transaction(transactionModel.getDescription(), transactionModel.getValue(), transactionModel.getTransactionType());
		mtm.addTransaction(transaction);		
		
		ModelAndView model = new ModelAndView("Menu");
		return model;
		
	}
	
	
	
}
