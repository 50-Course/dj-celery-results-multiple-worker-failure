from celery import group, Celery, shared_task

appA = Celery('appA')

class Node:
    def __init__(self) -> None:
        self.val = '*'
        self.next = None

@app.task
def draw_tree(*args, **kwargs=None):
    # Draw a tree-structure using astericks
    pass

@app.task
def print_tree(*args, **kwargs=None):
    pass

@shared_task
def say_hello(count=10) -> None:
    for _ in range(count):
        print('Hello, world!')
    


# Run the appointed tasks in parallel
tasks = group(
    draw_tree.s(*args, **kwargs).set(queue='B'),
    print_tree.s(*args, **kwargs).set(queue='B'),
    say_hello.s(*args, **kwargs).set(queue='A')
)
tasks_results = tasks.apply_async()
