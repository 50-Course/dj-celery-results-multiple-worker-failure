from celery import Celery
from celery.result import AsyncResult

appB = Celery('appB')


# You should use the `task_id` argument to find a specific task
# from your queue. In our case, we want the `print_tree` task
tree_task_id = 'print_tree'

# `AsyncResult` allows you retrieve a specfic task from the queue using
# a task_id, whose state can later be accessed with the `.state` property
tree_task = AsyncResult(tree_task_id, app='appB')
task_state = tree_task.state

task_result = task_state.result

print(task_result)

