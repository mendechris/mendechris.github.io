---
layout: project
type: project
image: img/projects/masters-intro.png
title: "A Modular Forms Approach to Arithmetic Convoluted Identities"
date: 2016
published: true
labels:
  - Mathematics
  - Number Theory
summary: "Written Portion of M.A. in Mathematics Presentation"
---

In addition to fulfilling the course and credit requirements, the University of Hawaii's M.A. in Mathematics program also requires a written paper whose contents are presented to the public. For my project, I worked with Dr. Pavel Guerzhoy of the Mathematics Dept. The goal of the project was to find some interesting mathematical identities using a modular forms approach.

To help determine if I was on the right track, I used a computer algebra system: PARI/GP. The program allowed me to verify the first several thousand identities.

```
\\This code checks the identity of the convolution involving conjugates of delta_p.

/*Defines characters sending the generator 2 to i.*/
chi_5(n)=if(n%5==2,I,if(n%5==4,-1,if(n%5==3,-I,if(n%5==1,1,0))));
{   chi_13(n)=if(n%13==1,1,if(n%13==2,I,if(n%13==3,1,
     if(n%13==4,-1,if(n%13==5,I,if(n%13==6,I,if(n%13==7,-I,if(n%13==8,-I,
     if(n%13==9,1,if(n%13==10,-1,if(n%13==11,-I,if(n%13==12,-1,0))))))))))));
}
/* Defines, delta_p, phi'_p, and sigma_p as  in the paper*/
delta_5(n)=sumdiv(n,d,chi_5(d));
delta_13(n)=sumdiv(n,d,chi_13(d));

phi_5(n)=if(n%5==0,0,1);
phi_13(n)=if(n%13==0,0,1);

sigma_5(n)=sumdiv(n,d,phi_5(d)*d);
sigma_13(n)=sumdiv(n,d,phi_13(d)*d);

/*Defines constants for the identities involving convolution of conjugates*/
alpha(p)=if(p==5, 5/3, if(p==13, 1,0));
beta(p)=if(p==5, (3-I)/3, if(p==13, 1-I,0));


/*Defines sigma hat and sigma tilde as in the paper*/
hsigma_5(n)=sumdiv(n,d,kronecker(5,d)*n/d);
hsigma_13(n)=sumdiv(n,d,kronecker(13,d)*n/d);

tsigma_5(n)=sumdiv(n,d,kronecker(5,d)*d);
tsigma_13(n)=sumdiv(n,d,kronecker(13,d)*d);

/* Defines the constants for the identity involving convolution of delta_p*/
A(p)=if(p==5, 2*(3+I)/5,if(p==13,2*(1+I),0));
B(p)=if(p==5, 2+I,if(p==13,2+3*I,0));
C(p)=if(p==5,-(4+3*I)/5,if(p==13,-I,0));
```
