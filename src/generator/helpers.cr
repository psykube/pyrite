module Generator::Helpers
  private def crystalize_name(name : String)
    name.gsub(/JSON/, "Json").gsub(/UUID/, "Uuid").gsub(/APIV3/, "Apiv3")
      .gsub(/CIDR/, "Cidr").gsub(/CPU/, "Cpu").gsub(/CSI/, "Csi").gsub(/TLS/, "Tls")
      .gsub(/[A-Z]{2,3}/, &.capitalize).underscore.lchop("_").lchop("$")
      .gsub('-', '_')
  end

  private def convert_type(kind : String, required = false)
    t = case kind
        when "object"
          "Hash(String, String)"
        when "boolean"
          "Bool"
        when "integer", "number"
          "Int32"
        when "resource"
          "Kubernetes::Object"
        else
          kind.to_s.camelcase
        end
    t += " | Nil" unless required
    t
  end

  private def convert_type(arg : FunctionArgument)
    t = definition_ref(arg.ref) ||
        convert_type(arg.type.to_s, true)
    t += " | Nil" unless arg.required?
    t
  end

  private def convert_type(param : Swagger::Path::Parameter)
    t = definition_ref(param.schema.try(&._ref)) ||
        convert_type(param.type.to_s, true)
    t += " | Nil" unless param.required
    t
  end

  private def convert_type(property : Swagger::Definition::Property, required : Bool = true)
    t = if ref = definition_ref(property._ref)
          ref
        elsif property.type.to_s == "array"
          "Array(#{convert_type(property.items.as(Swagger::Definition::Property))})"
        else
          convert_type(property.type.to_s, true)
        end
    t += " | Nil" unless required
    t
  end
end