# Code Review

[[feature/handle-incomplete-duals-1281]](https://github.com/iconnect/athena/pull/1307)

## Outputs

Spend one hour and thirty minutes discussing the good points of
`feature/handle-incomplete-duals-1281` and how it could be improved.

## Outcomes

Come closer to a shared understanding of what good code looks like.

## Objectives

I'd like to focus on two key areas: abstraction and understandability.

## Abstraction

### `$scope`

`$scope` is being used as a global namespace for video editing functions and
state and children of these reach into the parent to mutate it and use its
functions. Each property we add to the `$scope` becomes a conditional branch
somewhere in the code.

#### Questions

- Could we extract types to communicate the domain better?
- Are we overloading properties on the `$scope` object with too much context?
- Could we tease apart the ideas to make it simpler?
