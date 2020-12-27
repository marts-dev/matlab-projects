function k=next_prime(n)
next_prime=n+1;
while ~isprime(next_prime)
    next_prime=next_prime+1;
end
k=next_prime;