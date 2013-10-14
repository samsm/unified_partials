module UnifiedPartialHelper
  def attribute_display(object, attribute, options={})
    with = options[:with] || :default
    attribute_value = object.send(attribute)
    layout = options[:layout] || "attribute_presentation/layout"
    locals = {
               object: object,
               attribute: attribute,
               value: attribute_value,
               label: attribute_label(attribute)
              }.merge(options.fetch(:locals, {}))
    unless options[:display_blank] || !attribute_value
      render partial: "attribute_presentation/#{with}",
             locals: locals,
             layout: layout
    end
  end

  def attribute_label(name, options = {})
    render partial: "attribute_presentation/label",
           locals:  {name: name}
  end
end