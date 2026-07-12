# --------------------------------------------------
# Key Bindings
# --------------------------------------------------

if status is-interactive
    # Define custom bindings function which fish automatically calls
    function fish_user_key_bindings
        # Enable default Vi mode key bindings
        fish_vi_key_bindings

        # Bind Ctrl+B to run the bimagic widget (in both default and insert modes)
        bind \cb run_bimagic_widget
        bind -M insert \cb run_bimagic_widget
    end
end
