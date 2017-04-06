function [nn_dist] = calcdist(refvec,inpvec)
    Dist = 0;
    for i=1:10
        Dist = Dist + abs(refvec(i)-inpvec(i));
    end
    nn_dist = Dist;
end
% function [nn_dist] = calcdist(refvec,inpvec)
%     Dist = 0;
%     for i=1:41
%         Dist = Dist +((refvec(i)-inpvec(i))^2);
%         Dist = sqrt(Dist);
%     end
%     nn_dist = Dist;
% end
