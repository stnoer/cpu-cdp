`timescale 1ns / 1ps

`include "defines.vh"

module Led (
    input  wire        Bridge_to_dig_clk,
    input  wire        Bridge_to_dig_rst,
    input  wire        Bridge_to_dig_we,
    input  wire [31:0] Bridge_to_dig_wdata,
    input  wire        Bridge_to_led_clk,
    input  wire        Bridge_to_led_rst,
    input  wire        Bridge_to_led_we,
    input  wire [31:0] Bridge_to_led_wdata,

    output reg         A,
    output reg         B,
    output reg         C,
    output reg         D,
    output reg         E,
    output reg         F,
    output reg         G,
    output reg         DP,
    output reg  [7:0]  en_7seg,
    output wire  [23:0] led
);

    reg  [31:0] num_7seg;
    reg  [19:0] cnt;

    wire cnt_add;
    assign cnt_add = (cnt == `CNT_END);


    always @(posedge Bridge_to_dig_clk or posedge Bridge_to_dig_rst)
    begin
        if(Bridge_to_dig_rst)
            begin
                cnt <= 20'h00000;
                en_7seg <= 8'hef;
            end
        else
            begin
                if(cnt_add)
                begin
                    cnt <= 20'h00000;
                    en_7seg <= {en_7seg[6:0],en_7seg[7]};
                end
                else
                begin
                    cnt <= cnt + 20'h00001;
                    en_7seg <= en_7seg;
                end
            end                
    end

    always @(posedge Bridge_to_dig_clk or posedge Bridge_to_dig_rst)
    begin
        if(Bridge_to_dig_rst)
            num_7seg <= 32'h0000_0000;
        else
        begin
            if(Bridge_to_dig_we)
                num_7seg <= Bridge_to_dig_wdata;
            else
                num_7seg <= num_7seg;    
        end    
    end
    
    always @(posedge Bridge_to_dig_clk or posedge Bridge_to_dig_rst)
    begin
        if(Bridge_to_dig_rst)
        begin
            {A,B,C,D,E,F,G,DP} <= 8'h00;
        end
        else
        begin
            case(en_7seg)
            8'hfe:
                    case(num_7seg[3:0])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9f;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h25;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0d;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h99;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h49;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h41;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1f;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h01;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h09;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h11;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc1;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h63;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h85;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h61;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h71;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    endcase
            8'hfd:
                    case(num_7seg[7:4])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9f;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h25;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0d;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h99;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h49;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h41;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1f;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h01;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h09;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h11;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc1;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h63;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h85;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h61;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h71;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    endcase
            8'hfb:
                    case(num_7seg[11:8])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9f;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h25;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0d;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h99;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h49;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h41;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1f;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h01;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h09;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h11;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc1;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h63;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h85;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h61;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h71;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    endcase
            8'hf7:
                    case(num_7seg[15:12])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9f;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h25;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0d;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h99;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h49;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h41;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1f;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h01;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h09;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h11;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc1;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h63;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h85;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h61;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h71;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    endcase
            8'hef:
                    case(num_7seg[19:16])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h02;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9e;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h24;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0c;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h98;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h48;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h40;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1e;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h00;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h08;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h10;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc0;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h62;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h84;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h60;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h70;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h02;
                    endcase
            8'hdf:
                    case(num_7seg[23:20])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9f;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h25;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0d;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h99;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h49;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h41;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1f;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h01;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h09;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h11;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc1;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h63;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h85;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h61;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h71;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    endcase
            8'hbf:
                    case(num_7seg[27:24])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9f;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h25;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0d;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h99;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h49;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h41;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1f;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h01;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h09;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h11;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc1;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h63;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h85;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h61;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h71;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    endcase
            8'h7f:
                    case(num_7seg[31:28])
                    4'h0:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    4'h1:
                        {A,B,C,D,E,F,G,DP} <= 8'h9f;
                    4'h2:
                        {A,B,C,D,E,F,G,DP} <= 8'h25;
                    4'h3:
                        {A,B,C,D,E,F,G,DP} <= 8'h0d;
                    4'h4:
                        {A,B,C,D,E,F,G,DP} <= 8'h99;
                    4'h5:
                        {A,B,C,D,E,F,G,DP} <= 8'h49;
                    4'h6:
                        {A,B,C,D,E,F,G,DP} <= 8'h41;
                    4'h7:
                        {A,B,C,D,E,F,G,DP} <= 8'h1f;
                    4'h8:
                        {A,B,C,D,E,F,G,DP} <= 8'h01;
                    4'h9:
                        {A,B,C,D,E,F,G,DP} <= 8'h09;
                    4'ha:
                        {A,B,C,D,E,F,G,DP} <= 8'h11;
                    4'hb:
                        {A,B,C,D,E,F,G,DP} <= 8'hc1;
                    4'hc:
                        {A,B,C,D,E,F,G,DP} <= 8'h63;
                    4'hd:
                        {A,B,C,D,E,F,G,DP} <= 8'h85;
                    4'he:
                        {A,B,C,D,E,F,G,DP} <= 8'h61;
                    4'hf:
                        {A,B,C,D,E,F,G,DP} <= 8'h71;
                    default:
                        {A,B,C,D,E,F,G,DP} <= 8'h03;
                    endcase
            default:
                {A,B,C,D,E,F,G,DP} <= 8'h03;
            endcase
            end
    end


    reg     [23:0]  leds;
    assign led = leds;

    always @(posedge Bridge_to_led_clk or posedge Bridge_to_led_rst)
    begin
        if(Bridge_to_led_rst)
        begin
            leds <= 24'hffffff;
        end
        else
        begin
            if(Bridge_to_led_we)
            begin
                leds <= Bridge_to_led_wdata[23:0];
            end
            else
            begin
                leds <= leds;
            end
        end
    end

endmodule 