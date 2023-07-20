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
                field(ID;Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                }


                field(Name;Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }

                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }

                field(GreenFees; Rec.GreenFees)
                {
                    ApplicationArea = All;
                    Caption = 'Green Fees';
                }

                field(FilterDate; Rec.FilterDate){
                    ApplicationArea = All;
                    Caption = 'Filter Date';
                }

                field("No. of Reservations"; Rec.NoOfReservations)
                {
                    ApplicationArea = All;
                    Caption = 'No. of Reservations';
                }

                field("Total Amount"; Rec.TotalAmount)
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
