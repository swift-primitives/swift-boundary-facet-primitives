// Boundary.Edge+Facet.swift
// Lossless projection between Boundary.Edge and its Facet<2> carrier.

public import Boundary_Primitives
public import Facet_Primitives

extension Boundary.Edge {
    /// The 2D box facet this edge lies on: top = +Y, right = +X, bottom = −Y, left = −X
    /// (axis 0 = X = primary, axis 1 = Y = secondary).
    @inlinable
    public var facet: Facet<2> {
        switch self {
        case .top: Facet(axis: .secondary, direction: .positive)
        case .left: Facet(axis: .primary, direction: .negative)
        case .bottom: Facet(axis: .secondary, direction: .negative)
        case .right: Facet(axis: .primary, direction: .positive)
        }
    }

    /// The box edge corresponding to a 2D facet.
    @inlinable
    public init(facet: Facet<2>) {
        switch (facet.axis.underlying, facet.direction) {
        case (1, .positive): self = .top
        case (0, .negative): self = .left
        case (1, .negative): self = .bottom
        default: self = .right  // (0, .positive)
        }
    }
}
