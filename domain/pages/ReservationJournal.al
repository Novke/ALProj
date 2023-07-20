page 50103 "Reservation Journal"
{
    PageType = List;
    SourceTable = "Reservation Jnl. Line";
    ApplicationArea = Basic, Suit;
    UsageCategory = Lists;

    

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Reservation No."; Rec."Reservation No.")
                {
                    ApplicationArea = All;
                    Caption = 'Reservation No.';
                }

                field("Date of Play"; Rec."Date of Play")
                {
                    ApplicationArea = All;
                    Caption = 'Date of Play';
                }

                field(Course;Rec.Course)
                {
                    ApplicationArea = All;
                    Caption = 'Course';
                }

                field("Reservation Type"; Rec."Reservation Type")
                {
                    ApplicationArea = All;
                    Caption = 'Reservation Type';
                }

                field("Member No."; Rec."Member No.")
                {
                    ApplicationArea = All;
                    Caption = 'Member No.';
                }

                field("Number of Players"; Rec."Number of Players")
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

                field("Total Fees"; Rec."Total Fees")
                {
                    ApplicationArea = All;
                    Caption = 'Total Fees';
                    Editable = false;
                }

                field("Tee Time"; Rec."Tee Time")
                {
                    ApplicationArea = All;
                    Caption = 'Tee Time';
                }

                field("Actual Players"; Rec."Actual Players")
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
