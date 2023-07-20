table 50104 "Reservation Ledger Entry"
{
    fields
    {
        field(1; "Reservation No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation No.';
            Editable = true;
        }

        field(2; "Date of Play"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Play';
            Editable = true;
        }

        field(3; Course; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Course';
            TableRelation = "Golf Course";
            Editable = true;
        }

        field(4; "Reservation Type"; Enum "Reservation Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Reservation Type';
            Editable = true;
        }

        field(5; "Member No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member No.';
            TableRelation = Member.ID;
            Editable = true;
        }

        field(6; "Number of Players"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Number of Players';
            Editable = true;
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
            Editable = true;
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
