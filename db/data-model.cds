namespace scp.cloud;

using
{
    cuid,
    managed,
    sap.common
}
from '@sap/cds/common';

entity Requests : cuid, managed
{
    requestID : String(10)
        @title : 'Request ID';
    requestType : String(12)
        @title : 'Request Type';
    requestorEmail : String(40)
        @title : 'Requestor Email';
    firstName : String(40)
        @title : 'First Name';
    lastName : String(40)
        @title : 'Last Name';
    globalRegion : Association to one GlobalRegion
        @title : 'Global Region';
    businessUnit : String(20)
        @title : 'Business Unit';
    function : String(20)
        @title : 'Function';
    country : Association to one Country
        @title : 'Country';
    expectedDueDate : Date
        @title : 'Expected Due Date';
    priority : Association to one Priority
        @title : 'Priority';
    createdOnDate : Date
        @title : 'Created On Date';
    comments : String(250)
        @title : 'Comments';
}

entity GlobalRegion : common.CodeList
{
    key code : String(12);
}

entity Country : common.CodeList
{
    key code : String(2);
}

entity Priority : common.CodeList
{
    key code : String(2);
}
