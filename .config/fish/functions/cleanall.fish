function cleanall --description 'Clean system caches, pacman, npm, pip, and yay'
    sudo rm -rf /var/cache/pacman/pkg/download-*
    echo "🧹 Cleaning System Caches..."
    npm cache clean --force
    pip cache purge
    sudo pacman -Sc
    yay -Sc
    yay -Yc
    echo "✨ All systems clean!"
end
