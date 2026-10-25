% One 512-sample frame; real and imaginary parts are integers in [-1024, 1023].
fft_in = (0:511).' * (1 + 1j);

src_data = lane_split(fft_in);

function s = lane_split(x)
base = 64 * [0 4 2 6 1 5 3 7];
name = ["cha" "chb" "chc" "chd" "che" "chf" "chg" "chh"];
for k = 1:8
    v = x(base(k) + (1:64));
    s.(name(k)) = [real(v), imag(v)];
end
end
