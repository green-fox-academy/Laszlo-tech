page 50100 DirectorsList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Director;
    CardPageId = DirectorsCard;
    Caption = 'List of Directors';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Birth; Rec.Birth)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Reporting)
        {
            action(GetReport)
            {
                ApplicationArea = All;
                Caption = 'Get all movies';
                trigger OnAction()
                begin
                    Report.Run(Report::DirectorReport);
                end;
            }
        }
    }

    var
        myInt: Integer;
}