table 50103 "Reservation Jnl. Line"
{
    fields
    {
        field(1; "Reservation No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation No.';
        }

        field(2; "Date of Play"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Play';
        }

        field(3; Course; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Course';
            TableRelation = "Golf Course";
        }

        field(4; "Reservation Type"; Enum "Reservation Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation Type';
        }

        field(5; "Member No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member No.';
        }

        field(6; "Number of Players"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Number of Players';

            trigger OnValidate()
                    var
                        ReservationUtil: Codeunit "Reservation Util";
                        ReservationType: Enum "Reservation Type";
                    begin
                        ReservationType := "Reservation Type";

                        if "Actual Players" = 0
                        then "Total Fees" := ReservationUtil.CalculateTotalFees("Number of Players", ReservationType, Course);
                    end;
        }

        field(7; "Total Fees"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Total Fees';

            
        }

        field(8; "Tee Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'Tee Time';
        }

        field(9; "Actual Players"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Actual Players';

            trigger OnValidate()
                    var
                        ReservationUtil: Codeunit "Reservation Util";
                        ReservationType: Enum "Reservation Type";
                    begin
                        ReservationType := "Reservation Type";

                        "Total Fees" := ReservationUtil.CalculateTotalFees("Actual Players", ReservationType, Course);
                    end;
        }
    }

    keys
    {
        key(PK; "Reservation No.")
        {
            Clustered = true;
        }
    }
}
