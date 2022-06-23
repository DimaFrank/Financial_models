/* Lecture 1*/
/* Interest Rate */

proc iml;

/* St - Future value     */
/* S0 - Present value   */
/* t  - time           */
/* r  - Interest rate */


start SimpleInterestRate(S0, r, t);

	St = S0*(1+r*t);
	return St;
	
finish SimpleInterestRate;


start CompoundInterestRate(S0, r, t);

	St = S0*(1+r)**t;
	return St;
	
finish CompoundInterestRate;



/**************Example 2.2********************/
print(CompoundInterestRate(10000,0.042,5)); 
/*******************************************/


start SeveralTimeCompoundInt(S0, r, t, n);

	St = S0*( (1+(r/n))**(t*n) );
	return St;
	
finish SeveralTimeCompoundInt;


/**************Example 2.3**********************/
print(SeveralTimeCompoundInt(1000,0.06,3,12));
/*********************************************/




/* Continuous interest */


start ContinuousInterest(S0, r , t);

	St= S0*exp(1.0)**r*t;
	return St;
	
finish ContinuousInterest;



start fromRnomToReff(Rnom, t, n);
	/* To get effective interest rate from nominal interest rate */
	Reff= (1+(Rnom/n))**(n*t) - 1;
	return Reff;
finish fromRnomToReff;




/**************Example 3.3**********************/
print(fromRnomToReff(0.24,1.5,1));
print(fromRnomToReff(0.24,1.5,2));
print(fromRnomToReff(0.24,1.5,12));

/*********************************************/






quit;




