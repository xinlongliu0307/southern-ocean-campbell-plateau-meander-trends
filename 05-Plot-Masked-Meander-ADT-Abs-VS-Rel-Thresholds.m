% Fig.2 Masked meander area
for p2 = 1:32:10013
    date_plot = datestr(alti_time(p2),'dd mmm yyyy');
    date3 = datestr(alti_time(p2),'yyyy_mm_dd');
    fig200 = figure('Name','2','Visible','off');
    % Masked area using absolute threshold value
    subplot(2,1,1)
    pcolor(repmat(alti_lon,1,length(alti_lat)),repmat(alti_lat,length(alti_lon),1),alti_flagfront2(:,:,p2))
    shading flat;
    hcb1 = colorbar;
    title('Masked area using absolute threshold value on delta(ADT)','Interpreter','latex');
    % caxis([0 1.5])
    mapshow(coastlon,coastlat,'DisplayType','polygon','FaceColor','black');
    annotation('textbox','String',['Absolute threshold = ' num2str(meand_threshold) 'm/100km'],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.65 0.50 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
    set(get(hcb1,'xlabel'),'string','Presence = 1','fontsize',10,'FontWeight','normal','Interpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex');
    % Masked area using relative threshold value
    subplot(2,1,2)
    pcolor(repmat(alti_lon,1,length(alti_lat)),repmat(alti_lat,length(alti_lon),1),alti_flagfront(:,:,p2));
    shading flat;
    hcb1 = colorbar;
    title('Masked area using relative threshold value on delta(ADT)','Interpreter','latex');
    % caxis([0 1.5])
    mapshow(coastlon,coastlat,'DisplayType','polygon','FaceColor','black');
    set(get(hcb1,'xlabel'),'string','Presence = 1','fontsize',10,'FontWeight','normal','Interpreter','latex');
    xlabel('Longitude','Interpreter','latex');
    ylabel('Latitude','Interpreter','latex');
    xlim([150 210]);
    ylim([-70 -30]);
    set(gca,'TickLabelInterpreter','latex');
    annotation('textbox','String',['' date_plot ''],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.80 0.95 0.15 0.05],'backgroundcolor','none','Interpreter','latex');
    annotation('textbox','String',['Relative threshold = ' num2str(relat_thresh*100) '\%'],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.65 0.02 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
    set(gcf,'PaperPositionMode','auto');
    set(gcf,'renderer','painters');
    print(fig200,'-dpng',['D:\Desktop\Honours Research Project\Matlab code for Meander analysis\CP_SLA_Data\Fig2_CP_Meander_Rela_Abso_Threshold\Abso_0.4_Rela_35\Fig2_masked_ADT_' date3 '.png']);
end
