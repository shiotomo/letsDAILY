class Api::V1::HeatmapController < Api::ApiController

  # heatmapのデータを返却するためのメソッド
  def index
    tasks = current_user.tasks.all
    graph = tasks.map{|c| c.created_at.to_i}.inject(Hash.new(0)){|h, tm| h[tm] += 1; h}

    tasks.each do |task|
      graph.update(task.progressions.all.map{|c| c.created_at.to_i}.inject(Hash.new(0)){|h, tm| h[tm] += 1; h})
    end

    render json: graph.to_json
  end

  # heatmapのデータを返却するためのメソッド
  def show
    task = current_user.tasks.find(params[:id])
    graph = {}

    graph[task.created_at.to_i] = 1
    graph.update(task.progressions.all.map{|c| c.created_at.to_i}.inject(Hash.new(0)){|h, tm| h[tm] += 1; h})

    render json: graph.to_json
  end
end
