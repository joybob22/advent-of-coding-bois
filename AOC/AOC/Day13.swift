//
//  Day13.swift
//  AOC
//
//  Created by Brayden Lemke on 12/13/22.
//

import Foundation

let imTryingBro = """
[[[[0]]],[[[],[1],[3,1,10]],[[],[],[4,4,5],8,4],[[0,5,0],4],[[0,1],1,6],7],[6,[]]]
[[3,[6,[7,3]],[[4,7],8,[10],7]],[6],[[[8,9,5],[1,0,4,2],1,[8,8]],[3,[1]],[7,7,[0,7],[5,10,1,9],3],[[0,9,4,10],5]]]
"""

let day13TestInput = """
[1,1,3,1,1]
[1,1,5,1,1]

[[1],[2,3,4]]
[[1],4]

[9]
[[8,7,6]]

[[4,4],4,4]
[[4,4],4,4,4]

[7,7,7,7]
[7,7,7]

[]
[3]

[[[]]]
[[]]

[1,[2,[3,[4,[5,6,7]]]],8,9]
[1,[2,[3,[4,[5,6,0]]]],8,9]
"""

//[[1,2,3,4],5,6,7,[8,9]]
//[[1,2,3,4],5,6,7,[8,9]]

let day13Input = """
[[[[],[0,2,4]],7,5,0]]
[[[],8,[4,2,0,[7,9,9]]],[[[]],[[2,0,6,4,7],[5]],[[10,5],[5,7,7]],9],[7,5,[10,7,7,[9,7]],[[]],[[1],10,9,[9,1],[5,1]]],[[[],[9,10],7],3],[]]

[[1,[[4,6,1,8,3]]]]
[[9,[[],10,[6,5,4,1,5],1],[3],[7,3,7,10,0],[[9,6],[1],0,[]]],[0,2,2],[[[2,7,4,7,6]]],[],[[[4,10,1],4,7,[],[4,6]]]]

[[[7,[10,8],1,2],[[8,6,8,0,5],1,[4,5]],1,4,4],[0,[],[],[],[8,2,[],[4],[10,8]]]]
[[3,7,[2,0,[9,2,1,10,8],0],[3,9,[9,3],[1],[2,5,5,6,10]]],[[[10,1,8,8],[1,2,8,3,6]]],[]]

[[[]],[0,[0,[4,3]],4,[10]],[3,9,9]]
[[[9,[1,5,0],[10]],[[9,1],[9,7,3,4,5],[],[0,0,3,1,2],2],6],[[[5,7,0,4,0],[9],[],[4,1,0],4],6],[]]

[[7,8,6,10],[8,[]]]
[[7,[8],10],[5,4,[]]]

[[6,1,[]],[1,0,10,[0]]]
[[[[3,9,5],[4,0,3],[1,2,0],0],9],[[],[[0,0,5]]],[2,[[6,3,4],[10,9]],3,4,8],[]]

[[[[5,2]],[10,10,[0,6,6],4],[[],4,[4,7,7,10]],2,[[2,1,4,8],[],[7,4,2],[7,0,8]]]]
[[[9,0,6],[0],9,[[],5],[3,10,0,[0,5]]],[[],[[1],[],[3,8]],8]]

[[],[[9,0,4],10,2,6,[[6,10]]]]
[[[0,[],10,2],[[],[],[7,7,3,6],[9,2,6,7],[9,9,4,2,8]],[[]],[[3],[4,0,1],4,10,1],[[7,9],4,[7,0]]],[[[2,3,3],[4,2,4],[4,5,5,6,4],[6,5,8,3,8]],[5,8],[],9,1]]

[[]]
[[6,6,6,[[0,1,7,10],8,9]],[],[[[8],[],[],2],4,6,5]]

[[],[1,[7]]]
[[2,4,6,[[4]],0]]

[[[1,[],0],[]],[8,[[3,5,3],[0,10,1],[7,7,10],1],[],[[8,4,10],[7,2,4],3,3]],[8,9,3],[5,0,3,6],[0,[[0,0,4,3,2],6,5,[]]]]
[[1,5,[9,5,[4,0,6,3]]],[[10,[4,3,6],1,[6],[1,1,8]],7,[[]],[[10,1,2,4,5],[4,2],[2]]],[[[6,2,9,9,0],7],10,[]],[],[10,[[7,5,7],[5,6,7,4,6],[10,1],[7],[2,2,2,9]]]]

[[[],[[2,10,7,2,0],9,8],3,[[]],[9]],[4,[0,10,4,2]]]
[[[[9],8,[6,0],[7,8]],[10,0,6,0],[6],[4,0,[5,8,6]]],[],[],[[[8,10],[6],[10,6]],2,[5,2,4,[1],[7,2,2,6]],[1,1,[2],0],[0,[],0,[6],[]]],[8,[[],[2,2,2,6],[],[9,4,10,5,8]],8,2]]

[[2,[[0],9],[]]]
[[[[10,5,3,9],6,[10,4,10,3],3,[0,1,4,2]],5,[9,0],3,[9]],[5,10,6,5]]

[[1,[0,6,[],3,[6]],1],[1,[[0],8,1,[1,1,4],[5,1,0]]],[[[],7,[5,6,2,0],[1,8,10,9,0]]],[8,[5,3,0],[4,[0,2],[10,10,9,8],[0,9]],0]]
[[9,3,[[9],[0,1,8],[1,8,6,8],[8,7,2,6]],[6]],[[2,5,3,[3,3,9,6]],[[7,3,10],[2],[],4],5],[[[5,9,2,10],[7,0,7,3],2,[6]],9,4,[[2,10,2,1,0],4,9,[6],[3,0,6,5]],[8]]]

[[10,3,[2,5,9],7,8],[[0,[]]],[[3]],[1,6,[],3,[1,1,6,[1]]],[5]]
[[8,[],[[0,7,8,2],1,[]],[],[3,[6],[3,6,6,4,7],[2,3,5,9,0],[6,3,8,1]]],[[10,8,3,3,[2,4,3]],[[5,8,0],10]]]

[[10,[[]],2,[[6]],1],[[],3,8,7],[4],[8,[[8,9,6],[]],[[0],7,[3,7,7,0,6],[4,4,3],[7,1,3,2,2]],[10,6,10],1]]
[[],[8,[[7],[8,3,5]],[],[7]],[10,[[10,7],[]],[[],[1,0],[0],9]]]

[[[[0,8],2],[2,[],[7,3],9,3],8,[2,2,[5,8],4,[9,1]]],[],[],[[2,8],9,[0,7,[3,0,5],1,4],8]]
[[5,[],1,8],[[7,1,[8,10,7,8]],3,[8,7,4],[10,10,2,6]]]

[[10,9,[2],[10],9],[4,4,5,3,[[3,7]]],[8,8]]
[[2,[]],[],[[[7],9,5]]]

[[4,[[1,3,0,6],[7],6],2,[[10,10,10,9,5]]],[7,8,[],0,8]]
[[[]],[[3,[0,9],2,[2,8],[7,3,5]]],[8,[2,[],[7,1,4],1,[2,7,1,7,2]]],[10,[],5]]

[[[7,[10,5],8],[5],3],[[[],[7,0,9,1],[6,7,7,6,2],2,8],5],[],[],[[10,[6,0,3,4,0],[1,7],7,[10,4,7,4,8]],4,3,[]]]
[[],[7,1,4,6,[[6,3,8,5,6]]]]

[[[2,7,[],[2,8,9],[0]],[0,[],[]],[1,3,[3,7,5,9],[6,9]],[[4],[0,9]]],[4,3,[4,[10,6,10,3],[9,2,0]]]]
[[],[[],[6,[1,7,4],5,[0,9,6,6,3],4],4,8,[6,10]],[2,[[],[],0,[],[5,5,3,4]],[[9,6,10,10,9],[6,7,1,8,6],[7,1,2,4]],3,2]]

[[[],7,[[],6,[5,2]],7],[],[],[]]
[[],[[[4],9,[1],9,0],6,7,10],[9,7,[8,[10,5,1,5,1],[10,6,0,6,10]]],[[[3],[7,9],[9,10,6,5],[3,5,3],9],[[6,2,2,2],8,4,[7]],[[2],1,9],[[8,3],1],[[0,9,0],[8,6,2],[10]]]]

[[[[3,0,8,8],1],8,9],[5,10,10,[],[7,[9]]],[[[0,9,0,1]],4,[[7,6,4,7],2,2,0],[4,[0,0]]],[[2]],[1]]
[[1,8,3]]

[[[[]],[[0,4],8,3,1,[4,8,1,6]],[[4],4,0],[[]]]]
[[9,[[10,0,1,7,4],6],7,1],[5,9],[6,0,1,[[5,10]]],[1]]

[[[],5,[[0],1]],[[3,[8,8,3,7,4]],8,0],[8,[[0,5,2],4],1,[3,9,[7,0,10]]],[0],[[[6],[8,5,7,9]],[[10,8,3,8],[10,8,7,4]]]]
[[[[2,3,4,8],[]],[8,[7],[0,1,3],[10,4,0,9]],7,3],[3,9,[]]]

[[],[9,2,5,[],0]]
[[7,[],9],[]]

[[[],[[0],[7,5,5,3],[],9,8],[[3],[10,9,3],1]],[[3]],[[8,3,[7,2,10,5]],6,4,1,10],[1,[[6],[],[10,5,3]],1]]
[[1,[[9,1,1,5],7],7,[],[3,8,[6,3,9,9]]]]

[[[[9,9,3,5,3],6]],[2,[4,[8,1,5,7]],4],[7],[[8]],[1]]
[[[[3,3,0,0],[8],8,5,0]],[4,2],[8,[[5,1,3,2,9],[1,10,9,8],[9,7]],[[9,10],5],[[],[10,0,3,4]]],[[9,[1,7],8,[5,0,2,1,8]],[2,[7,6]]]]

[[9,2,1,9,[[4,10,8,1],[0,8,5],[5]]],[],[[[1,0,8,8,0],10,5,[]],6,8],[[2,7,[7,0,9,4,7],3]]]
[[4,[[8,7,9],5,2],[7,3,[6,5,5],6],6],[[[10,2]],9,[[],4],9,9],[[[3,4],7,10,[1,3],10],8,9,6,[[7,4,3],[3,6]]],[6,[7,0,[7,4],[]],9,1]]

[[],[[[7,3,3,5],5,9],[10,[2],[],1]],[6,[0]],[[[8,10,6,9],3],1],[5,3]]
[[1,[[2,7,0],[4,10,9,7]],[[3,7,9]],6],[10,3,6,3]]

[[[3],[4],[8,[],10]]]
[[[[7,0,8,6,2]],[9,[8,6],6,5,[9]],6],[5,[[4,2],4,[],[2]],[[5,3,0,2,9],4,[10,7,8]],7,10],[],[10,9],[[10,[4],0],[]]]

[[[],[7,[5,0,8,0,0],6,[2,10,2,4]],0,[6],[[10,10,9]]],[[[9,1,3,1],10],[[4,6]],[[0],[5,1,5,6],[3],[5],[9]]],[[8,0,[7,4]],10],[6,0,[5,[],[5,4,5]]],[[9],1,5]]
[[[[],2],[0,3]],[[6,[6,1,2,3,2]],0,3,[6]],[[9,[10],8,[3,7,10,8]],[],10,5,8],[],[[0,[8]],5,[[],[0,0,1],3],[[5,4,8,10,6],[6,1,4,0],[0],[2,1,8,4,10]]]]

[[6],[[[2,7,7],[],[1,3,4]],2,6],[[0,[6,3,5,7],[10]],[5,[3,3,10,6,2],8,[0,2,3]]],[[6,10,[2,7]],[5,2,3,0],[[5,2,2],[5,7,5]],[]],[6]]
[[9,[[4,10,1,3],[7],[7],7],[8],[[8,2,2],6,2,[],[6,5]],[2,[3,2],[2,3],[],3]],[2],[[[2,3,0,2,8],5],[5]],[0]]

[[],[[[8,5]],[8,[],5,[6,6,10,0,9]],0,3,1],[]]
[[9,4],[],[7,6,[7,3],[[4,7,4,8],[7,9],5]],[],[]]

[[1,1,7],[],[[[1,5,10,2,5],[8,8,3],[9,8,0,10],[4],4],9]]
[[1],[],[9,[1,2,10,4],3],[10,9,10,[3,[1,5,6],9]],[5,6]]

[[[[4,7],[6],1,[1,7]],7,0],[[[3,1,8,9],3,1,[10]],8],[5,6,5,[7],0],[[0],[10],[[1,6,6,10,6]],[[7,3],2]],[[]]]
[[10,8,[8,[2,2,1,6,3],2],[[9,4,5,10]],[[2,5,10,6],6,0,6]],[[[1,8,1],[9,5,6],2],[[5,8,2,5]],2],[[1],9,[[8,0,7],4],1,8]]

[[5,[1,8,7],9,1]]
[[],[[4,6,[7,9],0,4],[9,9,[9,0,2,2]],8,5]]

[[7,[3,0,[2]],6,4,10]]
[[],[[0,[6,9],5,0]],[],[[[5,4,4],[],[],4],[[1,5,9,6,7],3,[2,3,9,1,5],3]]]

[[],[2,6,[8,[7]],2],[3,0]]
[[[[],5],3,[],[[10,5,4,2,5],[10]],6],[10,0,[],[[9,3]],3],[[[4,6,0],4,[]],[[9,7,9,7],[9,4,3,4,7],[8]]],[6,0,5,[[4,0,2],7,8,[],3]],[]]

[[7,[8,3,[],[10,6,4]]]]
[[[[0,6],9],8,6],[10,6,[7,[9]],5,[[1,1,2]]],[4,[[1,5,2,3,0]],[0],[6,[2,2,7,9],2,3,7],4]]

[[6,2,4],[7,[[]]],[4,[[],[1,4,2,0],[0,5,0,2]],8],[],[0,[[5,5,4,2]],1,[7,3,2,[],5],[7,[8],1,8,[3]]]]
[[[[7,3,1,1,6],[4,1,0,0],2,0,[8,6,2,1,9]],8,5,3,[9,4,9]],[[0,[10],[2,9,3],5],[7,[3,7,7,10,0]],0,10],[[8,[9]],9,[10,6,2],[1]],[]]

[[8,10,10,[5,[2,2,1,2],[],[3,10]]]]
[[8],[1,[[7]],4],[3],[[7,[4,1,10,3,5]],2],[0,[1],7]]

[[8,0],[2,[[1,9,10,7,9],7,[2,3],[5,5,5]],1]]
[[[10,10,10],4,3,8],[1,[],[5,6,3,[7,10]],9,[[2,6,4,1,1],[2,10,5,10],[4,9],[6,2]]]]

[[[3],8,3,[[7],7,2],0],[7]]
[[[[3],7,[1,3,5,1],[1,1],[4,3,3,4]],1,[],7,[[1,9,10],[],[4]]],[1,[[6],[]],[[],[0]],4],[[],[]],[3,[[],4,1],9]]

[[],[]]
[[8,2,[[9,2,8],[9,5,0,0,7],7,7]]]

[[[0,[6]],[[9],[9],10,9,[]],[2,[9],9,[],10],8,4],[],[],[]]
[[4,[]]]

[[[],[]],[3,9],[2],[2,2,7]]
[[[7,8,[7],7,[3,8,5]],[]],[[[],[6,10,7,8]]],[[2],8]]

[[[[6]],[1,[1,8,4],1],[[3,2,8,5,0],10],3,[[10],1,[10,8,5,0],7,[2,10,5]]],[9],[[1,2,[7,4,7,4,5],7,[1,8,1,6,5]],[[4,10,1],[1,1,0],[6],4]],[6],[8,[10],5]]
[[0],[4,7,[[2,5,4],[],[3,3,8,5,8],7,[9,1,4]]],[4,[[],[9,4],6],5],[[],[[8],3,2,[5,3]]]]

[[3,8,8]]
[[4,[3],[10]],[5,[2,[7,5,10,2],10]],[8,[4],[]],[[9]]]

[[[[3,0,2],[7,8]],[[],10,3],[9,[8],[1]]]]
[[4,[[],4],2],[5,4],[1],[[7,[8,3,0,6,6]],[[6]],4,[9,1,10,[],7],6]]

[[[9,[8],[10,2]],[5,[0],2]]]
[[[[9,10,1,8,8],10,0,[8,9,7,9]],[[10,1],2]],[0,[[7,8],1,[]],[[5,8],[5,8,8,9],[4,2,9,4,8],9,[]]],[[1,5,[2,4,5,5,10],[10,3,3,8]]]]

[[[],10,[[6,9,7,2,1],9,0]],[[6,[4,2]],[]],[]]
[[[[2,2,10,1]],7,[[0],8,10],[[1,4,0,10,2],[4,0,8],0],[1]],[8,3,[[1,4,1,6]],[7,1,[4]],8],[7],[[1,[],10,[8,8,6,0,1],[]],9,3],[[1,[2,5,7,5]]]]

[[[2,[4,5]]],[],[[[4,3,7],[8,0,5],10,4]],[4],[[[7,1],9,3,[6,5,1,1,9],6],5,6,[3],[4,7,1]]]
[[[3,3],[[8,2,3],1,[3,5,10,7,0],9,[6]],[4,2]],[2,2,[9,[1,1],[7,8,2,2],[3,9,10]],4]]

[[[[6,2,1,2],9,5,[8,2],[2,2,0,3,7]],[[],2,[4],10]],[],[8,8,[2,6,4,[1,3]],[6,[10,8,10],6,[2,9,4]]]]
[[[],4,0,0],[[5,[6,6,7],5,9,[0,1,9,3]],[]],[],[],[[[2],[10,3,10,4],7,[8,10,2,10,9],[1,7]],2,[8]]]

[[4],[3,[[3,0],1,[3],[]]]]
[[3,10,4,10],[[[],5,[],[8,7,6]],4,[[3]],[[6],9,6],[[5,8,7,8],3,[4]]],[5,[],4,[8],[3,[3,10,7,5,7],2,[]]],[[[10,7],5,10,10,[]],[]],[[1,8,0,0,4],9]]

[[[7,2],7,2]]
[[9,9],[5,[[9,1]],[[],[5,7,4],9,[3,3,9,3]],9]]

[[],[[[9,1],1,9,2],9,[],10,[[7],[4,0,9,6,7]]],[[[],3,[0],10],[[4,0,8,9,4],[5,7,9,0]],[[5],[0,10,6],[5]],[[0],[3,1],[],[0,9,8,1]],[[],[7],[0]]]]
[[4,[[8],2,[8,0]],8,[9],[[7,0,0,4,0],[1,1,6],4]]]

[[[0,[3,1,0],5]],[5,0,[1,[8,6,7]],[[7,8,5,7,4],[8,5,6,1],0,[8,7],[1,10,8]],[2,[2,6,2,6],6,4,3]]]
[[],[[[2],[5,2,5],7],[3,[],[0],2,[3]],[[9,8,3],[],1,[0,7,1,4,6],3],[4,[0,10],[6,7,9,7,10],[9,8,0,3,9]]]]

[[[[8,10,4,2,2],5,[4,9,4,2],1],[[2],[3,6,1]],2,[0,1]]]
[[8,[[10,7,10,1,1]]],[],[],[4,8,10,[0],[]],[[[6,5],[5,5,4,6,2],[9]],10,6,[[3,7],9,[3,1,6,4],[2,4]]]]

[[[[4,0,9,8,0],9,[4,10],[8,8],[1]],[[]],[9,[0,1],[]]],[]]
[[[],9,5,8,0]]

[[5,5],[0,[3,4,[6,7,6]]]]
[[],[],[[6,[],9],[[3,2,7,1,10],[10,3,5,2,7],2],[]],[[[6,0,5,2,7],[9,9]],0,8,[[0],[],[6,6,8],1],5],[[7,[5,8,8],[5,7,3],10,[1]],2]]

[[2,[7,[9],5],[]],[[[3,8],[5,10,3,8,1]],[6,0,0],1,10],[],[4,7,3,5]]
[[],[6,6,8,8],[1,[[],1,1,0,[4,5,2]],0,4,[]],[9,5,1,[8,3,[3,1,5,3,8],[2,6]],10]]

[[4,0],[],[6,1,6,8],[[6]],[[10,[],[6],7,[]],9]]
[[[3]],[[[],7,0,[4]],0],[[]],[]]

[[9,6,5]]
[[1,8,3,2,[5,[10,1,3,3],[3,7]]],[0,[[6,4,6,9],8,2],[],[1,[1,4,8,7,10]]],[[[6,2,2],[5,8,3,0,10],[],8],7,7,[8,2]],[[8],[],[],[[]]],[[[3,10,2,4,2],5,10,[1,4,10,9]],1]]

[[9,[3,2],[]],[],[[],8],[[[6,2],4,9,4],5]]
[[[[3,3,7,8,1],[]]],[4,2],[]]

[[5,[[3,5,6,2,7],10,0,[2,3,1]]],[6,3,[[7,2,0],[],[],8,0],[[2,5,0,0],[1,8,8,9,7],[0],[],0]],[],[10,[[0,2,0,6,3],2,[],8,7],[[4],[4],[5,2]]]]
[[[[0,10,6,5],[],[1,7,7,4,6],[2,2,10],[10,4,0]]]]

[[],[[[],4,[9],[3,2]],[1,[0,0,6,4,2]],10],[[1],0,[9,9,[9,2,8,10,5]]],[]]
[[[[2,6,3],[9,0,10],0,[9,5]],0,5,2,[0,5]]]

[[],[[[5,3,9],[1,4,2,8,5],7],8],[[[6],9,5],3,[],2,3],[0,4],[7,2]]
[[[7,9,[0,2,2,5,9]],6,5,[8,[5,7,7]],10],[9,5],[8,4,6,5,[2]],[[[2,10,0],6,9,[]],3,[6,[1,4,4,5,4],[2,8],[],0],[0,3,7,10,[3,3,1,3,9]],7]]

[[8,10,[[5,9,3,3],5,[8,10,8,9]],4,6],[],[],[[[4,4],7,[4,9,3,10]]],[]]
[[[[10,5,6,5],1,6,4,10],10,8,[8,1],5]]

[[],[[],6,0,[]]]
[[2,[[3,4,6,2,2],[],6],7],[7],[],[[[],[3,8,3,1,7],[3]],8,10,9]]

[[],[1,[[1,2,8,4],6,1,[9,1]],[[6,0,5]],[[8,6,3],3,6,[8,0,9,5],7]],[[],9]]
[[3,[[1,3,0],0,[0],3,[1,1,6,10]],[],[1,7,[2,1,8,1]],1]]

[[6,2,3],[5,5,[[7,4,2,10,7],0,6,[3,2,9,3,0]]],[[9,[8,9,5],[8,2,0,0],7,[]]],[[[],4]]]
[[],[[9,2,[0,2,9],10,[]],10,[3,9],4],[0],[9,1,[[3,7,6,10,7],[7,7,5],[4,3],10]],[[[5,3,0,2],10,[]],[[3],10],2,9]]

[[2,[4,[10],3,[],5],6,[[5,4,1,5],[4,0,7],[5]]],[[[8,9,3,6,5],[1,6],[9,0,7],1]],[2,[7,8,[0,10,6,0,0]],[8,[],[1,10],7,[]]],[9],[5,0]]
[[3,[7,4,10,9,[7,10,2]]],[[[0,8,4],[10],2,[1,5,9,10,8],4]],[[4,5,[4,10],[2,7,0,0]]]]

[[[[],5,[5,7]]]]
[[[[5,3,3,10,4],[10],6,6,4],[5,[2]]]]

[[[[0,0,6],3,[6]]],[],[8,8,[[],[8,3],1,[5,0,2,4]],[1,9],[10,[],[6]]],[3,6]]
[[],[[7,10,2,1,2],[[8,5,5],[],[],[10,7,6]],8,2],[4,6,[[]]]]

[[2,10,8,10],[9],[[[6],[2,2,2,10,4],4]],[[[3,2]],3,1,[6,3,[10,6,7],10,8],[10,[8,9,2,9]]],[[5],[4,[7,5,6,3],2],[5,8,1,[],[1,1]]]]
[[9,6,[[8,6,4,6,2]],[[0,6,10],[]]]]

[[[[10,0,6,1,2],[7,8,2,0,0]],3,5,[[10,9],[8]],1],[9,[[6,6],10,3,2]],[0],[2,[1,3],9,7,[[0],[1,4,4],4]]]
[[[[8,6,5,2],[1,6,3,1]],2,[9,6]],[],[[6,5,6,1,[10,1,7,4]],9,0,4,[[6,8],0,9,9,[6,6,9]]]]

[[1,[[],[3,4,5],5,[],[0,1,4,8]],[[0,5,3],[5,7,8,7,0],5],6,7],[2,9,[[0],[10,9,8,2]],10,4],[]]
[[],[[],[6,[2,6,8,0,2],2]],[[[3],[],[10,8,1,0,10],5],[3,[0,0,5],6,[9,8],[5]]]]

[[2,0,9],[5,2]]
[[[7,[7,7,3]],4,[],1],[0,[[6,4],8,[9,6,0],[2]],3,[1,[5,9],9,[]]],[[[5,7],8],[[6,6,5],[],9],2],[[],1]]

[[[8,[9]],[1,8,[5,0,1,4]]]]
[[[],[6,[9,3,1,9],[4,0,8],8,9],[[9,4,7,4,9],[],3,[0,8,10,2,7]]],[3]]

[[3,[2],[9,[8,4,5,7],0,10],[],[[9],2]],[0,0,[[0]]],[0,9,7,[],[[0],0,[4]]],[[5,[3,8,6,1,7],[3,0]]],[[[4],[]]]]
[[2,[1],9],[],[6,4,[9,9,0],3,[]],[[[4],7],2,[[7,8,5],4,[6,4,4,2],8,[10,3,7,1,6]],2,[5]]]

[[[[3],[6,3],7],[7],[[7],[6,3,6,1],[7,3],[7,4,4]]],[10,10,2,[0,4,[3,1,8,10],0],[[9,4],[8,4,9,10,8],6,[],8]],[3,[0]]]
[[[],10,6,6,3]]

[[[1,9,[5,3]],6],[[[7,0,3,3,6],4,4,7,[7]],3,6,3]]
[[[[4,4,7],0,7,[10,4,3]],[3,[6,10,5,9,8],[],3],6,0],[[2],9],[[[8,1,0],[1],9,[4]]]]

[[],[[[4],[5,3,8,5,8]],2],[9,6,10],[[[],0,2,[9,0,7,2]],[9,8],[],10,5],[5,[3]]]
[[],[[[1,9,10],0]]]

[[7],[],[1],[10,2,9,[]]]
[[10,2,[[9],1]],[0,[[0,10,10],0],2,3],[9,3],[5,2,[[1,3,7,2,2]]]]

[[[7,8,7]],[4,9,7],[2,[[6,8,2],2,3],3],[]]
[[6,[]],[[[2],[0,2,3,0],1,4,8]],[[9,4,[1,1],10],[6,7],9]]

[[1,10,[[5],2,[3]],[[1],4]],[[3,[5,1],[4]],[7,2,[10,7,0],[2,2,9,7],[6,6]],3,10,[9,[5,8],6]],[],[[4,7,10,7],4,9,[0,[7,4,7,1],5,1,1],10],[1,10,0]]
[]

[[6,1],[],[[8,10],[],5,5]]
[[],[[[4,9,6,0],[3,6,8]],4,10],[[],1,[10,4,[3,10],3,[5]],9,8],[[],10,[[9,1]],9],[4]]

[[[],2,1,[8,9],[1,4,0,[2,5],[]]],[4,[2,5,[4,4,2,9,8]]],[4,7,6],[[[9,9,8],7],4],[[10,[4,4,4],[10,10,9,8],5,3]]]
[[],[0,[[7,6,2,3,3],5],2,[],[[]]],[[2,6],[1,4],[5,8,9,4,[5,1,9,4]]],[]]

[[[],[[0,8],0,[3,7],[0,4]],5,3],[1,5,7,[7,[4,9,9],10,2]],[0,5,[]],[]]
[[[[3,3,10,5],[]],[0,1,7,[2,5,1,0],[0,9,8,2]]],[[3],[[9,6,3,10,4],7,[7],6],[[6,0]],[1,[7,2]]],[1,[[4,6,0,7],9,10,[2,8,4,9,2],[7,3,4]],[[7,9,1],3,0,4,[]],[]],[],[9,5]]

[[6,[8,5,[4,2,6,0,10],[8,9,5,10],[4,9,6]],0],[[6],9,8,0],[[8,[5,3],[5,0,9,6,3],6],[[2,0]]]]
[[3,[],7,8]]

[[6],[9],[5,1],[1,[[0,2,1],7],0,[4,0,2],1],[[10]]]
[[[0,0,9,[1,4,2,2]],5,0,4],[[[9,9,4,0,7]],7,0,10]]

[[10,9,2],[7,7,9,[3,2]],[7,[6,8],8]]
[[[1,3,8],5,[[4,7],[4,5,0],[],[5,2]],5],[7,[[2,0,0,10,6],8,[9],6],[],1,10],[[]],[[[4,10],[5],[8,6,3,10],6,[10,0,0]],0,[9],[[2,8,0],[0],5,[10,8,2,10]]]]

[[4,8,1],[],[8]]
[[1,[2,4],9,[]],[[[9,2,1,4,2]],[],[[],[]],2,[]],[],[],[[]]]

[[[],[[2,5,10],[2,9,3,6,8],6],[[]]],[9],[10,3,2,[[],2]],[[9,[10,5,9,7],[9]],9,[[8],7,2,[6,4],[6,8,8,0]],[8,4,[],10],[0,[9,0,7,9,8],0,[5,0,5,4,10],1]],[[1,10,3,3,3],[1,0,1,[]],[9,8,[9,8,7,2,9],8],7]]
[[10,1]]

[[[],[],[[0],[2],5,[],1],[],[]],[[],[],3],[[[5,10,8],3,2,4,[0,8,0]],1,[5,5,[10]],[],[8,[5,10],4]],[8,7,0,2],[1]]
[[8],[]]

[[10,5,[[7]],[0],3],[[],1,2,8],[[7]]]
[[7]]

[[[[10,9,2,4],[10]],[[],[],2,[0,7]],1,[1,7]]]
[[[8,9,[9],[6,1,10,6,8],[3,10,3]],9,[[4,6,5],3,[8,9],10,3],[10,1,10,1]],[4,[[8,5,10,2,7],8,[9,6,0],[10,3,5,1]],[[3],0,1,[4],[7,8]]],[5,[[8,1,2,7,7],[10,9,0,9,5],8,[0,4],[7,7,8,0,5]]],[1,4,3,[],[[1,8,10,10],1,[1,5,7],[9,6,10,7],2]],[[3,[],[0,0,6,9]],6,3,[[],10],[[7,6],[1,2],8]]]

[[[[8,3,5],5],[6,4],[4,1]],[[],4],[],[4,7,2,[[9,9],[]],[]]]
[[[[],[2,8,7,5],[8,2,6,5]],[[],[],10,5,[10]]]]

[[0,4,[4,[3,4]],4],[[]],[[6,10,[8,1],10,[6,6,7,10]],[[8,10],[1,1,7]],[3,[6],1,7],10,[[4,10]]],[5,7,2,[8,9,[3,4,10],2,[]]]]
[[[[1],[5,0,8,5,1],4,[]],[6,10,[7,2,1],[1,10,5],0],9,2,6],[7,9,[2],5,6],[0,[[2],7,8],8],[[[],[],[1,9,9],4,[]],[8,9,8],7]]

[[[[0,6,5,8],[5,5,3,10],0,[9],[9,0,3,0,1]],6,10,4,[[6,2],[10],[4,4,10]]],[10,10,10,10]]
[[10,10,0],[[[5],8],[[2],[8,8],1,[0,3,10,6],[4,6,2]],[9,6,0],1],[],[[[],[9,2,0,9]],3,[9,[0,5],7],[[],1]],[[[10,1,7,8],[5],[1,6,7,9],6],6,2,2,[[7,4,5,0,8],0,4,8]]]

[[[],8,8,[]],[10,[10,[8,7],1,[5,9,9,1,7],4],5],[1,8,[5,1,[9,7,10,5],7],[[6,7],[8],[9],0,6],4]]
[[[]],[[8,4],7,3,[]],[[],10,[5,[1],[8,3,2,1]]],[[[2,3,10,2]],4,1,4],[9,2]]

[[8,[6]],[],[],[],[2,1]]
[[3],[[9,[2],5,3,[]]],[8,3,[[5,5,9],[]]],[[3,4,[10],[2]],8],[3]]

[[[[8,7,7],[9,5,10,7]],[],[],5],[7,[9,[1]],2,6],[[]],[[6,1],[6,2]],[]]
[[9,2,0,[[6],4],[6,[1],[6,8,10,5],9,4]]]

[[5,[[6,4,7],4,[],[1,10]]],[[2],[[0,7],[10],[6,7,1,3,5],[7]],9,6,7],[9,9,2],[[1,[3,10,5,0,3],7,3],[7],4,[[5,8],[2]],[0,6]]]
[[0,[[6,10,3,2],[7,0,2,10]],10],[1,1,0],[[],1,[7],[5,1]]]

[[[[10],0,[7,9,0,7,7]]],[],[[[7,8],2],[[4,2]]],[[[2,7,2,3],[0]],9,1,[[8,4,5],[4,10,0,0,4],[]],[3,[6,4,9,5],4]]]
[[[6,[9,6,9,1],9],[[0,0],8,[1,7,3,1],4,[]]]]

[[[2,3],3],[10,4,[[10,8,4,6,9],5],[8,[0,9,5,5,4],3]]]
[[0],[[[1]]],[1,9,2,2,[[4],4,8]],[]]

[[[[8,0],[10,7],[9,2],[4]],[3,[2,10,2],7,4],[8,[],[0,5,7],3,[5,10,1,7,4]],[6,3,8,[0]],[3]],[[5,[],[7,9],[8,5,10,2]],[]]]
[[10,6,[9,[2,6,5],1,0,[5,0,3,3,10]],[[10,1]],5],[1,[10,[1,2,6,6],[],[5,6,3]],10,5],[1,[2,[9,0,5,7],5]],[[3,[4,10,9],[7,6,3],[9],10],10],[[7,[10,10,7]],8,[4,7,7,6],[[1,0,4],[3]],4]]

[[[0,[5,8]],4,[1],[1,4,7,[]]],[4,2,[[4,0,4,8]],[4,[],[],3,[3,0]]],[]]
[[1,[7,6,5,7,[7]],4],[6]]

[[[[7,9]],[[8,4,10],2,7,9,2]],[7,7,[[7,9,1],4,[0],0],7,[8,[6,1,2,5],4,4,10]],[7,3,4,6,1]]
[[[8,0,[2],0],0],[[]],[6,4],[6,10]]

[[],[[[7,10,10,1],7],0,8],[9],[0,2]]
[[8,[[0,2,5],[6,10,1],3,0],[[10,7]],[[3,3,2,9,3],4,[8,6,2],5,0],[8,[],4]],[7],[[]],[]]

[[6,[],[[6,9,7,5],[7,4,5,9,10],10,[],[0,5,3,7,5]],[[0,9,5],10]],[[3,5],[10,3],10],[2],[[[5,7],[8,6],5],[[0,9,8,3],[1,8],9,[0,6,0,7,1],3]],[[[]],2,1,[],5]]
[[[[3,8,10,5],6,3],[4,2,0,2],[9,[],3]],[],[1],[8,0,10,[]],[[7,[],[8,5,7,3,2]],9,1,1,[[9,3,5],[],3]]]

[[10,6],[5,[2],[1,4],1],[[],[],[8,6,[0,4],9,[9,10,0,1,6]]],[10,3],[]]
[[],[[2,[10],[5],0],[9,9,6,1],0,[[10,1,8]]],[],[]]

[[4],[0,9,9,[3,7,[0,3,6,2],5]],[[],[9,0,2],10],[0,0,[[4],3,10,5],4,5],[]]
[[8],[10,2,[5,[6,10,4,7],[]],7,0]]

[[[],9,2,5,0],[[[10,6,6],10,[1,3]],1,10,[]],[9,4],[[[5,6],8,[2,7,8,3,8],10,[4,2]],6,4,[[4],2],[[10],1,10,[],6]]]
[[0,[]]]

[[0,[[5],10,5,8,2],[6],10,8],[0,3,9,2],[[0,[]]],[[[1],9,6,[8,1,8]],8]]
[[[9,[10,0],9,[]],[[8,5],2,[],0,6],[3,2,9],[3,[5],7,10,6],5],[[],[8,9],[4],[[7,6,9,6,9],[1,6,3],[7,3,6,1,6],[5]],[[6,7,4,5],5]]]

[[6,[[3,8,10,5]],2],[],[[],9]]
[[1,[[7,2,5,1,7],7,8,9],[6,[4,9,9,9,7],0],5]]

[[],[[1,8,[8],8],10],[],[2,[],[[0,5],6,[2,0],[1,3],[5,7,9,8]],2]]
[[[[6,7,5],[5,0,10,3],[8,10,8],[1]],1,[6,[8,4,3],[5]],[0,[6,10,2,7,1],[7,10],1,[8,1,10]],[2,2,[10,6,7,9,10]]],[9,1],[4,3]]

[[8],[[5,[],[],[5,5,2,1]],4,2,4],[10]]
[[[[0,6,0,9,3],5,3],[[],0,[9,9,0,6],7,2],[[10],10,[9,5,6,10],6],[6,8,9]],[[[3,0],[],10],7],[[],3]]

[9,7,7,7]
[9,7,7,7,2]

[[[2,[]],7,[1]]]
[[3,[0,[8,10,1,9,7],[]],7],[[[2,10,0,8,4],0,10,[]],[[1,1,3,5],3,[1,7],2,0],10,6,[6,[4],10,[9,9,1,4,2],[6]]],[[5,[9,6,2]],3]]

[[0,[8,[5,3,1,10,3],[7,3,5],[5,5,3]],3],[7,1]]
[[9],[[],9,9,[9,[],[1,1,7,4,1],[9,1,7]]]]

[[[[]],[10,[6,10,5,1,1],8,[2,3,1,7]],[6]]]
[[[[5,6,4,8,4],10]]]

[[],[],[3,3,[[2,5,6],0,[6,6,9],[],4],[]],[[2],1,[[3,10,3,2,7],[5],[9],[3,5,1],10],5,7],[[[6,3,6],7],2,4]]
[[3],[[10],10,[[1,5],6,0],[[6],3,[2]]],[5,7,8,9,[[3,4,3,5,9]]],[[6,[5,1],10,8],2,8,[8,[10,0,5,4,0],5,1,10],6]]

[[],[9],[3,2],[[[6,2,1,7,3],[7],[5,6,6]],[0,[]]]]
[[2,[7]],[]]

[[1,[7,4,3,7,[9,1,10,6]],6],[7],[],[]]
[[3,[1,9,[3,1]],[[],[10]],10],[8],[3],[[6,8,6],1,8]]

[[[6],[2,2,3,[5,8,9,0,0],2],3,[]],[5,[1]],[],[9,[[0],[6,3]],[2],3,8]]
[[],[[[0,7,2,3],[10,0],0,9,5],5,[]],[],[3],[[3,8],2]]

[[],[[[6,7]],9,[4,3,[7,4,4,3,10],[9,4]],7]]
[[[10,7],[[],2,[],1,4],[9,8],[[1],[7,1,3,1,1],[8,1,1,0,5],[]]],[[[2,10,6,5]]],[],[[6,[2]],0,7],[[6,2,[10,5,9,8]]]]

[[1,3,[4],10,[[9,1,5,8,3],[7,7,10,0,2],[10,4],[0,0,1]]],[8,7,2,[[9],3],[[6,9]]]]
[[1,4,[]],[],[9]]

[[[6,[],[3,2,3,5,6],[]]],[[2,[5,1],1]],[0,[],[[3],7,1,0],[]]]
[[[]],[[8,7,7,[6]]],[0]]

[[],[0],[],[7,1,1,5]]
[[[],[[],[9,3,5,4,7],[6],[8],6],[7,2,[3,9],[4,0,7],[8,10]],[0,[8,3,8,10,7],[5]],1],[1,[],[],[]],[[[5],[],[2,2,2,1,9]],9,[[2],6],10],[7,4,[3,5]]]

[[10,[],[7]],[[10]],[[[],1,[0,8,3],3,0],5,[],[],4]]
[[6,[],3],[[],[[6],[4,9,10]],[[],3,[],8,[1,8]],[[10,2,10]],9]]

[[[1,[2,6,5,9,0],1,2],[0,4,9],[[6,1,4,6,0],[5,9,5,8],[2,7,7,2],[1],[9,7,0]]]]
[[5,7,[[9,6,2,0,8]]],[[[],5,[5,8,10,8,5],[10,4,1],5],[2,3],3,0],[3,[9,[10,0,5,9,2],3,[],9]],[7,8,2,3,10],[[4,[5,10],[2],[]],[[7],2,1,1]]]

[[6,[4,[0,8],9],[[3,7,1],[10,9],[7,0,1],6,3],4],[0,2],[[]],[[6,5,[]],[9,10],[],0,[5]]]
[[[],[0,2],[],9],[6]]

[[4],[3,2,2],[[[9,5,5,2,2],[10,4],3,7,7],3]]
[[[5,8,[2,6,2,3],[8,10,0]]]]

[[4,10,[[4],6]]]
[[3],[0,[9,7,[4,4,3]],10],[[[],4,[3,5,8],[0]],[[1,0],0,[1,6,8],[5,3,9,6]],[9,[2],2,8,[]],[[3,0],[2,5],9,0]],[6,[7,0],[[2,0,5,3,6],[],[9,8,0,8,1],[1]]]]

[[5,2,2,[],[2,[],3]]]
[[1,2,[[8,3],2,[8,10,4,5,9],[7,0],3],3,[[],[10,5,8,9],6,6]],[2],[[1],[5,[4,7,10],8,7,9]],[8,4,[[],7],0,8],[]]

[[2,[],[4,[8,4,3,4,8],[9,2,2],[7,5,5,10]]]]
[[[[6],[0,10]]]]

[[3],[],[]]
[[[],[1,[],6,[2,6],2],4,[1]],[7,[0],7,[5,[4,6,4,6],5,[],[10,6]],0],[[9,[0,9,3,7],5],[[2,1,9,10,2],[4,6],0],[],8],[],[]]

[[[[10,7],[0,9,9,4],4,[3,8,7,10,4],7],[[7]]],[4,[9,[]]],[0,[4,[6,7],[10,8,3,4]],[7,6,[7,9,5,9,6],[6],[7,8,8]],4,1],[[[7,5,9,3],9],[[],[0,4,3],[10,10]]]]
[[[6,[6,0,0,1],2,4],7,4,[8,10,8,7,[0,9,0,10]],7],[10,1,0,6],[],[[],9,[4,[5,10,10,5,6],[6,1,5],8]],[]]

[[],[2,[[10,6],4,[6]],[[3,5,8],[4,8,9]],0,8]]
[[],[[6,9,[10,8,0,0]],[8]],[4,7,[[6],[4],[3],[]],2,[0,7,[6,6],[6,3,0,7],[5,4,3,3]]],[4,[[4,10,7],[],[9,10,6,3,10],9],0]]

[[4]]
[[[10,10,[1],[7,2,8,6,3]],[0,9,[2,1,7],2,[5,5,4]]],[[],0,[8,6,[10],7,[10,5,4]],5,6]]

[[],[],[1],[[[10,1,1,3,7],[],[9,8,2,10],[],[9,7,9]],[[6,6,7],6],2,5,[9,0,[1,1,3,10],[0,6,7,2]]]]
[[[10],[10,[4,5,8,6,3]]],[[[2,9],9,10],[],[9,7]],[],[[[8,4,3,10,5],9,7,3],4,10,4,5],[]]

[[],[[]]]
[[5,6,[[2,8,7,7,9],6,7,[6]]],[],[3,10,[9,[0,1,7],[9,3,0]],6,4],[10,[[],[1,0,6]],[],[[],[4,2,3,8,4]],8],[[],[4,8,[5,5,3],9],10,[10,4],3]]

[[5,[5,[3,10,4],1,[10,8,6,1,10]],[[9],[0,8,0],8,[7,6,4],[]]]]
[[[[6,7,5,3,3],[3,7,8]]],[5,7,[[],[8,3,0],[2,10],3,[5,3,10,1]],[[3,6,5],7],2],[[3]],[10],[[[9,9],5,1],7,[[5,0,1],2,[]],10,8]]

[[[[1,7],5,2,[4,8]],[[10,1],[1,6],1,[6,10,4,5,0],[0,0,6,4,3]],[],[]],[[],[],[1,[],[4,0,9,10]]],[0,[]],[2,3],[[3,[]]]]
[[8,[7,4,6]]]

[[5,10],[],[[5,8,6,1],[[0,10],1,[1,5,5,6]],8,[[10],[10,0,2,1,2],[10,2,10]]],[2,2,[],10],[0,10,2]]
[[0,10,[],[5,4,[5,7,8],2,6]]]

[[],[[]],[]]
[[[[8,1,7],[2]],[[],[9,3]]],[],[[1,[7,0,2,5],[10],[8,4],4],[[10],[1,4],7,[1,2,10,10,2]]],[[[9],[8,2,7,3]],[[],7,[1],6]],[[2,[6,3],10,6,[9,2,0,0]],6,9,4,[[3,6,5],[8,2,5,4]]]]

[[[[0]]],[[[],[1],[3,1,10]],[[],[],[4,4,5],8,4],[[0,5,0],4],[[0,1],1,6],7],[6,[]]]
[[3,[6,[7,3]],[[4,7],8,[10],7]],[6],[[[8,9,5],[1,0,4,2],1,[8,8]],[3,[1]],[7,7,[0,7],[5,10,1,9],3],[[0,9,4,10],5]]]

[9,1,3,2,3]
[9,1,3,2]
"""

protocol Node {
}

struct Day13 {
    
    
    
    class Day13List: Node {
        var children: [Node] = []
        init(children: [Node]) {
            self.children = children
        }
    }
    
    class Day13Num: Node {
        var value: Int
        init(value: Int) {
            self.value = value
        }
    }
    
    private func insert(arr: Day13List, node: Node, indexes: [Int], layer: Int, currentLayer: Int) {
        if layer == currentLayer {
            arr.children.append(node)
        } else {
            insert(arr: arr.children[indexes[currentLayer]] as! Day13List, node: node, indexes: indexes, layer: layer, currentLayer: currentLayer+1)
        }
    }
    
    private func printPacket(packet: Day13List) -> String {
        var str = "["
        for child in packet.children {
            if let num = child as? Day13Num {
                str+="\(num.value), "
            } else {
                let list = child as! Day13List
                str+=printPacket(packet: list)
            }
            
        }
        str+="],"
        return str
    }
    
    //If this function returns nil or true we have a good order
    //If this function returns false we have a bad order
    
    private func checkPackets(left: Day13List, right: Day13List) -> Bool? {
//        if left.children.isEmpty && right.children.isEmpty { return true }
        if left.children.count == 0 && right.children.count > 0 { return true }
        if right.children.count == 0 && left.children.count > 0 { return false }
        
        for (i, leftChild) in left.children.enumerated() {
            //Ran out of items in the right array
            if i > right.children.count-1 { return false }
            
            //See if both items are numbers
            if let leftNode = leftChild as? Day13Num, let rightNode = right.children[i] as? Day13Num {
                //If right is less than left the arrays are not in order
                if leftNode.value > rightNode.value {
                    return false
                }
                if leftNode.value < rightNode.value {
                    return true
                }
            }
            
            //If one item is a number and the other is an array we need to make that number its own array
            if let leftNode = leftChild as? Day13Num, let rightList = right.children[i] as? Day13List {
                left.children[i] = Day13List(children: [Day13Num(value: leftNode.value)])
                let newLeft = left.children[i] as! Day13List
                if let check = checkPackets(left: newLeft, right: rightList) {
                    return check
                }
            }
            if let leftList = leftChild as? Day13List, let rightNode = right.children[i] as? Day13Num {
                right.children[i] = Day13List(children: [Day13Num(value: rightNode.value)])
                let newRight = right.children[i] as! Day13List
                if let check = checkPackets(left: leftList, right: newRight) {
                    return check
                }
            }
            
            //If both items are lists
            if let leftList = leftChild as? Day13List, let rightList = right.children[i] as? Day13List {
                if let check = checkPackets(left: leftList, right: rightList) {
                    return check
                }
            }
        }
        return nil
    }
    
    func part1(input: String) -> Int {
        
        
        let pairs = input.components(separatedBy: "\n\n")
        var indices = 0
        
        for (index, pair) in pairs.enumerated() {
            let sets = pair.components(separatedBy: "\n")
            var first = Array(sets[0])
            var second = Array(sets[1])
            var layer = 0
            var subIndex = 0
            var indexes: [Int] = []
            var firstSet: Day13List = Day13List(children: [])
            var secondSet = Day13List(children: [])
            
            var i = 0
            while i < first.count {
                if i == 0 || i == first.count-1 {i+=1; continue}
                if first[i].isNumber {
                    if first[i+1].isNumber {
                        insert(arr: firstSet, node: Day13Num(value: Int(String(first[i]) + String(first[i+1]))!), indexes: indexes, layer: layer, currentLayer: 0)
                        subIndex+=1
                        i+=2
                    } else {
                        insert(arr: firstSet, node: Day13Num(value: Int(String(first[i]))!), indexes: indexes, layer: layer, currentLayer: 0)
                        subIndex+=1
                        i+=1
                    }
                } else if first[i] == "[" {
                    insert(arr: firstSet, node: Day13List(children: []), indexes: indexes, layer: layer, currentLayer: 0)
                    indexes.append(subIndex)
                    subIndex = 0
                    layer+=1
                    i+=1
                } else if first[i] == "]" {
                    subIndex = indexes[indexes.count-1]+1
                    indexes.remove(at: indexes.count-1)
                    layer-=1
                    i+=1
                } else {
                    i+=1
                }
            }
            
//            for (i, char) in first.enumerated() {
//                if i == 0 || i == first.count-1 {continue}
//                 if char.isNumber {
//                    insert(arr: firstSet, node: Day13Num(value: Int(String(char))!), indexes: indexes, layer: layer, currentLayer: 0)
//                    subIndex+=1
//                } else if char == "[" {
//                    insert(arr: firstSet, node: Day13List(children: []), indexes: indexes, layer: layer, currentLayer: 0)
//                    indexes.append(subIndex)
//                    subIndex = 0
//                    layer+=1
//                } else if char == "]" {
//                    subIndex = indexes[indexes.count-1]+1
//                    indexes.remove(at: indexes.count-1)
//                    layer-=1
//                }
//            }
            
            
            layer = 0
            subIndex = 0
            indexes = []
            
            i = 0
            while i < second.count {
                if i == 0 || i == second.count-1 {i+=1; continue}
                if second[i].isNumber {
                    if second[i+1].isNumber {
                        insert(arr: secondSet, node: Day13Num(value: Int(String(second[i]) + String(second[i+1]))!), indexes: indexes, layer: layer, currentLayer: 0)
                        subIndex+=1
                        i+=2
                    } else {
                        insert(arr: secondSet, node: Day13Num(value: Int(String(second[i]))!), indexes: indexes, layer: layer, currentLayer: 0)
                        subIndex+=1
                        i+=1
                    }
                } else if second[i] == "[" {
                    insert(arr: secondSet, node: Day13List(children: []), indexes: indexes, layer: layer, currentLayer: 0)
                    indexes.append(subIndex)
                    subIndex = 0
                    layer+=1
                    i+=1
                } else if second[i] == "]" {
                    subIndex = indexes[indexes.count-1]+1
                    indexes.remove(at: indexes.count-1)
                    layer-=1
                    i+=1
                } else {
                    //comma
                    
                    i+=1
                }
            }
            
//            for (i,char) in second.enumerated() {
//                if i == 0 || i == second.count-1 {continue}
//                if char.isNumber {
//                    insert(arr: secondSet, node: Day13Num(value: Int(String(char))!), indexes: indexes, layer: layer, currentLayer: 0)
//                    subIndex+=1
//                } else if char == "[" {
//                    insert(arr: secondSet, node: Day13List(children: []), indexes: indexes, layer: layer, currentLayer: 0)
//                    indexes.append(subIndex)
//                    subIndex = 0
//                    layer+=1
//                } else if char == "]" {
//                    subIndex = indexes[indexes.count-1]+1
//                    indexes.remove(at: indexes.count-1)
//                    layer-=1
//                }
//            }
            
//            print(printPacket(packet: firstSet))
//            print(printPacket(packet: secondSet))
            
            if let check = checkPackets(left: firstSet, right: secondSet) {
                if check {
                    print(index+1)
                    print(printPacket(packet: firstSet))
                    print(printPacket(packet: secondSet))
                    indices+=(index+1)
                }
            } else {
                print(index+1)
                print(printPacket(packet: firstSet))
                print(printPacket(packet: secondSet))
                indices+=(index+1)
            }
            
            
//            var firstSet: [Int] = []
//            var secondSet: [Int] = []
//
//            for char in first {
//                if char.isNumber {
//                    firstSet.append(Int(String(char))!)
//                }
//            }
//
//            for char in second {
//                if char.isNumber {
//                    secondSet.append(Int(String(char))!)
//                }
//            }
//
//            var worked = true
//
//            for (i, num) in firstSet.enumerated() {
//                if i > secondSet.count-1 {worked = false; break}
//                if num > secondSet[i] {
//                    worked = false
//                }
//            }
//
//            if worked {
//                print(index+1)
//                indices+=(index+1)
//            }
            
            
//            var i = 0
//            var j = 0
//
//            var first = Array(sets[0])
//            var second = Array(sets[1])
//
//            while i < first.count && j < second.count {
////                print("\(i) \(j)")
//                if (first[i] == "[" && second[j] == "[") || (first[i] == "]" && second[j] == "]") || (first[i] == "," && second[j] == ",") {
//                    i+=1
//                    j+=1
//                    continue
//                }
//
//                if let firstNum = Int(String(first[i])), let secondNum = Int(String(second[j])) {
//                    if firstNum < secondNum {
//                        i = first.count
//                        j = second.count
//                        break
//                    } else if firstNum == secondNum {
//                        i+=1
//                        j+=1
//                        continue
//                    } else {
//                        break
//                    }
//                }
//
//                if first[i] == "," {
//                    i+=1
//                    continue
//                }
//
//                if second[j] == "," {
//                    j+=1
//                    continue
//                }
//
//                if let _ = Int(String(first[i])), second[j] == "[" {
//                    first.insert("[", at: i)
//                    first.insert("]", at: i+2)
//                    continue
//                }
//
//                if let _ = Int(String(second[j])), first[i] == "[" {
//                    second.insert("[", at: i)
//                    second.insert("]", at: i+2)
//                    continue
//                }
//
//                if let _ = Int(String(second[j])), first[i] == "]" {
//                    //We need to move on from the second list. First list ran out of items
////                    while j < second.count && second[j] != "]" {
////
////                        j+=1
////                    }
////                    continue
//                    // New theory, first list ran out of items so the order is considered correct
//                    i = first.count
//                    j = second.count
//                    break
//                }
//
//                if let _ = Int(String(first[i])), second[j] == "]" {
////                    i = first.count
//                    //Right list ran out of items. So not in order
//                    break
//                }
//
//                if second[j] == "]" {
//                    i = first.count
//                    break
//                }
//
//                if first[i] == "]" && second[j] == "[" {
//                    //We need to move on from the second list. First list ran out of items
////                    while j < second.count && second[j] != "]" {
////                        j+=1
////                    }
////                    continue
//                    i = first.count
//                    j = second.count
//                    break
//                }
//            }
//
//            if i == first.count && j == second.count {
//                print(index+1)
//                indices+=(index+1)
//            }
        }
        
        return indices
        
    }
}
