# 4. Let X = {aa, bb} and Y = {ε, b, ab}.
### a) List the strings in the set XY.
    {aa,aab,aaab,bb,bbb,bbab}
### b) How many strings of length 6 are there in X*?
    {aaaaaa,aaaabb,aabbaa,aabbbb,bbaaaa,bbbbaa,bbaabb,bbbbbb}
    8
### c) List the strings in the set Y* of length three or less
    {ε,b,ab,bab,abb,bb,bbb}
### d) List the strings in the set X* Y* of length four or less.
    {ε,aa,bb,aaaa,aabb,bbaa,bbbb,b,ab,bab,abb,bb,bbb,aab,aaab,bbb,bbab}

# 14. The set of strings over {a, b, c} in which all the a ’s precede the b's, which in turn precede the c’s. It is possible that there are no a ’s, b’s, or c’s.
    {W|W=(a*) (b*) (c*)}
# 15. The same set as Exercise 14 without the null string.
    {W|W= (aa*) (bb*) (cc*)}
# 16. The set of strings over {a, b, c} with length three.
    {W|W = (a+b+c) (a+b+c) (a+b+c)}
# 17. The set of strings over {a, b, c} with length less than three.
    {W|W=(λ+a+b+c) (λ+a+b+c)}
# 18. The set of strings over {a, b,c} with length greater than three.
    {W|W = (a+b+c) (a+b+c) (a+b+c) (a+b+c)*}
# 19. The set of strings over {a, b} that contain the substring ab and have length greater than two.
     {W|W = (a+b)* (aab+aba+abb+bab) (a+b)*}