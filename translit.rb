# encoding: utf-8
module Translit
  
  DICT_RUS = ['а', 'б', 'в', 'г', 'д', 'е',
              'ё', 'ж', 'з', 'и', 'й', 'к',
              'л', 'м', 'н', 'о', 'п', 'р',
              'с', 'т', 'у', 'ф', 'х', 'ц',
              'ч', 'ш', 'щ', 'ъ', 'ы', 'ь',
              'э', 'ю', 'я',
              'і', 'є', 'ї', 'ґ']
                  
                  
  DICT_TRANS = ['a', 'b', 'v', 'g', 'd', 'e',
                'e', 'zh','z', 'i', 'j', 'k',
                'l', 'm', 'n', 'o', 'p', 'r',
                's', 't', 'u', 'f', 'h', 'ts',
                'ch','sh','sch', '', 'y', '',
                'e', 'ju', 'ja',
                'i', 'je', 'ji', 'g']
                  
                  
  def to_url(str)
    result = ''
    str.gsub(/[^a-яА-Я0-9_]/, '-').mb_chars.downcase.each_char do |chr|
      index  = DICT_RUS.index(chr)
        if index
          result += DICT_TRANS[index]
        else
          result += chr
        end
    end
    result.gsub(/-+/)
  end                 
  
end