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
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    Editable = true;
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                    Editable = true;
                }

                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                    Editable = true;
                }

                field(ClubMemberType; Rec.ClubMemberType)
                {
                    ApplicationArea = All;
                    Caption = 'Club Member Type';
                    Editable = true;
                }

                field(MemberStatus; Rec.MemberStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Member Status';
                    Editable = true;
                }

                field(FilterDate; Rec.FilterDate)
                {
                    ApplicationArea = All;
                    Caption = 'Filter Date';
                    Editable = true;
                }

                field("No. of Reservations"; Rec.NoOfReservations)
                {
                    ApplicationArea = All;
                    Caption = 'No. of Reservations';
                    Editable = false;
                }

                field("Total Amount"; Rec.TotalAmount)
                {
                    ApplicationArea = All;
                    Caption = 'Total Amount';
                    Editable = false;
                }
            }
        }
    }
}
