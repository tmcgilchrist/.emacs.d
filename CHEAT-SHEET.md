## Cheat Sheet for Emacs Bindings

### Rinari Mode

Basic Navigation commands

    C-c ; f c	rinari-find-controller
    C-c ; f e	rinari-find-environment
    C-c ; f f	rinari-find-file-in-project
    C-c ; f h	rinari-find-helper
    C-c ; f i	rinari-find-migration
    C-c ; f j	rinari-find-javascript
    C-c ; f l	rinari-find-plugin
    C-c ; f m	rinari-find-model
    C-c ; f n	rinari-find-configuration
    C-c ; f o	rinari-find-log
    C-c ; f p	rinari-find-public
    C-c ; f s	rinari-find-script
    C-c ; f t	rinari-find-test
    C-c ; f v	rinari-find-view
    C-c ; f w	rinari-find-worker
    C-c ; f x	rinari-find-fixture
    C-c ; f y	rinari-find-stylesheet

Actions in Rinari:

    C-c ; c     rinari-console
    C-c ; e     rinari-insert-erb-skeleton
    C-c ; f     Prefix Command
    C-c ; g     rinari-rgrep
    C-c ; q     rinari-sql
    C-c ; r     rinari-rake
    C-c ; s     rinari-script
    C-c ; t     rinari-test
    C-c ; w     rinari-web-server
    C-c ; x     rinari-extract-partial

### ETags Mode

    M-.         find-tag (goes to the symbol definition)
    M-0 M-.     goes to the next matching definition
    M-*         return to your starting point
    M-x tags-search <type your regexp>       initiate a search
    M-,                                      go to the next match
    
### ECB Mode
    
    C-c . g 1       ecb-goto-window-edit1
    C-c . g 2       ecb-goto-window-edit2
    C-c . g d       ecb-goto-window-directories
    
### VC Mode aka Version Control

    C-x v d         vc-directory -- show all files which are not up to date
    M-x vc-register add file into version control tracking

