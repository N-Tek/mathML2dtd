cd /etc/xml/
cp --archive catalog catalog.mathml2_orig
sed_appended_text='\
  <!-- Added when "mathML2dtd 1.0.0" package is installed --> \
  <nextCatalog catalog="file:///usr/share/xml/schema/w3c/mathml2/catalog_mathML2.xml" />'
sed -i "\$i \ $sed_appended_text" catalog
