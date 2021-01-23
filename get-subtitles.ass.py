durations = [0, 27.022000, 42.022000, 13.022000, 39.022000, 13.022000, 36.022000, 30.022000, 18.022000, 20.022000, 23.022000, 36.022000, 37.022000, 47.022000]

def print_offset():
    global durations
    print([round(sum(durations[0:i+1])-1*(i), 2) for i in range(0, 14)]) # for offset

def get_timestamp(t):
    return '0:{:02}:{:02}.{:02}'.format(
        int(t / 60),
        int(t) % 60,
        int(t * 100) % 100,
    )

def print_subtitles():
    global durations
    times = [(round(sum(durations[0:i+1])-1*(i)+2, 3), round(sum(durations[0:i+1])-1*(i)+5, 3)) for i in range(0, 14)]
    for t in times:
        print('{},{}'.format(
            get_timestamp(t[0]), get_timestamp(t[1])
        ))


# print_subtitles()
print_offset()
