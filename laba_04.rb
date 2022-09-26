
# Задан одномерный массив А(12), содержащий целочисленные элементы.
# Найти количество групп повторных вхождений элементов в данном массиве.
# Например, в массиве А = [1, 2, 2, 3] – 1 группа (2, 2).
require 'matrix'

def findCountOfIdentGroups
  $A  = [1,1,1,2,4,2,2,5,2,3,3]
  $i = 0
  $j = 0
  $mass =[]

  $count = 0
  $result = 0
  $size = $A.length
  while $i < $A.length
    $j = 0
    while $j < $A.length
      if $A[$i] == $A[$j] && $i != $j && $A[$i]>0
        $count+=1
        $A[$j] = -1
      end
      $j+=1
    end
    if $count > 0
      $result+=1
      $count = 0

    end
    $i+=1
  end

  puts $result
end


def taskTwo
  $b  = [1.5,2.3,2.4,2.14,94.4,2.24,21.4,53.3,25.3,32.2,332.2,24.1,13.1,1.2,414.1,14.2]
  i = 0
  sumOfIndex  = 0
  sumOfValues = 0
  while i < 16
    if $b[i].to_i % 2 == 0
      sumOfValues += $b[i].to_i/2
      sumOfIndex += i
    end
    i+=1
  end
  puts sumOfValues
  puts sumOfIndex
end

def taskThree
  $a  = [1,1,1,2,4,2,2,5,2,3,3]
  $b  = [3,3,2,1,7,2,7,9,4,2,8]
  $new = []
  i = 0

  n = 0
  while i < 10
    j = 0
    while j < 10
      if $a[i] == $b[j] && $b[j] != 0.1
        $new[n] = $a[i]
        $b[j] = 0.1
        n+=1
      end
      j+=1
    end
    i+=1
  end
  print $new
end

def shitLeft(c)
  # $c  = [1,2,3,4,5,6,7,8,9,10,11,12]
  i = 0

  tmp = c[0];

  while i < 11
    c[i] = c[i+1];
      if i == c.length-2
        c[11] = tmp
      end
    i+=1
  end

end


def taskFour
  i = 11
  $c  = [1,2,3,4,5,6,7,8,9,10,11,12]
  while i>0
    shitLeft($c)
    i-=1
  end
  print $c
end

def taskFive
  $a  = [1,-2,0,4,5,-6,0,8,9,-10,0,12,-13]
  $new = []
  i = 0
  j = 0
  n = 0
  while i < 3
    j = 0
    while j < 13
      if i == 0
        if($a[j] == 0)
          $new[n] =$a[j]
          n+=1
        end
      end
      if i == 1
        if($a[j]<0)
          $new[n] =$a[j]
          n+=1
        end
      end
      if i == 2
        if($a[j]>0)
          $new[n] =$a[j]
          n+=1
        end
      end
      j+=1
    end
    i+=1
  end
  print $new
end

def taskSix
  $a  = [1,-24,-2,13,-22,3,15,4,-21,5,18,-6,14,-7,23,-8,17,16,9,-10,11,-19,12,20]
  sumOfPos = 0
  sumOfNeg = 0
  i = 0
  while i < 24
    if $a[i] > 0
      if $a[i] % 2 != 0
        sumOfPos += $a[i]
      end
    end
    if $a[i] < 0
      if $a[i] % 2 == 0
        sumOfNeg += $a[i]
      end
    end
    i+=1
  end
  puts sumOfNeg
  puts sumOfPos
end

def taskEight
  $a  = [1,-24,-2,13,-21,3,15,4,-21,5,18,-6,14,-7,23,-8]
  $d = []
  i = 0
  j = 0
  count = 0
  n = 0
  while i < 16
    j = 0
    count = 0
    while j < 16
      if $a[i] == $a[j] && $a[i].to_f != 0.1 && i != j
        count+=1
        $d[n] = $a[j]
        $a[j] = 0.1
        n+=1
      end
      if $a[i] != $a[j] && $a[i].to_f != 0.1
        $d[n] = $a[j]
        $a[j] = 0.1
        n+=1
      end
      j+=1
    end
    i+=1
  end
  print $d

end

def matrTaskOne
  num = 2
  a = Matrix[[1.0,2.0,3.0], [4.0,5.0,6.0], [7,8,9]]
  print a*2
  puts ""
  i = 0
  while i < 3
    j = 0
    while j < 3
      a[i,j] *=  num
      j+=1
    end
    i+=1
  end
  print a
end

def matrTaskFour
  a = Matrix[[1,2,3], [4,5,6], [7,8,9]]
  b = Matrix[[1,2,3], [4,5,6], [7,8,9]]
  c = Matrix[[0,0,0],[0,0,0],[0,0,0]]
  print a*b
  puts ""

  i = 0
  while i<3
    j = 0
  while j < 3
    k = 0
    c[i,j] = 0
    while k < 3
      c[i,j] += a[i,k] * b[k,j]
      k+=1
    end
    j+=1
  end
    i+=1
  end
  print c
end


findCountOfIdentGroups
puts "task  2"
taskTwo

puts "task  3"
taskThree

puts "task  4"
taskFour

puts "task  5"
taskFive

puts "task  6"
taskSix

puts "task  8"
taskEight

puts "matrix task1"
matrTaskOne

puts "matrix task4"
matrTaskFour
puts ""






def deepcopy(a)
  Marshal.load(Marshal.dump(a))
end


def det(a)
  i=0
  while i<N
    j=0
    while j<N
      if a[i][i]==0
        if a[j][i]!=0

          r=a[i]
          a[i]=a[j]
          a[j]=r
        end
      else
        if i!=j

          k=a[j][i].to_f/a[i][i]
          ii=0
          while ii<N
            a[j][ii]=a[j][ii]-a[i][ii]*k
            ii+=1
          end
        end
      end
      j+=1
    end
    i+=1
  end

  (0..N-1).inject(1.0){|s,i| s*=a[i][i]; s}
end

N=3
def taskDoSlau

  a=[[2,5,4],
     [1,3,2],
     [2,10,9]]
  b=[30,150,110]


  c=deepcopy(a)
  d=det(a)

  puts "D=#{d}"
  if d!=0
    i=0
    while i<N
      a=deepcopy(c)
      j=0
      while j<N
        a[j][i]=b[j]
        j+=1
      end
      di=det(a)
      puts "D#{i}=#{di} x#{i}=#{di/d}"
      i+=1
    end
  end
end


taskDoSlau


