page 50102 "Club Members"
{
    PageType = List;
    SourceTable = Member;
    ApplicationArea = Basic, Suit;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field(ID; 1)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    Editable = true;
                }

                field(Name; 2)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                    Editable = true;
                }

                field(Address; 3)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                    Editable = true;
                }

                field(ClubMemberType; 4)
                {
                    ApplicationArea = All;
                    Caption = 'Club Member Type';
                    Editable = true;
                }

                field(MemberStatus; 5)
                {
                    ApplicationArea = All;
                    Caption = 'Member Status';
                    Editable = true;
                }

                field(FilterDate; 6)
                {
                    ApplicationArea = All;
                    Caption = 'Filter Date';
                    Editable = true;
                }

                field("No. of Reservations"; 7)
                {
                    ApplicationArea = All;
                    Caption = 'No. of Reservations';
                    Editable = true;
                }

                field("Total Amount"; 8)
                {
                    ApplicationArea = All;
                    Caption = 'Total Amount';
                    Editable = true;
                }
            }
        }
    }
}
