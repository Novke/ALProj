table 50102 "Member"
{

    DrillDownPageId = "Club Members";

    Permissions = tabledata "Reservation Jnl. Line" = r,
                  tabledata "Reservation Ledger Entry" = r;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(2; Name; Text[50])
        {DataClassification = CustomerContent;
        Editable = true;

        }

        field(3; Address; Text[100])
        {
            DataClassification = CustomerContent;
        Editable = true;
        }

        field(4; ClubMemberType; Enum "Club Member Type")
        {
            DataClassification = CustomerContent;
        Editable = true;
        }

        field(5; MemberStatus; Enum "Member Status")
        {
            DataClassification = CustomerContent;
        Editable = true;
        }

        field(6; FilterDate; Date){
            FieldClass = FlowFilter;
            Caption = 'Filter Date';
        Editable = true;
        }

        field(7; NoOfReservations; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = COUNT("Reservation Ledger Entry"
            WHERE ("Date of Play"=FIELD("FilterDate")));
        }

        field(8; TotalAmount; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = SUM("Reservation Ledger Entry"."Total Fees"
            WHERE ("Date of Play"=FIELD("FilterDate")));
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
