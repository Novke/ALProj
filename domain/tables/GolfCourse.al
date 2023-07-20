table 50101 "Golf Course"
{

    Caption = 'Golf Course';
    DataPerCompany = true;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(2; Name; Text[50])
        {
            DataClassification = CustomerContent;
        }

        field(3; Address; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(4; GreenFees; Decimal)
        {
            DataClassification = CustomerContent;
        }

         field(5; FilterDate; Date)
        {
            FieldClass = FlowFilter;
            Caption = 'Filter Date';
        }

        field(6; NoOfReservations; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = COUNT("Reservation Ledger Entry"
            WHERE ("Date of Play"=FIELD("FilterDate")));
        }

        field(7; TotalAmount; Decimal)
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