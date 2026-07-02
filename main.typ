#import "@preview/cetz:0.3.4"
#set page("a0", margin: (top: 1cm, left: 1cm, right:1cm), flipped: true)
#set par(justify: true)

// This defines the properties of each box
#let contentbox(heading, body, malign:top+left, mdy:20cm, mdx: 0cm, mheight: 50%, mwidth: 30%) = {
place(malign, dy: mdy, dx: mdx,
        rect(width: mwidth, height:mheight, radius: 40pt,inset: 0pt, stroke: 1pt,
        stack(dir:ttb,
        align(top+center,
            rect(width: 100%, height:2.5cm, radius: 40pt, fill: rgb(50%,70%,100%), stroke: black,
                 align(horizon+center,
                     text(size: 42pt, weight: "bold", heading))
                 )
            )
          ,
          block(inset: 1cm,text(size: 36pt)[#body])
        )
      )
  )  
}

//beginning of actual content
#place(center+top,
  align(top+center,
    rect(width: 99.9%, height: 19cm, radius: 40pt,fill: rgb(50%, 70%, 100%),inset: 20pt,
    align(center+horizon,
      stack(dir:ttb,spacing: 1cm,
        align(center, 
        rect(width: 75%, height: 9cm, stroke: 0pt, text(size: 96pt, weight: "bold")[Place and view responses in the primate Hippocampus during virtual navigation])
      ),
        
        align(center, text(size: 48pt)[Roger Herikstad#super[1], Hui Min Tan#super[1], Joseph YX Cheng#super[2], Tabitha PY Ng#super[1] , Cullen Owens#super[1], Camilo Libedinsky#super[1,2], Shih-Cheng Yen#super[1,3]]),
        
        align(left, text(size: 36pt)[
              #super[1]The N.1 Institute for Health, National University of Singapore \
              #super[2]Department of Psychology, National University of Singapore \
              #super[3]Engineering Design and Innovation Centre, College of Design and Engineering, National University of Singapore
            ])
      )
      )
    )
)
)

#place(left+top, dy:3cm, dx:1cm,text(size:48pt)[Poster nr:\
*PS04-08PM-566*])

#place(right+top, dy:3cm, dx:-1cm, image("figures/N.1 Logo.jpg",width:13cm))

#contentbox("1. Introduction", malign:top+left, mdy: 20cm,mheight:15cm, mwidth: 27cm)[]

#contentbox("2. Methods", malign:top+left, mdy: 36cm,mheight:46cm, mwidth: 27cm)[
  
  //#layout(size=>[Width: #size.width])
  #set text(size:24pt)
   *Animal and implant:* 1 male _macacca fasicularis_ was  chronically implanted in the left hippocampus with 124 independently movable electrodes (Gray Matter Research). \
  
  *Data Acquisition:*  Neural activity was recorded at 30,000 samples/s (Ripple Neuro), eye gaze was tracked with an infrared camera (Eyelink 1000 Plus, SR Research at 1,000 samples/s).\
  
  *Behavioral task:* The animal performed 400 trials per session of a continuous match-to-sample navigation task set in virtual reality (Unity 3D). A randomly chosen target poster was shown at the start of each trial, with a 25 second time limit for navigation to the correct target location.
  #image("figures/methods_figure_new.png", width:708pt)
  #table(columns: (400pt, auto),stroke: 0pt,
    image("figures/smoothing_illustration.png",width:400pt),
    align(horizon,
    text(size:24pt)[#emph[Top]: Top-down (left) and 3D (right) view of the virtual maze. The black-and white trace represents the trajectory of the animal for one trial. The dots represent the gaze position of the animal.]
    )
  )
  // let's just cheat a bit
  #place(
  text(size:24pt)[
    #emph[Bottom]: Illustration of smoothing approach. A smoothing matrix is formed from the adjacency matrix of the maze (i.e. which elements neighbor each other). The spike count and occupancy in each bin are then smoothed by repeatedly multiplying with this matrix.
  ])
]

#contentbox("3. Place responses", malign:top+left, mdx: 28cm, mdy: 20cm,mheight:29.5cm, mwidth: 36cm)[
  #align(center,
    image("figures/place_responses_combined.png",width:950pt)
  )
  // post processing; add some labels manually
  #place(dy: -14.5cm, dx: 6cm,text(size:24pt)[Example cell 1])
  #place(dy: -14.5cm, dx: 17.5cm,text(size:24pt)[Example cell 2])
  #place(dy: -14.5cm, dx: 25.5cm,text(size:24pt)[Example cell 3])
  #place(dy: -8.0cm, dx: 17.5cm,text(size:24pt)[Example cell 4])
  #place(dy: -8.0cm, dx: 25.5cm,text(size:24pt)[Example cell 5])
  #table(columns: (2fr, 3fr),stroke: 0pt,
    text(size:24pt)[
      #emph[Top]: Place responses for two example cells. For each cell, the gray outline represents the floor of the arena. The raw firing rate (bottom left) was computed as the total number of spikes in each bin divided by the total occupancy in that bin. Bottom right: firing rate obtained by first smoothing occupancy and spike counts. Upper right: SIC computed using the smoothed firing rate. #emph[Right]: Summary statistics. 
    ],
    image("figures/spatial_responses_summary.png",width:100%) 
  )
]
#contentbox("4. View responses", malign:top+left, mdx: 28cm, mdy: 50cm,mheight:32cm, mwidth: 36cm)[
  //#layout(size=>[Width: #size.width])
  #image("figures/view_responses_combined_new.png",width:950pt)
    #table(columns: (640pt, auto), stroke: 0pt,
    image("figures/view_responses_summary.png",width:639pt),
    text(size:24pt)[
      #emph[Left]: Summary for all view selective cells. A) The number of view fields per cell. The black bar represents cells that were selective without exibiting fields. B) Distribution of field size. C) Distributin of peak firing rate. D) Number of fields overlapping with each bin. #emph[Top]: Three examples of view selective cells.
    ],
   )
]

#contentbox("5. Oriented place fields", malign:top+left, mdx: 65cm, mdy: 20cm,mheight:18cm, mwidth: 26cm)[
  //#layout(size=>[Width: #size.width])
  #image("figures/oriented_place_field_example_p20180727s01a03g086c01.png")
  #text(size:24pt)[
    An example of an oriented place field (red outline) and a field without orientation preference (orange outline). The activity within red place field was higher (red star vs box plt) when the animal traversed the field in the opposite direction to its major axis (black arrow) compared along the field.
  ]
]

#contentbox("6. Conjunctive responses", malign:top+left, mdx: 65cm, mdy: 39cm,mheight:21.5cm, mwidth: 26cm)[
  //#layout(size=>[Width: #size.width])
  #image("figures/place_view_conjunction_p20180814s01a01g020c01.png",width:700pt)
  #text(size:24pt)[
    Spatial activity of one conjunctive cell, conditioned on the view field (in field) and on view bins outside the view field (out of field). The mean firing rate in the place field (red border) was significantly ($p < 0.01$) higher when conditioning on the view field than on other view bins (star vs box plot).
  ]
]

#contentbox("7. Summary", malign:top+left, mdx: 65cm, mdy: 61cm,mheight:21cm, mwidth: 26cm)[
  //#layout(size=>[Width: #size.width])
  #image("figures/summary_figure.png",width:650pt)
  #text(size:24pt)[
    The number of cells falling in the different categories of responsiveness. The Venn-diagrams on top illustrate the overlap between different classes, while the bars show the number of cells in each class.
  ]
]

#contentbox("8. Trajectory decoding", malign:top+left, mdx: 92cm, mdy: 20cm,mheight:41cm, mwidth: 25cm)[
  //#layout(size=>[Width: #size.width])
  #image("figures/sequence_decoding_figure.png",width:650pt)
  #text(size:24pt)[
    A) The white traces illustrates some representative trajectories used to train the decoder, while the heatmap represents the density of points visited by all trajectories. B) The coding strength at the peak performance (C) for each cell, separated into different categories. D) The coding strength of all cells as a function of time, sorted according to the categories in B. E) The alignment of coding strength between subsequent time steps.
  ]
]

#contentbox("9. Conclusions", malign:top+left, mdx: 92cm, mdy: 62cm,mheight:15cm, mwidth: 25cm)[
]

#place(right+bottom,dy: 8cm, 
      rect(width: 25cm, height:2.6cm, stroke:0pt,
        align(left,
        text(size:24pt)[Funded by the Ministry of Education Tier 3 Research Fund (MOE2017-T3-1-002) and the National Medical Research Council (MOH-000962).]
      ) 
    )
    )

