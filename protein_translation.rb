 require 'pry'
 
class InvalidCodonError < StandardError
end
  
class Translation
  CODON_PROTEIN = {
    'AUG' => 'Methionine',    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine', 'UUA' => 'Leucine',
    'UUG' => 'Leucine',       'UCU' => 'Serine',
    'UCC' => 'Serine',        'UCA' => 'Serine',
    'UCG' => 'Serine',        'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',      'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',       'UGG' => 'Tryptophan',
    'UAA' => 'STOP',          'UAG' => 'STOP',
    'UGA' => 'STOP'
  }
  
  def self.of_codon(codon)
    CODON_PROTEIN.fetch(codon) { fail InvalidCodonError }
  end
  
  def self.of_rna(sequence)
    codons = sequence.scan(/.{3}/).take_while { |codon| of_codon(codon) != 'STOP' }
                                  .map { |codon| of_codon(codon) }
  end
end
