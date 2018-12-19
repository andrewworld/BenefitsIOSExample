//  This file was automatically generated and should not be edited.

import Apollo

public final class GetCityQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetCity($id: ID!) {\n  getCity(id: $id) {\n    __typename\n    categories {\n      __typename\n      id\n      name\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getCity", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(GetCity.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getCity: GetCity) {
      self.init(unsafeResultMap: ["__typename": "Query", "getCity": getCity.resultMap])
    }

    public var getCity: GetCity {
      get {
        return GetCity(unsafeResultMap: resultMap["getCity"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getCity")
      }
    }

    public struct GetCity: GraphQLSelectionSet {
      public static let possibleTypes = ["City"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(categories: [Category]) {
        self.init(unsafeResultMap: ["__typename": "City", "categories": categories.map { (value: Category) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var categories: [Category] {
        get {
          return (resultMap["categories"] as! [ResultMap]).map { (value: ResultMap) -> Category in Category(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Category) -> ResultMap in value.resultMap }, forKey: "categories")
        }
      }

      public struct Category: GraphQLSelectionSet {
        public static let possibleTypes = ["Category"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String) {
          self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class GetCategoryQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetCategory($id: ID!) {\n  getCategory(id: $id) {\n    __typename\n    id\n    name\n    benefits {\n      __typename\n      id\n      discount\n      name\n      description\n      working\n      parentCategory {\n        __typename\n        id\n        name\n      }\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getCategory", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(GetCategory.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getCategory: GetCategory) {
      self.init(unsafeResultMap: ["__typename": "Query", "getCategory": getCategory.resultMap])
    }

    public var getCategory: GetCategory {
      get {
        return GetCategory(unsafeResultMap: resultMap["getCategory"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getCategory")
      }
    }

    public struct GetCategory: GraphQLSelectionSet {
      public static let possibleTypes = ["Category"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("benefits", type: .nonNull(.list(.nonNull(.object(Benefit.selections))))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, benefits: [Benefit]) {
        self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name, "benefits": benefits.map { (value: Benefit) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var benefits: [Benefit] {
        get {
          return (resultMap["benefits"] as! [ResultMap]).map { (value: ResultMap) -> Benefit in Benefit(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Benefit) -> ResultMap in value.resultMap }, forKey: "benefits")
        }
      }

      public struct Benefit: GraphQLSelectionSet {
        public static let possibleTypes = ["Benefit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("discount", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("working", type: .nonNull(.scalar(String.self))),
          GraphQLField("parentCategory", type: .nonNull(.object(ParentCategory.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, discount: String, name: String, description: String, working: String, parentCategory: ParentCategory) {
          self.init(unsafeResultMap: ["__typename": "Benefit", "id": id, "discount": discount, "name": name, "description": description, "working": working, "parentCategory": parentCategory.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var discount: String {
          get {
            return resultMap["discount"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "discount")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return resultMap["description"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var working: String {
          get {
            return resultMap["working"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "working")
          }
        }

        public var parentCategory: ParentCategory {
          get {
            return ParentCategory(unsafeResultMap: resultMap["parentCategory"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "parentCategory")
          }
        }

        public struct ParentCategory: GraphQLSelectionSet {
          public static let possibleTypes = ["Category"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, name: String) {
            self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class GetBenefitsQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetBenefits {\n  getBenefits {\n    __typename\n    name\n    description\n    discount\n    parentCategory {\n      __typename\n      name\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getBenefits", type: .nonNull(.list(.nonNull(.object(GetBenefit.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getBenefits: [GetBenefit]) {
      self.init(unsafeResultMap: ["__typename": "Query", "getBenefits": getBenefits.map { (value: GetBenefit) -> ResultMap in value.resultMap }])
    }

    public var getBenefits: [GetBenefit] {
      get {
        return (resultMap["getBenefits"] as! [ResultMap]).map { (value: ResultMap) -> GetBenefit in GetBenefit(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: GetBenefit) -> ResultMap in value.resultMap }, forKey: "getBenefits")
      }
    }

    public struct GetBenefit: GraphQLSelectionSet {
      public static let possibleTypes = ["Benefit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("discount", type: .nonNull(.scalar(String.self))),
        GraphQLField("parentCategory", type: .nonNull(.object(ParentCategory.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, description: String, discount: String, parentCategory: ParentCategory) {
        self.init(unsafeResultMap: ["__typename": "Benefit", "name": name, "description": description, "discount": discount, "parentCategory": parentCategory.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var discount: String {
        get {
          return resultMap["discount"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "discount")
        }
      }

      public var parentCategory: ParentCategory {
        get {
          return ParentCategory(unsafeResultMap: resultMap["parentCategory"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "parentCategory")
        }
      }

      public struct ParentCategory: GraphQLSelectionSet {
        public static let possibleTypes = ["Category"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Category", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class GetLocationsQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetLocations {\n  getBenefits {\n    __typename\n    name\n    locations {\n      __typename\n      lng\n      lat\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getBenefits", type: .nonNull(.list(.nonNull(.object(GetBenefit.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getBenefits: [GetBenefit]) {
      self.init(unsafeResultMap: ["__typename": "Query", "getBenefits": getBenefits.map { (value: GetBenefit) -> ResultMap in value.resultMap }])
    }

    public var getBenefits: [GetBenefit] {
      get {
        return (resultMap["getBenefits"] as! [ResultMap]).map { (value: ResultMap) -> GetBenefit in GetBenefit(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: GetBenefit) -> ResultMap in value.resultMap }, forKey: "getBenefits")
      }
    }

    public struct GetBenefit: GraphQLSelectionSet {
      public static let possibleTypes = ["Benefit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("locations", type: .nonNull(.list(.nonNull(.object(Location.selections))))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, locations: [Location]) {
        self.init(unsafeResultMap: ["__typename": "Benefit", "name": name, "locations": locations.map { (value: Location) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var locations: [Location] {
        get {
          return (resultMap["locations"] as! [ResultMap]).map { (value: ResultMap) -> Location in Location(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Location) -> ResultMap in value.resultMap }, forKey: "locations")
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("lng", type: .nonNull(.scalar(Double.self))),
          GraphQLField("lat", type: .nonNull(.scalar(Double.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(lng: Double, lat: Double) {
          self.init(unsafeResultMap: ["__typename": "Location", "lng": lng, "lat": lat])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var lng: Double {
          get {
            return resultMap["lng"]! as! Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "lng")
          }
        }

        public var lat: Double {
          get {
            return resultMap["lat"]! as! Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "lat")
          }
        }
      }
    }
  }
}