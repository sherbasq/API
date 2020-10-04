Feature: addItems
  @APIItems
  Scenario: I want to add new Items
    Given I have authentication to todoly app
    When I send a POST request 'api/items.json' with json
    """
    {
    "Content":"New Item"
    }
    """
    Then I expectected the response code 200
    And I expected the response body is equal
    """
    {
    "Id": "EXCLUDE",
    "Content": "New Item",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": null,
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676111
}
    """

    And I get the property value Id and save on ID_ITEM
    And I get the property value Content and save on NAME_ITEM

    When I send a PUT request 'api/items/ID_ITEM.json' with json
    """
    {
    "Content":"NAME_ITEM Update"
    }
    """
    Then I expectected the response code 200
    And I expected the response body is equal
    """
    {
    "Id": ID_ITEM,
    "Content": "NAME_ITEM Update",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": null,
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676111
}
    """
    When I send a GET request 'api/items/ID_ITEM.json' with json
    """

    """
    Then I expectected the response code 200



    When I send a DELETE request 'api/items/ID_ITEM.json' with json
    """

    """
    Then I expectected the response code 200



