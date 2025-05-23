SELECT CM.[heiw_applicableperiodofgraceinmonths]
      ,CM.[heiw_cctcurriculum]
      ,CM.[heiw_curriculummembershipid]
      ,CM.[heiw_enddate]
      ,CM.[importsequencenumber]
      ,CM.[heiw_lengthinmonths]
      ,CM.[heiw_name]
      ,CM.[heiw_order]
      ,CM.[heiw_startdate]
      ,CM.[statuscode]
      ,CM.[statecode]
      ,CM.[timezoneruleversionnumber]
      ,CM.[utcconversiontimezonecode]
      ,CM.[versionnumber]
      ,CM.[heiw_curriculumid]
      ,CM.[owningbusinessunit]
      ,CM.[heiw_trainingprogrammemembershipid]
      ,PMP.heiw_fullname
      ,PMP.heiw_programme
      ,ASSESS.heiw_assessmentid
      ,ASSESS.heiw_curriculumassessedname
      ,ASSESS.heiw_periodcoveredfrom
  FROM heiw_curriculummembership CM
  JOIN heiw_programmemembership PMP
  ON CM.heiw_trainingprogrammemembershipid = PMP.heiw_programmemembershipid
  LEFT JOIN heiw_assessment ASSESS
  ON CM.heiw_name = ASSESS.heiw_curriculumassessedname
  AND ASSESS.heiw_periodcoveredfrom >= CM.heiw_startdate
  AND ASSESS.heiw_periodcoveredfrom <= CM.heiw_enddate
  AND PMP.heiw_fullname = ASSESS.heiw_person
  WHERE ASSESS.heiw_assessmentid IS NOT NULL
  ORDER BY ASSESS.heiw_assessmentid ASC
