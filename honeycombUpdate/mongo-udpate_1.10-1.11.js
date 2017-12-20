print("Updating from 1.10 to 1.11");

db.crops.update(
    {
        backendType: {$exists: 0}
    },
    {
        $set: {
            backendType: "MongoDB"
        }
    },
    {
        multi: true
    }
);
