#
# This file is a part of MolecularGraph.jl
# Licensed under the MIT License http://opensource.org/licenses/MIT
#

export rotatable!


"""
    rotatable!(mol::VectorMol)

Assign `:Rotatable` parameter vector to the molecule.
"""
function rotatable!(mol::VectorMol)
    elemental!(mol)
    
    pred = (e) -> (
        mol[:BondOrder][e[1]] == 1
        && mol[:Degree][e[2].u] != 1
        && mol[:Degree][e[2].v] != 1
        && isempty(intersect(mol[:RingMem][e[2].u], mol[:RingMem][e[2].v]))
    )
    mol[:Rotatable] = pred.(edgesiter(mol))
    return
end
