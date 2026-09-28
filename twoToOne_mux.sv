module twoToOne_mux(
    input logic a, b, sel,
    output logic y
);

    always_comb
    begin
        case (sel)
            0: y = a;
            1: y = b;
            // always good practice to include a default when using case statements
            default: y = 0;
        endcase
    end

endmodule
