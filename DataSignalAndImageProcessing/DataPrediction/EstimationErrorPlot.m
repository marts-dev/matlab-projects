function EstimationErrorPlot(prediction, target)
    MSE = mean((target - prediction).^2);
    plot(target,prediction,'r*');
    hold on
    xlabel('True Value');
    ylabel('Model Predicted Value');
    rg = [min([target; prediction]), max([target; prediction])];
    plot(rg,rg,'k--');
    [r, p] = corr(target, prediction);
    title(sprintf("R=%.3f; P=%.3g; MSE=%.3f",r,p,MSE));
    legend('True vs Predicted', 'Diagonal');
    hold off
end