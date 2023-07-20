page 50101 "Golf Courses"
{
    PageType = List;
    SourceTable = "Golf Course";
    ApplicationArea = Basic, Suit;
    UsageCategory = Lists;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(ID;1)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                }


                field(Name;2)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }

                field(Address; 3)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }

                field(GreenFees; 4)
                {
                    ApplicationArea = All;
                    Caption = 'Green Fees';
                }

                field(FilterDate; 5){
                    ApplicationArea = All;
                    Caption = 'Filter Date';
                }

                field("No. of Reservations"; 6)
                {
                    ApplicationArea = All;
                    Caption = 'No. of Reservations';
                }

                field("Total Amount"; 7)
                {
                    ApplicationArea = All;
                    Caption = 'Total Amount';
                }
            }
        }
    }

    

actions
{
    area(Navigation)
    {
        action(ReservationLedgerEntriesAction)
        {
            ApplicationArea = All;
            Caption = 'Reservation Ledger Entries';
            Promoted = true;
            PromotedCategory = Process;
            PromotedIsBig = true;
            
            Enabled = true;

            trigger OnAction()
            var
                ReservationLedgerEntriesPage: Page "Reservation Ledger Entries";
                CourseID: Integer;
            begin
                CourseID := Rec."ID";

                ReservationLedgerEntriesPage.SetCourseFilter(CourseID);
                    
                ReservationLedgerEntriesPage.RUN;
            end;
        }
    }
}



}
