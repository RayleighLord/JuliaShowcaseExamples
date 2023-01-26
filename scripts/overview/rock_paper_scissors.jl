abstract type Shape end

struct Rock <: Shape end
struct Paper <: Shape end
struct Scissors <: Shape end

const rock = Rock()
const paper = Paper()
const scissors = Scissors()

Base.show(io::IO, ::Rock) = print(io, "rock")
Base.show(io::IO, ::Paper) = print(io, "paper")
Base.show(io::IO, ::Scissors) = print(io, "scissors")

@enum Player Tie = 0 One = 1 Two = 2

struct Winner
    player::Player
    shape::Shape
end

function Base.show(io::IO, w::Winner)
    if w.player == Tie
        str = print(io, "Players tied with $(w.shape)")
    else
        str = print(io, "Player $(w.player) won with $(w.shape)!")
    end
end

function Base.adjoint(w::Winner)
    if w.player == Tie
        w
    elseif w.player == One
        Winner(Two, w.shape)
    else
        Winner(One, w.shape)
    end
end

play(::Paper, ::Rock) = Winner(One, paper)
play(::Rock, ::Scissors) = Winner(One, rock)
play(::Scissors, ::Paper) = Winner(One, scissors)
play(a::T, ::T) where {T<:Shape} = Winner(Tie, a)
play(a::T1, b::T2) where {T1<:Shape,T2<:Shape} = (play(b, a))'

instanceof(x::Type) = x.instance
Base.rand(::Type{Shape}) = rand(instanceof.(subtypes(Shape)))

function play_game()
    a, b = rand(Shape), rand(Shape)
    println("Player 1 chose $(a), Player 2 chose $(b)")
    play(a, b)
end

play_game()
