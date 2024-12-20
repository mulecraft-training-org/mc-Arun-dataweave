%dw 2.0
output application/json
---
{
    "taskReversed":payload.tasks[-1 to 0],
    "totalHours":sum(payload.tasks.hours),
    "taskNames":payload.tasks.task,
    "flattenedTasks":payload.tasks
    map ((tasks) -> tasks.employee ++ ": " ++ tasks.task),
    "currentTime":now()
}
