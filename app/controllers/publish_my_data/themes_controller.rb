require_dependency "publish_my_data/application_controller"

module PublishMyData
  class ThemesController < ApplicationController

    respond_to :html, :ttl, :rdf, :nt, :json, :text

    def index
      # don't bother paginating this for now - there probably wont be that many themes
      @themes = Theme.all.where("?uri <#{RDF::RDFS.label}> ?label").order("?label").resources
      respond_with(@themes)
    end

    def show
      @theme = Theme.by_slug(params[:id])

      if @theme
        @pagination_params = ResourcePaginationParams.from_request(request)
        @datasets = Paginator.new(@theme.datasets_query_str, @pagination_params, resource_class: PublishMyData::Dataset).paginate
        respond_with(@datasets)
      else
        raise Tripod::Errors::ResourceNotFound
      end

    end

  end
end
