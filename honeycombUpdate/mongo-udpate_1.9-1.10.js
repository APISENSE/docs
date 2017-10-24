print("Updating from 1.9 to 1.10");

db.boardUsers.createIndex({slug: 1}, {unique: true});

db.cropsBackup.find().forEach(function (crop) {
    db.boardUsers.update(
        {
            slug: crop.owner,
            crops: {$nin: [crop.slug]}
        },
        {
            $set: {
                slug: crop.owner,
                maxQuota: 524288000, // 500 Mo per default
                createdAt: ISODate(),
                updatedAt: ISODate()
            },
            $push: {crops: crop.slug}
        },
        {
            upsert: true
        }
    )
});

db.bucketStatistics.find().forEach(function (stat) {
    db.bucketStatistics.update(
        {
            _id: stat._id
        },
        {
            $set: {mediaSize: 0}
        }
    );
});


db.cropsBackup.drop();
