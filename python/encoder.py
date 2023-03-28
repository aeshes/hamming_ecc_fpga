def encode(data):
    v3 = (data >> 3) & 1
    v5 = (data >> 2) & 1
    v6 = (data >> 1) & 1
    v7 =  data & 1
    v1 = v3 ^ v5 ^ v7
    v2 = v3 ^ v6 ^ v7
    v4 = v5 ^ v6 ^ v7

    return (v1 << 6) | (v2 << 5) | (v3 << 4) | (v4 << 3) | (v5 << 2) | (v6 << 1) | v7