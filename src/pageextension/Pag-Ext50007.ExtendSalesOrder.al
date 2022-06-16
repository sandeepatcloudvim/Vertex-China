pageextension 50007 "ExtendSalesOrder" extends "Sales Order List"
{
    layout
    {
        addafter("External Document No.")
        {
            field("Shipper Acct No.";Rec."Shipper Acct No.")
            {
                ApplicationArea = All;
                Caption = 'Shipper Acct No.';
            }
        }
    }
    actions
    {
        addafter(Dimensions)
        {
            action("Back Order Report")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Back Order Report';
                RunObject = page "Back Order Report";
                Promoted = true;
                PromotedIsBig = true;
                Image = ViewPostedOrder;
                PromotedCategory = Process;
            }
            action("NJ Shipping Instructions")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'NJ Shipping Instructions';
                RunObject = page "NJ Shipping Instructions";
                Promoted = true;
                PromotedIsBig = true;
                Image = ShipmentLines;
                PromotedCategory = Process;
            }
        }
    }
    var myInt: Integer;
}