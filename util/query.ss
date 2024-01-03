;;; -*- Gerbil -*-
(map car (table->list (gx#expander-context-table (gx#import-module ':gerbil/core))))

(map car (table->list (gx#expander-context-table (gx#import-module ':gerbil/gambit))))

(let ((cxt (gx#current-expander-context))) (map car (table->list (gx#expander-context-table cxt))))
