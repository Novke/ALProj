page 50104 "Reservation Ledger Entries"
{

    

    PageType = List;
    SourceTable = "Reservation Ledger Entry";
    ApplicationArea = Basic, Suit;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Reservation No."; 1)
                {
                    ApplicationArea = All;
                    Caption = 'Reservation No.';
                    Editable = true;
                }

                field("Date of Play"; 2)
                {
                    ApplicationArea = All;
                    Caption = 'Date of Play';
                    Editable = true;
                }

                field(Course; 3)
                {
                    ApplicationArea = All;
                    Caption = 'Course';
                    Editable = true;
                }

                field("Reservation Type"; 4)
                {
                    ApplicationArea = All;
                    Caption = 'Reservation Type';
                    Editable = true;
                }

                field("Member No."; 5)
                {
                    ApplicationArea = All;
                    Caption = 'Member No.';
                    Editable = true;
                }

                field("Number of Players"; 6)
                {
                    ApplicationArea = All;
                    Caption = 'Number of Players';
                    Editable = true;
                }

                field("Total Fees"; 7)
                {
                    ApplicationArea = All;
                    Caption = 'Total Fees';
                }

                field("Tee Time"; 8)
                {
                    ApplicationArea = All;
                    Caption = 'Tee Time';
                    Editable = true;
                }

                field("Actual Players"; 9)
                {
                    ApplicationArea = All;
                    Caption = 'Actual Players';
                    Editable = true;
                }
            }
        }
    }

var
        FilterByCourseID: Integer;

    procedure SetCourseFilter(CourseID: Integer)
    begin
        FilterByCourseID := CourseID;
        Update;
    end;

    //  trigger OnAfterGetRecord()
    // var
    //     ReservationLedgerEntry: Record "Reservation Ledger Entry";
    //     Course: Record "Golf Course";
    // begin
    //     if FilterByCourseID <> 0 then
    //     begin
    //         ReservationLedgerEntry := Rec;
    //         Course.GET(ReservationLedgerEntry."Course");
    //         if Course.ID <> FilterByCourseID then
    //             HideRecord;
    //     end;
    // end;



    // trigger OnAfterGetRecord()
    // var
    //     ReservationLedgerEntry: Record "Reservation Ledger Entry";
    //     Query: Query;
    // begin
    //     if FilterByCourseID <> 0 then
    //     begin
    //         Query.RESET;
    //         Query.FILTERGROUP(1);
    //         Query.SETFILTER(ReservationLedgerEntry."Course", FilterByCourseID);
    //         Query.FILTERGROUP(0);

    //         if Query.FINDSET then
    //         begin
    //             ReservationLedgerEntry := Rec;
    //             if ReservationLedgerEntry.RECORDID <> Query.RECORDID then
    //                 EXIT;

    //             Rec.COPY(Query);
    //         end
    //         else
    //         begin
    //             EXIT;
    //         end;
    //     end;
    // end;
    


   




}


    



