class ManifestController < ApplicationController
  def show
    project = Project.find_by(key_hash: params[:key_hash])
    if project
      render json: {
        "name": "PWAサンプル",
        "short_name": "PWAサンプル",
        "start_url": project_url(project),
        "display": "standalone",
        "icons": [
          {
            "src": "apple-touch-icon.png",
            "type": "image/png",
            "sizes": "192x192"
          }
        ],
      }
    else
      render json: {}, status: :not_found
    end
  end
end
