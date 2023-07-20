permissionset 50135 MyPermissions
{ 
    Assignable = true;
    Caption = 'My Permissions';

    Permissions = 

        tabledata "Golf Course" = RIMD,
        tabledata "Member" = RIMD,
        tabledata "Reservation Jnl. Line" = RIMD,
        tabledata "Reservation Ledger Entry" = RIMD,

        page "Club Members" = X,
        
        codeunit "Res. Jnl. Line - Check Line" = X,
        codeunit "Res. Jnl. Line - Post Batch" = X,
        codeunit "Res. Jnl. Line - Post Line" = X,
        codeunit "Reservation Util" = X;
        
}