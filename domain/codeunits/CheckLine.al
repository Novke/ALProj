codeunit 50101 "Res. Jnl. Line - Check Line"
{
    procedure CheckReservationLine(var ReservationLine: Record "Reservation Jnl. Line")
    begin
        // KOD ZA PROVERE
        
        if (ReservationLine."Reservation Type"="Reservation Type"::Member) AND (ReservationLine."Member No." = '') then
            error('Club Member No. is required.');
        
        if ReservationLine."Date of Play" = 0D then
            error('Date of Play is required.');

        if ReservationLine.Course = '' then
            error('Golf Course is required.');
    end;
}
