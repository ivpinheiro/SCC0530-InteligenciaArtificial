def greedy_best_first_search(graph, start, goal):
    def heuristic(node):
        return sqrt((node[0] - goal[0]) ** 2 + (node[1] - goal[1]) ** 2)
    count_visited = 0
    frontier = [(heuristic(start), start)]
    visited = []
    paths = {start: [start]}
    
    while frontier:        
        result_list = []
        for _, item in frontier:
            result_dict = {item: []}
            
            for _, neighbor in frontier:
                if neighbor != item:
                    result_dict[item].append(neighbor)
            
            result_list.append(result_dict)

        _, current_node = heappop(frontier)
        count_visited+=1
        
        if current_node == goal:            
            return paths[current_node], visited, paths, result_list, count_visited
        
        visited.append(current_node)
        
        for neighbor in graph[current_node]:
            if neighbor not in paths:
                new_path = paths[current_node] + [neighbor]
                paths[neighbor] = new_path
                heappush(frontier, (heuristic(neighbor), neighbor))
    
    return None, visited, paths