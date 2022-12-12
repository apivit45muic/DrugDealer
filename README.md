Database Project Report

Drug Dealer

Team Member :

Thana Lertlum-umpaiwong 6380271

Apiwit Chonkitgosol 6280561

Yossatorn Phithakjiraroj 6280942


Research key requirements:
- Require data
    - Medicine Information
    - Employee Information
    - Role
    - Sale
    - Sale Details
    - Member Information
- Business operation
    - User registration / management
    - Adding / Stock Medicine
    - Member management
    - Payment
    
Problem : Some pharmacies still store various information in notebooks and sales documents. This makes searching for information inconvenient and not as fast as it should be and also data loss. In addition, some stores have problems with in-store handling of products that are difficult to verify, causing errors in checking stock. and also encountered other work systems such as calculating the product price, cannot find products in the store or the number of medicines is not enough to sell to customers.

Solution : Therefore, it is necessary to have a more standardized pharmacy management system that will cause minimal or no error at all. So, we decided to implement the management system which will let the pharmacy add information about their medicine and show details of their medicine. We also implemented member management for storing the member information of buying medicine, and we also created a payment method for them.


Tables Explain
- Role
	- Roles have one to many relationships with employees because employees can have only one role but each role can be assigned to many employees. This table is used to identify the roles.

- Employee
	- Employees have one to many relationships with sale because each employee can manage many sales, and each sale can be managed only once. This table is used to store the employees information.

- Member
	- Member also have one to many relationships with sale because each member can order many sales, and each sale can be ordered only once. This table is used to store the member information including collecting points and discounts.

- Sale
	- Sales have one to many with sales detail because when the customer buy many kinds of medicine, sales detail will store many times depending on how many kinds of medicine. This table is used to store the information of the sale of medicine.

- Sale detail
	- This table is used to store the sale information of one or many kinds of medicine.

- Medicine
	- Medicine have one to one relationship with sale. This table is used to store the information of each medicine including the price and stock.
