<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: anything-auto-install.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=anything-auto-install.el" /><link type="text/css" rel="stylesheet" href="/emacs/wiki.css" /><meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: anything-auto-install.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=anything-auto-install.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/emacs/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/emacs/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/emacs/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for anything-auto-install.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=anything-auto-install.el" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/></head><body class="http://www.emacswiki.org/emacs"><div class="header"><a class="logo" href="http://www.emacswiki.org/emacs/SiteMap"><img class="logo" src="/emacs_logo.png" alt="[Home]" /></a><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span>
<!-- Google CSE Search Box Begins  -->
<form class="tiny" action="http://www.google.com/cse" id="searchbox_004774160799092323420:6-ff2s0o6yi"><p>
<input type="hidden" name="cx" value="004774160799092323420:6-ff2s0o6yi" />
<input type="text" name="q" size="25" />
<input type="submit" name="sa" value="Search" />
</p></form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_004774160799092323420%3A6-ff2s0o6yi"></script>
<!-- Google CSE Search Box Ends -->
<br /><span class="specialdays">Eritrea, Independence Day</span><h1><a title="Click to search for references to this page" rel="nofollow" href="http://www.google.com/cse?cx=004774160799092323420:6-ff2s0o6yi&amp;q=%22anything-auto-install.el%22">anything-auto-install.el</a></h1></div><div class="wrapper"><div class="content browse"><p><a href="http://www.emacswiki.org/emacs/download/anything-auto-install.el">Download</a></p><pre class="code"><span class="linecomment">;;; anything-auto-install.el --- Integrate auto-install.el with anything.el</span>

<span class="linecomment">;; Filename: anything-auto-install.el</span>
<span class="linecomment">;; Description: Integrate auto-install.el with anything.el</span>
<span class="linecomment">;; Author: Andy Stewart &lt;lazycat.manatee@gmail.com&gt;</span>
<span class="linecomment">;; Maintainer: Andy Stewart &lt;lazycat.manatee@gmail.com&gt;</span>
<span class="linecomment">;; Copyright (C) 2009, Andy Stewart, all rights reserved.</span>
<span class="linecomment">;; Created: 2009-02-09 17:48:01</span>
<span class="linecomment">;; Version: 0.2.1</span>
<span class="linecomment">;; Last-Updated: 2009-02-17 10:17:24</span>
<span class="linecomment">;;           By: Andy Stewart</span>
<span class="linecomment">;; URL: http://www.emacswiki.org/emacs/download/anything-auto-install.el</span>
<span class="linecomment">;; Keywords: auto-install, anything</span>
<span class="linecomment">;; Compatibility: GNU Emacs 23.0.60.1</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Features that might be required by this library:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `auto-install' `anything'</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; This file is NOT part of GNU Emacs</span>

<span class="linecomment">;;; License</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; This program is free software; you can redistribute it and/or modify</span>
<span class="linecomment">;; it under the terms of the GNU General Public License as published by</span>
<span class="linecomment">;; the Free Software Foundation; either version 3, or (at your option)</span>
<span class="linecomment">;; any later version.</span>

<span class="linecomment">;; This program is distributed in the hope that it will be useful,</span>
<span class="linecomment">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<span class="linecomment">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<span class="linecomment">;; GNU General Public License for more details.</span>

<span class="linecomment">;; You should have received a copy of the GNU General Public License</span>
<span class="linecomment">;; along with this program; see the file COPYING.  If not, write to</span>
<span class="linecomment">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth</span>
<span class="linecomment">;; Floor, Boston, MA 02110-1301, USA.</span>

<span class="linecomment">;;; Commentary:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Integrate auto-install.el with anything.el.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; You can use command `anything-auto-install-from-emacswiki'</span>
<span class="linecomment">;; install package from EmacsWiki.org.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; You can use comamnd `anything-auto-install-from-library'</span>
<span class="linecomment">;; update library.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; You can also make this package integrate with `anything',</span>
<span class="linecomment">;; just setup like below:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (setq anythign-sources</span>
<span class="linecomment">;;       (list</span>
<span class="linecomment">;;        anything-c-source-auto-install-from-emacswiki</span>
<span class="linecomment">;;        anything-c-source-auto-install-from-library</span>
<span class="linecomment">;;        ))</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Installation:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Put anything-auto-install.el to your load-path.</span>
<span class="linecomment">;; The load-path is usually ~/elisp/.</span>
<span class="linecomment">;; It's set in your ~/.emacs like this:</span>
<span class="linecomment">;; (add-to-list 'load-path (expand-file-name "~/elisp"))</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; And the following to your ~/.emacs startup file.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (require 'anything-auto-install)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; And this package need `auto-install' and `anything',</span>
<span class="linecomment">;; make sure you have add package `auto-install' `auto-install'</span>
<span class="linecomment">;; in your load-path.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Customize:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; All of the above can customize by:</span>
<span class="linecomment">;;      M-x customize-group RET anything-auto-install RET</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Change log:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/17</span>
<span class="linecomment">;;      * Clean up.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/12</span>
<span class="linecomment">;;      * Add `anything-c-source-auto-install-from-library'</span>
<span class="linecomment">;;      * Add new command `anything-auto-install-from-library'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/09</span>
<span class="linecomment">;;      * First released.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Acknowledgements:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; TODO</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Require</span>
(require 'anything)
(require 'auto-install)

<span class="linecomment">;;; Code:</span>

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Variable ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defvar anything-c-source-auto-install-from-emacswiki
  '((name . "<span class="quote">Auto Install from EmacsWiki</span>")
    (candidates . (lambda ()
                    (auto-install-update-emacswiki-package-name t)
                    auto-install-package-name-list))
    (action . (("<span class="quote">Install from EmacsWiki.org</span>" . (lambda (candidate)
                                                 (auto-install-download (concat auto-install-emacswiki-base-url candidate))))
               ("<span class="quote">Update package name from EmacsWiki.org</span>" . (lambda (candidate)
                                                             (auto-install-update-emacswiki-package-name)))))))
(defvar anything-c-source-auto-install-from-library
  '((name . "<span class="quote">Auto Install from Library</span>")
    (init . (anything-auto-install-init))
    (candidates-in-buffer)
    (action . (("<span class="quote">Update library</span>" . (lambda (candidate)
                                     (auto-install-from-library candidate)))))))

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Interactive Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defun anything-auto-install-from-emacswiki ()
  "<span class="quote">Launch anything with auto-install separately.</span>"
  (interactive)
  (anything 'anything-c-source-auto-install-from-emacswiki))

(defun anything-auto-install-from-library ()
  "<span class="quote">Update library with `anything'.</span>"
  (interactive)
  (anything 'anything-c-source-auto-install-from-library))

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Uilties Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defun anything-auto-install-init ()
  "<span class="quote">Init anything buffer status.</span>"
  (let ((anything-buffer (anything-candidate-buffer 'global))
        (library-list (auto-install-get-library-list)))
    (with-current-buffer anything-buffer
      <span class="linecomment">;; Insert library.</span>
      (dolist (library library-list)
        (insert (format "<span class="quote">%s\n</span>" library)))
      <span class="linecomment">;; Sort lines.</span>
      (sort-lines nil (point-min) (point-max)))))

(provide 'anything-auto-install)

<span class="linecomment">;;; anything-auto-install.el ends here</span></span></pre></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span><span class="translation bar"><br />  <a class="translation new" rel="nofollow" href="http://www.emacswiki.org/emacs?action=translate;id=anything-auto-install.el;missing=de_es_fr_it_ja_ko_pt_ru_se_zh">Add Translation</a></span><span class="edit bar"><br /> <a class="edit" accesskey="e" title="Click to edit this page" rel="nofollow" href="http://www.emacswiki.org/emacs?action=edit;id=anything-auto-install.el">Edit this page</a> <a class="history" rel="nofollow" href="http://www.emacswiki.org/emacs?action=history;id=anything-auto-install.el">View other revisions</a> <a class="admin" rel="nofollow" href="http://www.emacswiki.org/emacs?action=admin;id=anything-auto-install.el">Administration</a></span><span class="time"><br /> Last edited 2009-02-17 02:18 UTC by <a class="author" title="from 139.138.212.222.broad.cd.sc.dynamic.163data.com.cn" href="http://www.emacswiki.org/emacs/AndyStewart">AndyStewart</a> <a class="diff" rel="nofollow" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=anything-auto-install.el">(diff)</a></span><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
