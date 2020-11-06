module Api
  module V1
    class DishesController < ApplicationController
      before_action :set_dish, only: [:show]

      def index
        tag = Tag.find_by(name: params["tag"])
        if tag
          @dishes = tag.dishes
        else
          @dishes = Dish.all
        end

        sort_by = params["sort_by"].presence || "created_at"
        order = params["order"].presence || "DESC"

        @dishes = @dishes.order("#{sort_by} #{order}").includes(:tags)
      end

      def show
        @dish
      end

      def create
        dish = Dish.create(
          name: params["name"],
          time: params["time"],
          good: 0,
          cooked: 0
        )

        params["descriptions"].each_with_index do | description, idx |
          dish.descriptions.create(
            type: description["type"],
            text: description["text"],
            time: description["time"],
            step: idx
          )
        end

        params["tags"].each do | tag_name |
          if tag = Tag.find_by(name: tag_name)
            dish.tagging(tag)
          end
        end

      end

      private

      def set_dish
        @dish ||= Dish.find(params[:id])
      end

    end
  end
end