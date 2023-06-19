#!/usr/bin/python
# -*- coding: utf-8 -*-


import sys
import re


def extract_colum(file):
	print '#accession\tstrain\thost\tcollection_date\tgeographic_location\tserotype\tplasmids\tclade'
	with open(file, 'r') as f:
		contents = re.split('\n\n+', f.read())
		for content in contents:
			if content == '':
				continue

			if re.search('Accession: (\w+)', content):
				accession = re.search('Accession: (\w+)', content).group(1)

				if re.search('\/strain=', content):
					strain_name = re.search('\/strain=\"(.*)\"', content).group(1)
				elif re.search('\/isolate=', content):
					strain_name = re.search('\/isolate=\"(.*)\"', content).group(1)
				else:
					strain_name = 'NA'

				if re.search('\/host=', content):
					host = re.search('\/host=\"(.*)\"', content).group(1)
				elif re.search('\/isolation source.*=', content):
					host = re.search('\/isolation source.*=\"(.*)\"', content).group(1)
				else:
					host = 'NA'

				if re.search('\/collection date.*=', content):
					collection_date = re.search('\/collection date.*=\"(.*)\"', content).group(1)
				else:
					collection_date = 'NA'

				if re.search('\/geographic location.*=', content):
					geographic_location = re.search('\/geographic location.*=\"(.*)\"', content).group(1)
				else:
					geographic_location = 'NA'

				if re.search('\/host disease.*=', content):
					host_disease = re.search('\/host disease.*=\"(.*)\"', content).group(1)
				else:
					host_disease = 'NA'

				if re.search('\/serotype.*=', content):
					serotype = re.search('\/serotype.*=\"(.*)\"', content).group(1)
				else:
					serotype = 'NA'

				if re.search('\/detected_plasmids.*=', content):
					plasmid = re.search('\/detected_plasmids.*=\"(.*)\"', content).group(1)
				else:
					plasmid = 'NA'

				if re.search('\/clade=', content):
					clade = re.search('\/clade=\"(.*)\"', content).group(1)
				else:
					clade = 'NA'

				print '{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}'.format(accession, strain_name, host, collection_date, geographic_location, serotype, plasmid, clade, host_disease)

			else:
				sys.exit(-1)


if __name__ == '__main__':
	if len(sys.argv) < 2:
		print "Usage: python {} <NCBI biosample file> > <out.file>".format(sys.argv[0])
		sys.exit(-1)

	extract_colum(sys.argv[1])
