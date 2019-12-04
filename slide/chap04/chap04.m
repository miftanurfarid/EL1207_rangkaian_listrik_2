clear; close all;
% Melakukan perhitungan beberapa frekuensi kompleks,
% kemudian mem-plotting-nya dalam sebuah grafik

vm = 10; % volt
omega = [0, 4]; % rad/s
t = 0:0.01:1*pi; % s
theta = 0; % rad
sigma = [-0.5 0 0.5]; % np/s

vt = zeros(6,length(t));

% type = 2;

% if type == 1
    % 1) sigma = omega = 0
        vt(1,:) = myFun(vm, omega(1), t, theta, sigma(2));
        figure(1);
        plot(t, vt(1,:), 'linewidth', 2); hold on;
        grid on;
        axis tight;
        % ylim([-13 13]);
        set(get(gca, 'XLabel'), 'String', 't (detik)');
        set(get(gca, 'YLabel'), 'String', 'v (volt)');
        set(get(gca, 'Title'), 'String', 'Frekuensi Kompleks');
        print -djpg gambar1

% elseif type == 2
    % 2) sigma = 0
        vt(2,:) = myFun(vm, omega(2), t, theta, sigma(2));
        figure(2);
        plot(t, vt(2,:), 'linewidth', 2); hold on;
        grid on;
        axis tight;
        % ylim([-13 13]);
        set(get(gca, 'XLabel'), 'String', 't (detik)');
        set(get(gca, 'YLabel'), 'String', 'v (volt)');
        set(get(gca, 'Title'), 'String', 'Frekuensi Kompleks');
        print -djpg gambar2

% elseif type == 3
    % 3) sigma > 0, omega = 0
        vt(3,:) = myFun(vm, omega(1), t, theta, sigma(3));
        figure(3);
        plot(t, vt(3,:), 'linewidth', 2); hold on;
        grid on;
        axis tight;
        % ylim([-13 13]);
        set(get(gca, 'XLabel'), 'String', 't (detik)');
        set(get(gca, 'YLabel'), 'String', 'v (volt)');
        set(get(gca, 'Title'), 'String', 'Frekuensi Kompleks');
        print -djpg gambar3


% elseif type == 4
    % 4) sigma < 0, omega = 0
        vt(4,:) = myFun(vm, omega(1), t, theta, sigma(1));
        figure(4);
        plot(t, vt(4,:), 'linewidth', 2); hold on;
        grid on;
        axis tight;
        % ylim([-13 13]);
        set(get(gca, 'XLabel'), 'String', 't (detik)');
        set(get(gca, 'YLabel'), 'String', 'v (volt)');
        set(get(gca, 'Title'), 'String', 'Frekuensi Kompleks');
        print -djpg gambar4

% elseif type == 5
    % 5) sigma > 0
        [vt(5,:), vt1, vt2] = myFun(vm, omega(2), t, theta, sigma(3));
        figure(5);
        plot(t, vt(5,:), 'linewidth', 2); hold on;
        grid on;
        axis tight;
        % ylim([-13 13]);
        set(get(gca, 'XLabel'), 'String', 't (detik)');
        set(get(gca, 'YLabel'), 'String', 'v (volt)');
        set(get(gca, 'Title'), 'String', 'Frekuensi Kompleks');
        print -djpg gambar5

% elseif type == 6
    % 6) sigma < 0
        vt(6,:) = myFun(vm, omega(2), t, theta, sigma(1));
        figure(6);
        plot(t, vt(6,:), 'linewidth', 2); hold on;
        grid on;
        axis tight;
        % ylim([-13 13]);
        set(get(gca, 'XLabel'), 'String', 't (detik)');
        set(get(gca, 'YLabel'), 'String', 'v (volt)');
        set(get(gca, 'Title'), 'String', 'Frekuensi Kompleks');
        print -djpg gambar6
% end