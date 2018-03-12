#Author : Rohan M. Nanaware
#Date C.: 16th Jul 2017
#Date M.: 16th Jul 2017
#Purpose: Coursera Week 2 - Octave basics

#Video 1 - Basic operations
#Elementary opetations
1*2
3/2
1+2
10-1

#logical
1==2
1~=2
1&&0
1||0

#Variables
a = 3
a = 3;
a = pi;
disp(a)
disp(sprintf('2 decimals: %0.2f',a))
format long; a
format short; a

#Vectors and matrices
A = [1 2;3 4;5 6]#Semicolon = go to next row
V = [1 2 3]#1*3 matrix
V = [1;2;3]#3*1 vector
V = 1:6
V = 1:0.1:2
W = ones(2,3)
W = rand(2,3)
W = -6+sqrt(10)*randn(1,10000);
plot(W)
hist(W, 10)#Plot a histogram for a vector
I = eye(3)#Create an identity matrix

#Video 2 - Moving data around
A = [1 2; 3 4; 5 6]
sz = size(A)
sz(1)#Dimensions of vector A
length([1;2;3;4;5])
length([1 2 3 4 5])
pwd#Current working directory
cd 'E:\Delivery\1 Active\Coursera\Machine Learning by Stanford University - Andrew Ng\Week 2'
who
whos
save filename.mat A#Save as matlab file
save filename.txt A -ascii#save as text file
clear A#remove variable from workspace
load filename.txt#load saved file
A = [1 2;3 4;5 6]
A(3,2)
A(3,:)
A([1 3],:)#Get every element from 1st and 3rd row of A
A(:,2) = [4 8 12]
A = [A, [5; 11; 17]]
A(:)#Put all elements of A into a single column vector
A = [1 2;3 4; 5 6]
B = [1 2;3 4; 5 6]
C = [A, B]
C = [A; B]

#Video 3 - Computing on data
A = [1, 2;3 4;5 6]
B = [1 2 3;4 5 6]
C = A*B#Matrix multiplication
A = [1 2 3;4 5 6]
B = [1 2 3;4 5 6]
A.*B#Elementwise *ion
A.^2
1./A
abs(A)
-A
A'#Transpose of matrix
val = max(A)
[val ind] = max(A)
A < 3#Elementiwise comparison
[r c] = find(A < 3)
max(A,[],1)

#Video 4 - Plotting data
t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
y2 = cos(2*pi*4*t);
plot(t, y1);
hold on;
plot(t, y2, 'r');
xlabel('time');
ylabel('Value');
legend('sin','cos');
close;
figure(1): plot(t, y1);
figure(2): plot(t, y2);
subplot(1,3,1);
plot(t, y1)
subplot(1,3,2);
plot(t, y2);
axis([-1 1 -0.5 0.5]);
close;
A = eye(5)
imagesc(A)
imagesc(magic(15)), colorbar, colormap "default",

#Video 5 - Control statements - for, while, if
v = zeros(10,1)
for i = 1:10,#For loop
  v(i) = 2*i;
  disp(i);
end
indices = 1:10
for i = indices ,
  v(i) = 2*i;
  disp(i);
end

i = 1
while i <= 5,#while loop
  disp(i);
  i = i+1;
end
i = 1
while 1,
  disp(i);
  if i == 5,
    break;
  end
  i = i+1
end

#Functions
function_square(2)
X = [1 2;3 4;5 6]
theta = [0;2]
y = [4; 8; 12]
costfunction(X, y, theta)

#Assignment
A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];
C = A*B;
C = B'+A;
C = A'*B;
C = B+A

A = magic(4);
B = A(:, 1:2)
B = A(1:4, 1:2)
B = A(0:2, 0:4)
B = A(1:2, 1:4)

A = magic(10);
x = [1;2;3;4;5;6;7;8;9;10];
v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end

v = [1;2;3;4;5;6;7]
w = [8;9;10;11;12;13;14]
sum(v.*w)
w'*v
v*w
w*v

X = magic(7)
log(X)