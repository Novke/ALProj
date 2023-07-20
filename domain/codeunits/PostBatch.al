codeunit 50103 "Res. Jnl. Line - Post Batch"
{
    procedure PostBatch()
    var
        ReservationLine: Record "Reservation Jnl. Line";
        CheckLineCU: Codeunit "Res. Jnl. Line - Check Line";
        PostLineCU: Codeunit "Res. Jnl. Line - Post Line";
    begin
        ReservationLine.SETRANGE("Actual Players", 0);

        IF ReservationLine.FINDSET THEN BEGIN
            REPEAT
                CheckLineCU.CheckReservationLine(ReservationLine);
                PostLineCU.PostReservationLine(ReservationLine);
                ReservationLine.MODIFY;
            UNTIL ReservationLine.NEXT = 0;
        END;
    end;
}
