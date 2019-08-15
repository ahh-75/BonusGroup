table 50110 "Bonus Group"
{
    DataClassification = CustomerContent;
    Caption = 'Bonus Group';
    LookupPageId = "Bonus Group List";
    DrillDownPageId = "Bonus Group List";

    DataCaptionFields = Code, Description;

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';

        }
        field(10; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(20; "Bonus %"; Decimal)
        {
            DataClassification = CustomerContent;

            Caption = 'Bonus %';

            DecimalPlaces = 2 : 5;
            MinValue = 0;
            MaxValue = 100;
        }
        field(40; Customers; Integer)
        {
            FieldClass = FlowField;
            Editable = false;
        }

    }


    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }



    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}