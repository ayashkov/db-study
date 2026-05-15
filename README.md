# Database Change Study

A study of database schema version control and migration scripts.

## Plan

1.0.0
: The initial version of the schema.

1.0.1
: Extend `name` and `email` columns in `person` to 256 characters.

1.1.0
: Add `phone` column to `person`.

1.0.2
: Make `email` column required in person.

2.0.0
: Split `contact` table from `person`. Rename `customer` to `user`.

1.2.0
: Add `interraction` table connected to `customer`.

2.1.0
: Re-connect `interraction` to `contact`.

## Durable Identifiers

### Tables

```shell
echo -n table | sha1sum | cut -c -8
d39a4750
```

### Columns

```shell
echo -n d39a4750.dob | sha1sum | cut -c -8
1f386cbc
```

### Collision Handling

```shell
echo -n 1f386cbc | sha1sum | cut -c -8
1dbcc245
```

## Releasing

### Minor Branch

```shell
git branch releng/1
echo "2.0.0-SNAPSHOT" >VERSION
git commit -a -m "Prepare for the next development iteration"
git push
git checkout releng/1
git push -u origin releng/1
```

### Patch Branch

```shell
git branch releng/1.0
echo "1.1.0-SNAPSHOT" >VERSION
git commit -a -m "Prepare for the next development iteration"
git push
git checkout releng/1.0
git push -u origin releng/1.0
```

### Version

```shell
echo "1.0.0" >VERSION
git commit -a -m "Release v. 1.0.0"
git tag --sign -m "Release v. 1.0.0" v1.0.0
echo "1.0.1-SNAPSHOT" >VERSION
git commit -a -m "Prepare for the next development iteration"
git push
git push --tags
```
