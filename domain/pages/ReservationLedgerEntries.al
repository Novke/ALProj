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
            repeater(General)
            {
                field("Reservation No."; Rec."Reservation No.")
                {
                    ApplicationArea = All;
                    Caption = 'Reservation No.';
                    Editable = true;
                }

                field("Date of Play"; Rec."Date of Play")
                {
                    ApplicationArea = All;
                    Caption = 'Date of Play';
                    Editable = true;
                }

                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    Caption = 'Course';
                    Editable = true;
                }

                field("Reservation Type"; Rec."Reservation Type")
                {
                    ApplicationArea = All;
                    Caption = 'Reservation Type';
                    Editable = true;
                }

                field("Member No."; Rec."Member No.")
                {
                    ApplicationArea = All;
                    Caption = 'Member No.';
                    Editable = true;
                }

                field("Number of Players"; Rec."Number of Players")
                {
                    ApplicationArea = All;
                    Caption = 'Number of Players';
                    Editable = true;
                }

                field("Total Fees"; Rec."Total Fees")
                {
                    ApplicationArea = All;
                    Caption = 'Total Fees';
                }

                field("Tee Time"; rec."Tee Time")
                {
                    ApplicationArea = All;
                    Caption = 'Tee Time';
                    Editable = true;
                }

                field("Actual Players"; Rec."Actual Players")
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






