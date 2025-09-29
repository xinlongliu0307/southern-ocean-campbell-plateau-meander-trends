for i = round(length(meand_time)/6) : round(length(meand_time)/6) : round(length(meand_time))
    date_plot = datestr(meand_time(i),'mmm yyyy');
    date2 = datestr(meand_time(i),'yyyy_mm');
    for ii = round(length(meand_lon)/4) : round(length(meand_lon)/4) : round(length(meand_lon))
        % Fig.4 Meander width and peak distribution plot
        fig400 = figure('Name','4','Visible','off','Position',[30 100 600 600]);
        subplot(2,1,1)
        hold on;
        pcolor(repmat(meand_lon,1,length(meand_lat)),repmat(meand_lat,length(meand_lon),1),meand_sumfront(:,:,i));
        plot([meand_lon(ii) meand_lon(ii)],[-50 -30],'k','Linewidth',0.5,'linestyle','--');
        plot([meand_lon(ii) meand_lon(ii)],[meand_S_lat(ii,i) meand_N_lat(ii,i)],'r','Linewidth',2,'linestyle','-');
        plot(meand_loc_lon(ii,i),meand_loc_lat(ii,i),'o','MarkerFaceColor',[1 0 0],'markersize',4,'MarkerEdgeColor',[0 0 0]);
        shading flat;
        hcb1 = colorbar;
        caxis([0 x_days]);
        mapshow(coastlon, coastlat, 'DisplayType','polygon','FaceColor','black');
        set(get(hcb1,'xlabel'),'string','Meander frequency','fontsize',12,'FontWeight','normal','Interpreter','latex');
        xlim([meand_lon(ii)-8 meand_lon(ii)+8]);
        ylim([meand_loc_lat(ii,i)-4 meand_loc_lat(ii,i)+4]);
        set(gca,'TickLabelInterpreter','latex');
        xlabel('Longitude','Interpreter','latex');
        ylabel('Latitude','Interpreter','latex');
        title(['Meander position and width (' int2str(x_months) ' month mean)'],'Interpreter','latex');
        annotation('textbox','String',['' date_plot ''],'FontSize',9,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.80 0.95 0.15 0.05],'backgroundcolor','none','Interpreter','latex');
        annotation('textbox','String',['Relative detection threshold ' int2str(relat_thresh*100) '\%'],'FontSize',8,'FitBoxToText','off','LineStyle','none','FontWeight','normal','Position',[0.65 0.50 0.35 0.05],'backgroundcolor','none','Interpreter','latex');
        subplot(2,1,2)
        hold on
        plot(meand_sumfront_masked(ii,:,i),meand_lat,'color',rgb('Black'),'linewidth',1);
        plot([meand_maxf(ii,i) meand_maxf(ii,i)],[meand_S_lat(ii,i) meand_N_lat(ii,i)],'r','Linewidth',2,'linestyle','-');
        plot(meand_maxf(ii,i),meand_loc_lat(ii,i),'o','MarkerFaceColor',[1 0 0],'markersize',4,'MarkerEdgeColor',[0 0 0]);
        xlabel('Frequency','Interpreter','latex');
        ylabel('Latitude','Interpreter','latex');
        xlim([0 x_days]);
        set(gca,'TickLabelInterpreter','latex');
        title(['Transect of meander frequency at ' num2str(meand_lon(ii)) '$^{o}$' 'W'],'Interpreter','latex');
        set(gcf,'PaperPositionMode','auto');
        set(gcf,'renderer','painters');
        print(fig400,'-dpng',['G:\Fig4_Meander_width_and_peak_distribution\Experiment9_25%_Fourteen_Month\Fig4_' int2str(x_months) 'm_Meander_location_width_' date2 '_' num2str(ii) '.png']);
    end
end
