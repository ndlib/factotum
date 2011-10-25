module SimpleForm
  # Class for the wrapper of a collection of radio/check boxes, defaulting to none
  mattr_accessor :collection_wrapper_class
  @@collection_wrapper_class = nil
end


# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  # Components used by the form builder to generate a complete input. You can remove
  # any of them, change the order, or even add your own components to the stack.
  # config.components = [ :placeholder, :label_input, :hint, :error ]

  # Default tag used on hints.
  # config.hint_tag = :span

  # CSS class to add to all hint tags.
  # config.hint_class = :hint

  # CSS class used on errors.
  # config.error_class = :error

  # Default tag used on errors.
  # config.error_tag = :span

  # Method used to tidy up errors.
  # config.error_method = :first

  # Default tag used for error notification helper.
  # config.error_notification_tag = :p

  # CSS class to add for error notification helper.
  # config.error_notification_class = :error_notification

  # ID to add for error notification helper.
  # config.error_notification_id = nil

  # You can wrap all inputs in a pre-defined tag.
  # config.wrapper_tag = :div

  # CSS class to add to all wrapper tags.
  # config.wrapper_class = :input

  # CSS class to add to the wrapper if the field has errors.
  # config.wrapper_error_class = :field_with_errors

  # You can wrap a collection of radio/check boxes in a pre-defined tag, defaulting to none.
  # config.collection_wrapper_tag = :div
  
  # You can wrap each item in a collection of radio/check boxes with a tag, defaulting to span.
  # config.item_wrapper_tag = :span

  # Series of attempts to detect a default label method for collection.
  # config.collection_label_methods = [ :to_label, :name, :title, :to_s ]

  # Series of attempts to detect a default value method for collection.
  # config.collection_value_methods = [ :id, :to_s ]

  # How the label text should be generated altogether with the required text.
  # config.label_text = lambda { |label, required| "#{required} #{label}" }

  # You can define the class to use on all labels. Default is nil.
  # config.label_class = nil

  # You can define the class to use on all forms. Default is simple_form.
  # config.form_class = :simple_form

  # Whether attributes are required by default (or not). Default is true.
  # config.required_by_default = true

  # Tell browsers whether to use default HTML5 validations (novalidate option).
  # Default is enabled.
  # config.browser_validations = true

  # Determines whether HTML5 types (:email, :url, :search, :tel) and attributes
  # (e.g. required) are used or not. True by default.
  # Having this on in non-HTML5 compliant sites can cause odd behavior in
  # HTML5-aware browsers such as Chrome.
  # config.html5 = true

  # Custom mappings for input types. This should be a hash containing a regexp
  # to match as key, and the input type that will be used when the field name
  # matches the regexp as value.
  # config.input_mappings = { /count/ => :integer }

  # Collection of methods to detect if a file type was given.
  # config.file_methods = [ :mounted_as, :file?, :public_filename ]

  # Default priority for time_zone inputs.
  # config.time_zone_priority = nil

  # Default priority for country inputs.
  # config.country_priority = nil

  # Default size for text inputs.
  # config.default_input_size = 50

  # When false, do not use translations for labels, hints or placeholders.
  # config.translate = true
  
  # Customizations for Bootstrap
  
  # Custom config option added by Jaron
  config.collection_wrapper_class = "inputs-list"
  
  config.components = [ :bootstrap ]
  config.form_class = nil
  config.wrapper_tag = :div
  config.wrapper_class = 'clearfix'
  config.wrapper_error_class = 'error'
  config.error_class = 'help-block'
  config.hint_class = 'help-block'
  config.collection_wrapper_tag = :ul
  config.item_wrapper_tag = :li
end

module SimpleForm
  
  module Components
    module LabelInput
      
      # Formats inputs in such a way that they're friendly with Bootstrapper's styling
      def bootstrap
        content = "".html_safe
        inner_content = "".html_safe
        [:placeholder, :label].each do |component|
          if options[component] != false && rendered = self.send(component)
            content.safe_concat rendered.to_s
          end
        end
        [:input, :after_input, :error, :hint].each do |component|
          if options[component] != false && rendered = self.send(component)
            inner_content.safe_concat rendered.to_s
          end
        end
        content + template.content_tag(:div, inner_content, :class => "input")
      end
      
      def after_input
        options[:after_input]
      end
    end
  end
  
  module ActionViewExtensions
    module Builder
      def collection_radio(attribute, collection, value_method, text_method, options={}, html_options={})
        render_collection(
          attribute, collection, value_method, text_method, options, html_options
        ) do |value, text, default_html_options|
          label(sanitize_attribute_name(attribute, value), radio_button(attribute, value, default_html_options) + " " + text, :class => "collection_radio")
        end
      end
      
      def collection_check_boxes(attribute, collection, value_method, text_method, options={}, html_options={})
        render_collection(
          attribute, collection, value_method, text_method, options, html_options
        ) do |value, text, default_html_options|
          default_html_options[:multiple] = true
            label(sanitize_attribute_name(attribute, value), check_box(attribute, default_html_options, value, '') + " " + text, :class => "collection_check_boxes")
        end
      end
      
      def render_collection(attribute, collection, value_method, text_method, options={}, html_options={}) #:nodoc:
        collection_wrapper_tag = options.has_key?(:collection_wrapper_tag) ? options[:collection_wrapper_tag] : SimpleForm.collection_wrapper_tag
        collection_wrapper_class = options.has_key?(:collection_wrapper_class) ? options[:collection_wrapper_class] : SimpleForm.collection_wrapper_class
        item_wrapper_tag = options.has_key?(:item_wrapper_tag) ? options[:item_wrapper_tag] : SimpleForm.item_wrapper_tag

        rendered_collection = collection.map do |item|
          value = value_for_collection(item, value_method)
          text  = value_for_collection(item, text_method)
          default_html_options = default_html_options_for_collection(item, value, options, html_options)

          rendered_item = yield value, text, default_html_options

          item_wrapper_tag ? @template.content_tag(item_wrapper_tag, rendered_item) : rendered_item
        end.join.html_safe

        collection_wrapper_tag ? @template.content_tag(collection_wrapper_tag, rendered_collection, {:class => collection_wrapper_class}) : rendered_collection
      end
    end
  end
end