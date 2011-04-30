module Slim
  module Grammar
    extend Temple::Grammar

    Expression <<
      [:slim, :control, String, 'Expression']        |
      [:slim, :condcomment, String, 'Expression']    |
      [:slim, :output, Bool, String, 'Expression'] |
      [:slim, :text, String]                         |
      [:slim, :embedded, String, 'Expression']       |
      [:slim, :directive, Value('doctype'), String]  |
      [:html, :attrs, 'SlimAttr*']
    SlimAttr <<
      [:slim, :attr, String, 'Bool', String] |
      'HTMLAttr'
  end
end