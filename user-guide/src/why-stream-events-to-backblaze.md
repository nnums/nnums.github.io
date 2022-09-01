# Why store your events in Backblaze

In life and business, you generate data.
Sometimes you want to store that data and not worry about it.

You don't want to have to ask

- Will I lose my data because of a random computer event?
- Am I paying more than I need to to store my data?
- Will my database kick the bucket?

What I love about Backblaze B2 is that it's A) very durable, and B) very cheap, and C) very low maintenance.

## Durability

Backblaze is a company focused around backups.
Their whole mission is around keeping data that you give to them safe.
They've been focusing on it for a long time now and are very good at it and have applied that expertise to their B2 service.

Here's a recent BackBlaze article with thoughts around durability:

<https://www.backblaze.com/blog/cloud-storage-durability/>

## Price

Four of my most beloved storage engines are Redis, Postgres, S3, and B2.

Amazon s3 is very cheap for data storage compared, for example, to hosted Postgres.  And Postgres, of course, is very cheap compared to say hosted Redis.
But Backblaze B2 is quite cheap compared to Amazon s3.

- The monthly rate for storage in `s3` is `$0.021 GB/Month`.  For `b2` it's `$0.005 GB/Month`, so over `4` times cheaper
- The rate for download from `s3` is `$0.05 / GB`.  For `b2` it's `$0.01 / GB`, so `5` times cheaper.

That means that if `s3` is costing you a significant amount of money, you can save most of it if you can swith over to `b2`.

## Maintenance

You can pay as much or as little attention as you want to your B2 storage.
It's the closest you can get to no-worry storage.

Actually, for object storage (at least from established services like B2 or S3) pretty much your only risk is account risk.

1. Are you going to lose your credentials?
2. Will your credit card go bad?

- Losing your credentials isn't a huge risk as long as you keep access to the email address or phone number those credentials are tied to.
- Credit card risk is up to you.  However, it's worth noting that B2 has a generous free tier, meaning that your first 10GB of storage are free.

## Summary

Basically, if you want to store information and be able to keep it with the least worry possible, B2 is hard to beat.

## Ok, B2 is amazing.  What does that have to do with Nnums?

Because B2 is amazing, we think that you should be able to stream your data to it.
However, there are issues with that.

- Like all object storage B2 storage is not appendable.
- B2 upload is slow.
- B2 objects work best if kept to a reasonable size.

Basically, hundreds or thousands or millions of rapid tiny saves are the exact opposite of the sweet spot for object storage.

Nnums offers an append layer that allows you to stream information to nnums and have nnums handle the appending.
Then Nnums saves the data to B2 in an organized way.

In a nutshell, Nnums makes it simple and cheap to stream data to object storage.
