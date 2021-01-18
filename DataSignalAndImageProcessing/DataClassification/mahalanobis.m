function md = mahalanobis(pcamdl,data)
    b = pcamdl.eigvect*(data-pcamdl.mu)';
    std_per_mode = abs(b)./sqrt(pcamdl.eigvals);
    md = sqrt(sum(std_per_mode.^2));
end

