#!/bin/env ruby
# encoding: utf-8

class Parisien

  def initialize(transport, arrondissement, gros_mots)
    @transport = transport
    @arrondissement = arrondissement
    @gros_mots = gros_mots
  end

  def bonjour
    p "Salut bande de #{@gros_mots}, je suis du #{@arrondissement} et je me déplace en #{@transport}. Ca va vous ?"
  end

end

Paulo = Parisien.new("métro", "16ème", "provinciaux")
Paulo.bonjour
