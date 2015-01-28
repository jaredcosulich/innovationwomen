# Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
unless Rails.env.test?
  Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
end