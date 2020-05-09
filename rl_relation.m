function [x,y,u,v]= rl_relation(other,your)
[x,y] = meshgrid(-10:0.2:10,-10:0.2:10);
% asking question
% explain behavior of partner
% logic questions
other.positive_response=input('others reponse to your positive feeling');
other.negative_response=input('others reponse to your negative feeling');
your.positive_response= input('your response to others positive feeling');
your.negative_response= input('your response to others negative feeling');
% 2^4 functions


% 1 represents + ve emotions
% u= x
% v=y
% 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
%1 1111
if other.positive_response ==1 && other.negative_response== 1 &&...
your.positive_response== 1 && your.negative_response==1
u= y.^2;
v= x.^2;
w=u+j.*v;
figure 
plot(w,'go')
%2 1110
elseif other.positive_response ==1 && other.negative_response== 1 &&...
your.positive_response== 1 && your.negative_response==0
u= y.^3;
v= x.^2;
w=u+j.*v;
figure 
plot(w,'go')
    
    
%3 1101
elseif other.positive_response ==1 && other.negative_response== 1 &&...
your.positive_response== 0 && your.negative_response==1
u= -y.^3;
v= x.^2;

%4 1100
elseif other.positive_response ==1 && other.negative_response== 1 &&...
your.positive_response== 0 && your.negative_response==0
u= -y.^2;
v= x.^2;
%5 1011
elseif other.positive_response ==1 && other.negative_response== 0 &&...
your.positive_response== 1 && your.negative_response==1
u= y.^2;
v= x.^3;

%6 1010
elseif other.positive_response ==1 && other.negative_response== 0 &&...
your.positive_response== 1 && your.negative_response==0
u= y.^3;
v= x.^3;

%7 1001 other respond positive to your positive & negative to negative
% you respond -ve to their +ve and +ve to their -ve 
elseif other.positive_response ==1 && other.negative_response== 0 &&...
your.positive_response== 0 && your.negative_response==1
u= -y.^3;
v= x.^3;

% 8 1000
elseif other.positive_response ==1 && other.negative_response== 0 &&...
your.positive_response== 0 && your.negative_response==0
u= -y.^2;
v= x.^3;

%9 0111
elseif other.positive_response ==0 && other.negative_response== 1 &&...
your.positive_response==1 && your.negative_response==1
u= +y.^2;
v= -x.^3;

%10 0110
elseif other.positive_response ==0 && other.negative_response== 1 &&...
your.positive_response== 1 && your.negative_response==0
u= y.^3;
v= -x.^3;

% 11 0101
elseif other.positive_response ==0 && other.negative_response== 1 &&...
your.positive_response== 0 && your.negative_response==1
u= -y.^3;
v= -x.^3;

% 12 0100
elseif other.positive_response ==0 && other.negative_response== 1 &&...
your.positive_response== 0 && your.negative_response==0
u= -y.^2;
v= -x.^3;

% 13 0011
elseif other.positive_response ==0 && other.negative_response== 0 &&...
your.positive_response== 1 && your.negative_response==1
u= y.^2;
v= -x.^2;

% 14 0010
elseif other.positive_response ==0 && other.negative_response==0 &&...
your.positive_response== 1 && your.negative_response==0
u= y.^3;
v= -x.^2;

% 15 0001
elseif other.positive_response ==0 && other.negative_response== 0 &&...
your.positive_response== 0 && your.negative_response==1
u= -y.^3;
v= -x.^2;

% 16 0000
elseif other.positive_response ==0 && other.negative_response== 0 &&...
your.positive_response== 0 && your.negative_response==0
u= -y.^2;
v= -x.^2;

else 
u = (y-x)*x-(y-x)*y;
v = (x-y)*y-(x-y)*x;
end
figure
quiver(x,y,u,v)
end