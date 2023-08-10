cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  primary-malignancy_bone-and-articular-cartilage-articulr---primary:
    run: primary-malignancy_bone-and-articular-cartilage-articulr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  primary-malignancy_bone-and-articular-cartilage-skull---primary:
    run: primary-malignancy_bone-and-articular-cartilage-skull---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-articulr---primary/output
  primary-malignancy_bone-and-articular-cartilage-bones---primary:
    run: primary-malignancy_bone-and-articular-cartilage-bones---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-skull---primary/output
  primary-malignancy_bone-and-articular-cartilage-neoplasm---primary:
    run: primary-malignancy_bone-and-articular-cartilage-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-bones---primary/output
  primary-malignancy_bone-and-articular-cartilage-column---primary:
    run: primary-malignancy_bone-and-articular-cartilage-column---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-neoplasm---primary/output
  vertebral-primary-malignancy_bone-and-articular-cartilage---primary:
    run: vertebral-primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-column---primary/output
  primary-malignancy_bone-and-articular-cartilage-clavicle---primary:
    run: primary-malignancy_bone-and-articular-cartilage-clavicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: vertebral-primary-malignancy_bone-and-articular-cartilage---primary/output
  primary-malignancy_bone-and-articular-cartilage-sternum---primary:
    run: primary-malignancy_bone-and-articular-cartilage-sternum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-clavicle---primary/output
  upper-primary-malignancy_bone-and-articular-cartilage---primary:
    run: upper-primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-sternum---primary/output
  primary-malignancy_bone-and-articular-cartilage-scapula---primary:
    run: primary-malignancy_bone-and-articular-cartilage-scapula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: upper-primary-malignancy_bone-and-articular-cartilage---primary/output
  primary-malignancy_bone-and-articular-cartilage-metacarpal---primary:
    run: primary-malignancy_bone-and-articular-cartilage-metacarpal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-scapula---primary/output
  primary-malignancy_bone-and-articular-cartilage-phalange---primary:
    run: primary-malignancy_bone-and-articular-cartilage-phalange---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-metacarpal---primary/output
  primary-malignancy_bone-and-articular-cartilage-coccyx---primary:
    run: primary-malignancy_bone-and-articular-cartilage-coccyx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-phalange---primary/output
  sacral-primary-malignancy_bone-and-articular-cartilage---primary:
    run: sacral-primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-coccyx---primary/output
  short-primary-malignancy_bone-and-articular-cartilage---primary:
    run: short-primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: sacral-primary-malignancy_bone-and-articular-cartilage---primary/output
  primary-malignancy_bone-and-articular-cartilage-metatarsal---primary:
    run: primary-malignancy_bone-and-articular-cartilage-metatarsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: short-primary-malignancy_bone-and-articular-cartilage---primary/output
  primary-malignancy_bone-and-articular-cartilage-limbunspfd---primary:
    run: primary-malignancy_bone-and-articular-cartilage-limbunspfd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-metatarsal---primary/output
  primary-malignancy_bone-and-articular-cartilage-mosteosarcoma---primary:
    run: primary-malignancy_bone-and-articular-cartilage-mosteosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-limbunspfd---primary/output
  primary-malignancy_bone-and-articular-cartilage-fibrosarcoma---primary:
    run: primary-malignancy_bone-and-articular-cartilage-fibrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-mosteosarcoma---primary/output
  primary-malignancy_bone-and-articular-cartilage-chondrosarcoma---primary:
    run: primary-malignancy_bone-and-articular-cartilage-chondrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-fibrosarcoma---primary/output
  mjuxtacortical-primary-malignancy_bone-and-articular-cartilage---primary:
    run: mjuxtacortical-primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-chondrosarcoma---primary/output
  primary-malignancy_bone-and-articular-cartilage---primary:
    run: primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: mjuxtacortical-primary-malignancy_bone-and-articular-cartilage---primary/output
  primary-malignancy_bone-and-articular-cartilage-tumour---primary:
    run: primary-malignancy_bone-and-articular-cartilage-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage---primary/output
  primary-malignancy_bone-and-articular-cartilage-madamantinoma---primary:
    run: primary-malignancy_bone-and-articular-cartilage-madamantinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-tumour---primary/output
  modontogenic-primary-malignancy_bone-and-articular-cartilage---primary:
    run: modontogenic-primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-madamantinoma---primary/output
  mameloblastic-primary-malignancy_bone-and-articular-cartilage---primary:
    run: mameloblastic-primary-malignancy_bone-and-articular-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: modontogenic-primary-malignancy_bone-and-articular-cartilage---primary/output
  primary-malignancy_bone-and-articular-cartilage-neoplasm---secondary:
    run: primary-malignancy_bone-and-articular-cartilage-neoplasm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: mameloblastic-primary-malignancy_bone-and-articular-cartilage---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: primary-malignancy_bone-and-articular-cartilage-neoplasm---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
