tableextension 50000 "ExtendItem_CBR" extends Item //21
{
    fields
    {
        field(50000;"Case Pack";Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Case Pack';
        }
        field(50001;"Factory";Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Factory';
        }
    }
}
