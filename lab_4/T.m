function t = T(s, n)
    sz = 10;
    t = zeros(1, sz);
    for i = 1:sz
        A = rand(n);
        if s == 1
            tic;
            [Q, R] = qr(A);
            t(i) = toc();
        end
        if s == 2
            tic;
            [Q, R] = qr_c(A);
            t(i) = toc();
        end
        if s == 3
            tic;
            [Q, R] = qr_m(A);
            t(i) = toc();
        end
    end
    t = median(t);
end