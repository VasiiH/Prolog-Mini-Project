error(1, "
	- Motherboard, covers BIOS corruption or ROM error").
error(2, "
	- Memory (RAM) not detected").
error(3, "
	- Chipset Error (North and South bridge error)
	- Time-Of-Day Clock test failure
	- Gate A20 failure/Super I/O chip failure
	- Keboard controller failure").
error(4, "
	- Memory (RAM) failure").
error(5, "
	- CMOS battery failure").
error(6, "
	- Video card/chip failure").
error(7, "
	- Bad processor (CPU)/Central Processing Unit (CPU) Failure").


find_error:-
	write('FINDING HARDWARE FAILURES IN DELL PC OR LAPTOP'),nl,nl,
	write('HOW MANY BEEB SOUND(S) OCCURES WHILE YOU ON THE PC/LAPTOP? '),nl, % display the msg on user screen
	read(Input),nl, % read the input like scanf
	error(Input,Output),nl, % assign the values for joptitle
	format( "THE ERROR OCCURED ON YOUR PC/LAPTOP IS - ~w", [Output]).

	% nl is new line
	% rather than i we can use any characters start with Capital letters