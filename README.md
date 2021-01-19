# GSS-Cogs fork os ontology-visualizer

## Installation
```bash
git clone https://github.com/GSS-Cogs/ontology-visualization.git
./install.sh
```

## Usage
``` bash
% visualise_rdf <sparql_query_file> <img_type>
# e.g.
% visualise_rdf Get\ Most\ Dataset\ Metadata.sparql svg
```

The script will automatically execute the `<sparql_query_file>` and output a graph of type `<img_type>`. An output image file named `<sparql_query_file>.<img_type>` will be created, e.g. 'Get Most Dataset Metadata.sparql.svg'.

### N.B.

Valid `<img_type>` inputs include `svg` and `png`.

The `<sparql_query_file>` **MUST** use the `CONSTRUCT {} WHERE {}` SPARQL syntax to construct valid RDF which represents what is to be visualised.

### Overriding Prefixes

```bash
% visualise_rdf <sparql_query_file> <img_type> -n prefix1=http://some.uri,prefix2=http://some.other.uri
```

This allows you to specify exactly which prefixes you want to use to shorten URIs which are too long in your visualisation.
