;;Set the color and background of the terminal
(set-foreground-color "#ffffff")
(set-background-color "#000000")

;; enable line number mode 
(add-hook 'find-file-hook (lambda () (linum-mode 1))) 

;;
(setq inhibit-startup-message t)

;; android-mode
(add-to-list 'load-path "~/.emacs.d/android-mode")
(require 'android-mode)
(setq android-mode-sdk-dir "~/Android")
(add-hook 'gud-mode-hook (lambda () (add-to-list 'gud-jdb-classpath "~/Android/platforms/android-19/android.jar")))
