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
      ,ASSESS.heiw_assessmentsid
      ,ASSESS.heiw_curriculumassessedname
      ,ASSESS.heiw_periodcoveredfrom
      --,ASSESS.heiw_reviewdate
  FROM [IntrepidTXWAL_CP35147_Destination].[dbo].[CODI Curriculum Memberships - 23.04.25] CM
  JOIN ProgMem_PersonIDs PMP
  ON CM.heiw_trainingprogrammemembershipid = PMP.heiw_programmemembershipid
  LEFT JOIN heiw_assessmentsv2 ASSESS
  ON CM.heiw_name = ASSESS.heiw_curriculumassessedname
  AND ASSESS.heiw_periodcoveredfrom >= CM.heiw_startdate
  AND ASSESS.heiw_periodcoveredfrom <= CM.heiw_enddate
  --AND CM.heiw_startdate >= ASSESS.heiw_periodcoveredfrom
  --AND CM.heiw_enddate <= ASSESS.heiw_reviewdate
  AND PMP.heiw_fullname = ASSESS.heiw_person
  WHERE ASSESS.heiw_assessmentsid IS NOT NULL
