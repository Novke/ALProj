page 50103 "Reservation Journal"
{
    PageType = Worksheet;
    SourceTable = "Reservation Jnl. Line";
    ApplicationArea = Basic, Suit;
    UsageCategory = Lists;

    

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Reservation No."; 1)
                {
                    ApplicationArea = All;
                    Caption = 'Reservation No.';
                }

                field("Date of Play"; 2)
                {
                    ApplicationArea = All;
                    Caption = 'Date of Play';
                }

                field(Course; 3)
                {
                    ApplicationArea = All;
                    Caption = 'Course';
                }

                field("Reservation Type"; 4)
                {
                    ApplicationArea = All;
                    Caption = 'Reservation Type';
                }

                field("Member No."; 5)
                {
                    ApplicationArea = All;
                    Caption = 'Member No.';
                }

                field("Number of Players"; 6)
                {
                    ApplicationArea = All;
                    Caption = 'Number of Players';

                    trigger OnValidate()
                    var
                        ReservationUtil: Codeunit "Reservation Util";
                        ReservationLine: Record "Reservation Jnl. Line";
                        ReservationType: Enum "Reservation Type";
                    begin
                        ReservationLine := Rec;
                        ReservationType := ReservationLine."Reservation Type";

                        if ReservationLine."Actual Players" = 0
                        then ReservationLine."Total Fees" := ReservationUtil.CalculateTotalFees(ReservationLine."Number of Players", ReservationType, ReservationLine.Course);
                    end;
                }

                field("Total Fees"; 7)
                {
                    ApplicationArea = All;
                    Caption = 'Total Fees';
                }

                field("Tee Time"; 8)
                {
                    ApplicationArea = All;
                    Caption = 'Tee Time';
                }

                field("Actual Players"; 9)
                {
                    ApplicationArea = All;
                    Caption = 'Actual Players';

                    trigger OnValidate()
                    var
                        ReservationUtil: Codeunit "Reservation Util";
                        ReservationLine: Record "Reservation Jnl. Line";
                        ReservationType: Enum "Reservation Type";
                    begin
                        ReservationLine := Rec;
                        ReservationType := ReservationLine."Reservation Type";

                        ReservationLine."Total Fees" := ReservationUtil.CalculateTotalFees(ReservationLine."Actual Players", ReservationType, ReservationLine.Course);
                    end;
                }
            }
        }
    }






    
}
