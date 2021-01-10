%Given a social network, find the largest clique
function clique = max_clique(graph, clique)
    if nargin < 2
        clique = [];
    end
    max_clq = clique;
    if isempty(clique)
        for ii = 1:length(graph)
            clq = max_clique(graph, ii);
            if (length(clq) > length(max_clq))
                max_clq = clq;
            end
        end
    else
        for node = clique(end)+1:length(graph) %check the largest among the candidates
            if isempty(find(node == clique, 1))
                if check_clique(clique, node, graph)
                    clq = max_clique(graph, [clique node]);
                    if length(clq) > length(max_clq)
                        max_clq = clq;
                        break;
                    end
                end
            end
        end
    end
    clique = max_clq;
end

function ok = check_clique(clq, node, graph)
    ok = false;
    for ii = 1:length(clq)
        if isempty(find(clq(ii) == graph{node}, 1)) || ...
                isempty(find(node == graph{clq(ii)}, 1))
            return;
        end
    end
    ok = true;
end

%To test
load sn;
max_clique(sn)