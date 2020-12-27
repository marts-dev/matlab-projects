function [mmr, mmm] = minimax(M)
row_mins=min(M,[],2);
row_maxs=max(M,[],2);
mmr=(row_maxs-row_mins)';
m_min=min(M,[],'all');
m_max=max(M,[],'all');
mmm=m_max-m_min;
end