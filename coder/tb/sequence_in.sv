class sequence_in extends uvm_sequence #(cod_transaction_in);
	`uvm_object_utils(sequence_in)


	function new(string name="sequence_in");
		super.new(name);
	endfunction : new


	task body();
		cod_transaction_in tr;
		forever begin
			tr = cod_transaction_in::type_id::create("tr");
			start_item(tr);
			assert(tr.randomize());
			finish_item(tr);
		end
	endtask : body


endclass : sequence_in
