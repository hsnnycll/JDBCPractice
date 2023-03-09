/*19- Return the facility name, member cost, and the guest cost of the 
facilities which have the member costs squared root of the guest costs.*/
SELECT name, membercost, guestcost
FROM cd.facilities
WHERE membercost = SQRT(guestcost);
