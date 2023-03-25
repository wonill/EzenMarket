package com.ezen.ezenmarket.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaymentController {
	
	@GetMapping(value="/payment")
	public String moveToPaymentPage() {
		
		return "payment/payment_api";
	}

}
