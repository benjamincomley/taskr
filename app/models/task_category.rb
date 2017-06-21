class TaskCategory < ApplicationRecord
  has_many :tasks
  validates_presence_of :name

  has_attached_file :category_image,
                    styles: { medium: '600x600#', small: '350x350>' },
                    default_url: "/images/:style/missing.png",
                    storage: :s3,
                    s3_credentials: {
                        bucket: ENV['AWS_BUCKET'],
                        access_key_id: ENV['AWS_ACCESS_KEY'],
                        secret_access_key: ENV['AWS_SECRET_KEY'],
                        s3_region: ENV['AWS_REGION'],
                        url: ':s3_domain_url',
                        s3_host_name: "s3-#{ENV['AWS_REGION']}.amazonaws.com"
                    }
  validates_attachment_content_type :task_image, content_type: /\Aimage\/.*\z/
end
