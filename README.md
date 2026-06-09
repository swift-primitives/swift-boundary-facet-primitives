# swift-boundary-facet-primitives

The lossless projection between `Boundary.Edge` and its `Facet<2>` carrier — a per-carrier
bridge ([MOD-014]) adding `.facet` and `init(facet:)` so the bare `Boundary.Edge` enum carries
no `Facet` dependency.

```swift
import Boundary_Facet_Primitives

Boundary.Edge.top.facet           // Facet<2>(axis: .secondary, direction: .positive)
Boundary.Edge(facet: someFacet)   // the matching edge
```

## License

Apache License 2.0. See [LICENSE](LICENSE.md).
