#
# This file is a part of graphmol.jl
# Licensed under the MIT License http://opensource.org/licenses/MIT
#

export
    AbstractMol,
    AbstractMapMol,
    MapMol,
    QueryMol,
    AbstractVectorMol,
    VectorMol,
    AbstractAtom,
    Atom,
    QueryAtom,
    AbstractBond,
    Bond,
    QueryBond,
    Annotation


abstract type AbstractMol end

abstract type AbstractMapMol <: AbstractMol end
abstract type MapMol <: AbstractMapMol end
abstract type QueryMol <: AbstractMapMol end

abstract type AbstractVectorMol <: AbstractMol end
abstract type VectorMol <: AbstractVectorMol end

abstract type AbstractAtom <: AbstractNode end
abstract type Atom <: AbstractAtom end
abstract type QueryAtom <: AbstractAtom end

abstract type AbstractBond <: AbstractEdge end
abstract type Bond <: AbstractBond end
abstract type QueryBond <: AbstractBond end


abstract type Annotation end