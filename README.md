# Auto enums for RailsAdmin
Provide enum fields for the fields that really need them.
This happens automatically, so if you want to handle a serialized array field as an enum, just do in your model something like

```ruby
serialize :allowed_attachments, Array

def allowed_attachments_enum
  %w(jpg png gif)
end
```

# Setup
Just append `'gem rails_admin-auto-enum'` to your `Gemfile`.
