import { Component, AfterViewInit } from '@angular/core';

import Reveal from 'reveal.js';
import RevealZoom from 'reveal.js/plugin/zoom/zoom.js';
import RevealNotes from 'reveal.js/plugin/notes/notes.js';
import RevealSearch from 'reveal.js/plugin/search/search.js';
import RevealMarkdown from 'reveal.js/plugin/markdown/markdown.js';
import RevealHighlight from 'reveal.js/plugin/highlight/highlight.js';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent implements AfterViewInit {
  ngAfterViewInit(): void {
    Reveal.initialize({
      plugins: [
        RevealZoom,
        RevealNotes,
        RevealSearch,
        RevealMarkdown,
        RevealHighlight,
      ],
    });
  }
}
