---
created: 20211215
updated: 20211215
tags:
---

# A\*

> A\* is a [[graph]] traversal and path search [[algorithm]], which is often used in many fields of [[computer science]] due to its completeness, optimality, and optimal efficiency.
> &mdash; <cite>[wikipedia][1]</cite>

## Example

```python
def heuristic(a: GridLocation, b: GridLocation) -> float:
    (x1, y1) = a
    (x2, y2) = b
    return abs(x1 - x2) + abs(y1 - y2)

def a_star_search(graph: WeightedGraph, start: Location, goal: Location):
    frontier = PriorityQueue()
    frontier.put(start, 0)
    came_from: Dict[Location, Optional[Location]] = {}
    cost_so_far: Dict[Location, float] = {}
    came_from[start] = None
    cost_so_far[start] = 0

    while not frontier.empty():
        current: Location = frontier.get()

        if current == goal:
            break

        for next in graph.neighbors(current):
            new_cost = cost_so_far[current] + graph.cost(current, next)
            if next not in cost_so_far or new_cost < cost_so_far[next]:
                cost_so_far[next] = new_cost
                priority = new_cost + heuristic(next, goal)
                frontier.put(next, priority)
                came_from[next] = current

    return came_from, cost_so_far

def reconstruct_path(came_from: Dict[Location, Location], start: Location, goal: Location) -> List[Location]:
    current: Location = goal
    path: List[Location] = []
    while current != start:
        path.append(current)
        current = came_from[current]
    path.append(start) # optional
    path.reverse() # optional
    return path
```

## Resources

- [ ] [Implementation of A\*](https://www.redblobgames.com/pathfinding/a-star/implementation.html#python-astar)

[1]: https://en.wikipedia.org/wiki/A*_search_algorithm
