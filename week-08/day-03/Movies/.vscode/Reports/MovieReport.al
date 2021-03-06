report 50100 MovieReport
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'MovieReport.rdl';
    UseRequestPage = true;

    dataset
    {
        dataitem(MoviesTable; Movie)
        {
            column(Title; Title)
            {

            }
            column(LengthInMinutes; LengthInMinutes)
            {

            }
            column(Year; Year)
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; MoviesTable.Title)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}