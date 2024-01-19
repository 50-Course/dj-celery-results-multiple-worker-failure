This repository aims to perform post-mortem of the production bug in @celery/django-celery-results #417:

## Post-mortem

Title: Unable to retrieve results across workers

Ticket No:
 - #417

Reference: https://github.com/celery/django-celery-results/issues/417
Associated Patch: 


### Bug description:

> I have two queues although only one is actively processing tasks, call them A and B. Each is deployed in an individual docker deployment consisting of an app container and a celery worker. Both queues share one rabbit MQ running in its own container.

> I can successfully start tasks in B.celery from A.app. I can watch the task in B's log and see it completes. In B.app I am able to retrieve the task's state and result.

> If, however, I try to retrieve the task's result/ state in A.app, those are always empty and PENDING, and get() / wait() just hang.

> This is problematic because A is where, for the most part, all tasks are started, and A needs to send the same task to each of B, C, D, ... then wait for all tasks to complete before moving on. I can't use chained tasks or similar because the tasks all need to run in parallel.


## Installation


## Bug tracker

Please report error regarding this issue to official `django-celery-results` repository. Or continue the discussion at: celery/django-celery-results#417
