class Api::V1::HeatmapController < Api::ApiController

  # heatmapのデータを返却するためのメソッド
  def graph
    tasks = current_user.tasks.all
    graph = tasks.map{|c| c.created_at.to_i}.inject(Hash.new(0)){|h, tm| h[tm] += 1; h}

    tasks.each do |task|
      graph.update(task.progressions.all.map{|c| c.created_at.to_i}.inject(Hash.new(0)){|h, tm| h[tm] += 1; h})
    end

    render json: graph.to_json
  end
end
