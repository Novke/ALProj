codeunit 50102 "Res. Jnl. Line - Post Line"
{
    procedure PostReservationLine(var ReservationLine: Record "Reservation Jnl. Line");
    var
        ReservationLedgerEntry: Record "Reservation Ledger Entry";
        GolfCourse: Record "Golf Course";
        Member: Record "Member";
    begin
        // Provera validnosti Golf Course
        if ReservationLine.Course = '' then
            error('Golf Course number is required.');

            //Fali provera iz baze podataka da li postoji golf course s tim brojem ///

            if not GolfCourse.GET(ReservationLine.Course) then
            error('Invalid Golf Course number.');

        GolfCourse.GET(ReservationLine.Course);

        // Provera broja clanstva


        if ReservationLine."Reservation Type" = ReservationLine."Reservation Type"::Member then
        begin
            if ReservationLine."Member No." = '' then
                error('Club Member No. is required.');

            if not Member.GET(ReservationLine."Member No.") then
                error('Invalid Club Member No.');
        end;


        ReservationLedgerEntry.INIT;
        ReservationLedgerEntry."Reservation No." := ReservationLine."Reservation No.";
        ReservationLedgerEntry."Date of Play" := ReservationLine."Date of Play";
        ReservationLedgerEntry.Course := ReservationLine.Course;
        ReservationLedgerEntry."Reservation Type" := ReservationLine."Reservation Type";
        ReservationLedgerEntry."Member No." := ReservationLine."Member No.";
        ReservationLedgerEntry."Number of Players" := ReservationLine."Number of Players";
        ReservationLedgerEntry."Total Fees" := ReservationLine."Total Fees";
        ReservationLedgerEntry."Tee Time" := ReservationLine."Tee Time";
        ReservationLedgerEntry."Actual Players" := ReservationLine."Actual Players";
        ReservationLedgerEntry.INSERT;
    end;
}
