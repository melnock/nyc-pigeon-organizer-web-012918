

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_name = []
  pigeons = {}
  data.each{|sym, hash|
    hash.each{|k, arr|
      arr.each_index{|x|
        pigeons_name << arr[x]
      }
    }
  }
  pigeons_name.uniq!
  pigeons_name.each{|x| 
    pigeons[x] = {}
    data.each {|sym, hash|
      hash.each{|k, arr|
        if hash[k].include?(x)
          pigeons[x][sym] = k
        end 
      }
    }
  }
  pigeons

end