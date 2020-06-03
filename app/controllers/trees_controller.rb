class TreesController < ApplicationController

    def index
        @trees = Tree.all
        render json: @trees, include: [:branches, :forests]
    end

    # branch index in our BranchesController
    # def index
        # @branches = Branch.all
        # render json: @branches, include: [:tree]
    # end

end
