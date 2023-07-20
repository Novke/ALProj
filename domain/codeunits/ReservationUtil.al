codeunit 50100 "Reservation Util"
{
    procedure CalculateTotalFees(var NumberOfPlayers: Integer; ReservationType: Enum "Reservation Type"; Course: Code[20]): Decimal;
    var
        TotalFees: Decimal;
        GolfCourse: Record "Golf Course";
        GreenFees: Decimal;
    begin
        // Nabavljanje GreenFees vrednosti
        if Course <> '' then
        begin
            GolfCourse.Reset();
            if GolfCourse.Get('ID', Course) then
                GreenFees := GolfCourse."GreenFees";
        end;

        // Racun ukupnih troskova u zavisnosti od broja igraca i tipa rezervacije
        case ReservationType of
            ReservationType::Public:
                TotalFees := NumberOfPlayers * (GreenFees * 1.1); // 10% doplata
            ReservationType::Comp:
                TotalFees := 0.00; // Troskovi su 0
            else
                TotalFees := NumberOfPlayers * GreenFees; 
        end;

        exit(TotalFees);
    end;
}

