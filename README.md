# DATABASE DESIGN

## article
belongs_to :category
- title              :string
- content            :text
- category_id        :reference

# category
has_many :articles
- name               :string
- articles_count     :integer

# work
belongs_to :work_category
- title              :string
- description        :text
- detail             :text
- work_category_id   :reference


# work_category
has_many :works
- name               :string
