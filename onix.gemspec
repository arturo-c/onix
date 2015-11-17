# -*- encoding: utf-8 -*-
# stub: onix 0.9.5 ruby lib

Gem::Specification.new do |s|
  s.name = "onix"
  s.version = "0.9.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James Healy"]
  s.date = "2015-11-17"
  s.description = "A convient mapping between ruby objects and the ONIX XML specification"
  s.email = ["jimmy@deefa.com"]
  s.files = ["CHANGELOG", "README.markdown", "TODO", "dtd/2.1r3", "dtd/2.1r3/iso-amsa.ent", "dtd/2.1r3/iso-amsb.ent", "dtd/2.1r3/iso-amsc.ent", "dtd/2.1r3/iso-amsn.ent", "dtd/2.1r3/iso-amso.ent", "dtd/2.1r3/iso-amsr.ent", "dtd/2.1r3/iso-box.ent", "dtd/2.1r3/iso-cyr1.ent", "dtd/2.1r3/iso-cyr2.ent", "dtd/2.1r3/iso-dia.ent", "dtd/2.1r3/iso-grk3.ent", "dtd/2.1r3/iso-lat1.ent", "dtd/2.1r3/iso-lat2.ent", "dtd/2.1r3/iso-mfrk.ent", "dtd/2.1r3/iso-mopf.ent", "dtd/2.1r3/iso-mscr.ent", "dtd/2.1r3/iso-num.ent", "dtd/2.1r3/iso-num.old.ent", "dtd/2.1r3/iso-pub.ent", "dtd/2.1r3/iso-tech.ent", "dtd/2.1r3/onix-international.dtd", "dtd/2.1r3/onix-xhtml.elt", "dtd/2.1r3/reference.elt", "dtd/2.1r3/xhtml-special.ent", "dtd/2.1r3/xhtml-symbol.ent", "lib/onix", "lib/onix.rb", "lib/onix/addressee_identifier.rb", "lib/onix/apa_product.rb", "lib/onix/audience_range.rb", "lib/onix/code_list_extractor.rb", "lib/onix/contributor.rb", "lib/onix/discount_coded.rb", "lib/onix/header.rb", "lib/onix/imprint.rb", "lib/onix/language.rb", "lib/onix/lists.rb", "lib/onix/market_representation.rb", "lib/onix/measure.rb", "lib/onix/media_file.rb", "lib/onix/normaliser.rb", "lib/onix/other_text.rb", "lib/onix/price.rb", "lib/onix/product.rb", "lib/onix/product_identifier.rb", "lib/onix/publisher.rb", "lib/onix/reader.rb", "lib/onix/sales_restriction.rb", "lib/onix/sales_rights.rb", "lib/onix/sender_identifier.rb", "lib/onix/series.rb", "lib/onix/series_identifier.rb", "lib/onix/simple_product.rb", "lib/onix/stock.rb", "lib/onix/subject.rb", "lib/onix/supply_detail.rb", "lib/onix/title.rb", "lib/onix/version.rb", "lib/onix/website.rb", "lib/onix/writer.rb", "spec/addressee_identifier_spec.rb", "spec/apa_product_spec.rb", "spec/audience_range_spec.rb", "spec/contributor_spec.rb", "spec/discount_coded_spec.rb", "spec/header_spec.rb", "spec/imprint_spec.rb", "spec/language_spec.rb", "spec/lists_spec.rb", "spec/market_representation_spec.rb", "spec/measure_spec.rb", "spec/media_file_spec.rb", "spec/normaliser_spec.rb", "spec/other_text_spec.rb", "spec/price_spec.rb", "spec/product_identifier_spec.rb", "spec/product_spec.rb", "spec/publisher_spec.rb", "spec/reader_spec.rb", "spec/sales_restriction_spec.rb", "spec/sender_identifier.rb", "spec/series_identifier_spec.rb", "spec/series_spec.rb", "spec/spec_helper.rb", "spec/stock_spec.rb", "spec/subject_spec.rb", "spec/supply_detail_spec.rb", "spec/title_spec.rb", "spec/website_spec.rb", "spec/writer_spec.rb", "support/codes", "support/codes/001.tsv", "support/codes/002.tsv", "support/codes/003.tsv", "support/codes/005.tsv", "support/codes/006.tsv", "support/codes/007.tsv", "support/codes/008.tsv", "support/codes/009.tsv", "support/codes/010.tsv", "support/codes/011.tsv", "support/codes/012.tsv", "support/codes/013.tsv", "support/codes/014.tsv", "support/codes/015.tsv", "support/codes/016.tsv", "support/codes/017.tsv", "support/codes/018.tsv", "support/codes/019.tsv", "support/codes/020.tsv", "support/codes/021.tsv", "support/codes/022.tsv", "support/codes/023.tsv", "support/codes/024.tsv", "support/codes/025.tsv", "support/codes/026.tsv", "support/codes/027.tsv", "support/codes/028.tsv", "support/codes/029.tsv", "support/codes/030.tsv", "support/codes/031.tsv", "support/codes/032.tsv", "support/codes/033.tsv", "support/codes/034.tsv", "support/codes/035.tsv", "support/codes/036.tsv", "support/codes/037.tsv", "support/codes/038.tsv", "support/codes/039.tsv", "support/codes/040.tsv", "support/codes/041.tsv", "support/codes/042.tsv", "support/codes/043.tsv", "support/codes/044.tsv", "support/codes/045.tsv", "support/codes/046.tsv", "support/codes/047.tsv", "support/codes/048.tsv", "support/codes/049.tsv", "support/codes/050.tsv", "support/codes/051.tsv", "support/codes/052.tsv", "support/codes/053.tsv", "support/codes/054.tsv", "support/codes/055.tsv", "support/codes/056.tsv", "support/codes/057.tsv", "support/codes/058.tsv", "support/codes/059.tsv", "support/codes/060.tsv", "support/codes/061.tsv", "support/codes/062.tsv", "support/codes/063.tsv", "support/codes/064.tsv", "support/codes/065.tsv", "support/codes/066.tsv", "support/codes/067.tsv", "support/codes/068.tsv", "support/codes/069.tsv", "support/codes/070.tsv", "support/codes/071.tsv", "support/codes/072.tsv", "support/codes/073.tsv", "support/codes/074.tsv", "support/codes/075.tsv", "support/codes/076.tsv", "support/codes/077.tsv", "support/codes/078.tsv", "support/codes/079.tsv", "support/codes/080.tsv", "support/codes/081.tsv", "support/codes/082.tsv", "support/codes/083.tsv", "support/codes/084.tsv", "support/codes/085.tsv", "support/codes/086.tsv", "support/codes/087.tsv", "support/codes/088.tsv", "support/codes/089.tsv", "support/codes/090.tsv", "support/codes/091.tsv", "support/codes/092.tsv", "support/codes/093.tsv", "support/codes/094.tsv", "support/codes/095.tsv", "support/codes/096.tsv", "support/codes/097.tsv", "support/codes/098.tsv", "support/codes/099.tsv", "support/codes/100.tsv", "support/codes/101.tsv", "support/codes/102.tsv", "support/codes/121.tsv", "support/codes/138.tsv", "support/codes/139.tsv", "support/codes/140.tsv", "support/codes/141.tsv", "support/codes/142.tsv", "support/codes/143.tsv", "support/codes/144.tsv", "support/codes/145.tsv", "support/codes/146.tsv", "support/codes/147.tsv", "support/codes/148.tsv", "support/codes/149.tsv", "support/codes/150.tsv", "support/codes/151.tsv", "support/codes/152.tsv", "support/codes/153.tsv", "support/codes/154.tsv", "support/codes/155.tsv", "support/codes/156.tsv", "support/codes/157.tsv", "support/codes/158.tsv", "support/codes/159.tsv", "support/codes/160.tsv", "support/codes/161.tsv", "support/codes/162.tsv", "support/codes/163.tsv", "support/codes/164.tsv", "support/codes/165.tsv", "support/codes/166.tsv", "support/codes/167.tsv", "support/codes/168.tsv", "support/codes/169.tsv", "support/codes/170.tsv", "support/codes/171.tsv", "support/codes/172.tsv", "support/codes/173.tsv", "support/codes/174.tsv", "support/codes/175.tsv", "support/codes/176.tsv", "support/codes/177.tsv", "support/codes/178.tsv", "support/entities.txt", "support/extract.rb", "support/switch-onix-2.1-short-to-reference.xsl", "support/switch-onix-tagnames-1.1.xsl", "support/switch-onix-tagnames-2.0.xsl"]
  s.homepage = "http://github.com/yob/onix"
  s.rdoc_options = ["--title", "ONIX - Working with the ONIX XML spec", "--line-numbers"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9")
  s.rubygems_version = "2.4.7"
  s.summary = "A convient mapping between ruby objects and the ONIX XML specification"
  s.test_files = ["spec/media_file_spec.rb", "spec/apa_product_spec.rb", "spec/market_representation_spec.rb", "spec/reader_spec.rb", "spec/series_identifier_spec.rb", "spec/title_spec.rb", "spec/publisher_spec.rb", "spec/imprint_spec.rb", "spec/writer_spec.rb", "spec/lists_spec.rb", "spec/language_spec.rb", "spec/normaliser_spec.rb", "spec/measure_spec.rb", "spec/contributor_spec.rb", "spec/sender_identifier.rb", "spec/series_spec.rb", "spec/stock_spec.rb", "spec/supply_detail_spec.rb", "spec/sales_restriction_spec.rb", "spec/website_spec.rb", "spec/product_identifier_spec.rb", "spec/audience_range_spec.rb", "spec/product_spec.rb", "spec/other_text_spec.rb", "spec/header_spec.rb", "spec/discount_coded_spec.rb", "spec/addressee_identifier_spec.rb", "spec/price_spec.rb", "spec/spec_helper.rb", "spec/subject_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.5"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_runtime_dependency(%q<representable>, [">= 0"])
      s.add_runtime_dependency(%q<virtus>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.12"])
      s.add_development_dependency(%q<rspec-given>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.5"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_dependency(%q<representable>, [">= 0"])
      s.add_dependency(%q<virtus>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.12"])
      s.add_dependency(%q<rspec-given>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.5"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4"])
    s.add_dependency(%q<representable>, [">= 0"])
    s.add_dependency(%q<virtus>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.12"])
    s.add_dependency(%q<rspec-given>, [">= 0"])
  end
end
