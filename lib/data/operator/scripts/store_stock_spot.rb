module DataOperator
    module Scripts
        class StoreStockSpot
            def execute
                get_all(:symbol).each do |symbol|
                    spot = get(:stock_spot, symbol)
                    store(:fixing, symbol, today, spot)
                end
            end
        end
    end
end
