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
