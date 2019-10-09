allocatemem();

a = 11;
b = 203;

x = 1000;
y = 1000;

run() = {
    local(i, j);
    for(i = 0, x,
        for(j = 0, y,
            if((i*j)%a == 0,
                if((i*j)%b == 0),
                    print(i*j)

            );
        );
    );
}

run();

\q

