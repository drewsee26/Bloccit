module UsersHelper
    def render_posts_for(user)
        unless user.posts.any?
            return "<h4>#{user.name} has not submitted any posts yet.</h4>".html_safe 
        else
            render user.posts
        end
    end
    
    def render_comments_for(user)
        unless user.comments.any?
            return "<h4>#{user.name} has not submitted any comments yet.</h4>".html_safe 
        else
            render user.comments
        end
    end
    
    def favorite_for(post)
        render post.favorites
    end
end
