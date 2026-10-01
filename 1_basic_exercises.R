length=17.5
> width=8.2
> area=length*width
> perimeter=2*(length+width)
> diagonal=sqrt(length^2+width^2)
> area
[1] 143.5
> perimeter
[1] 51.4
> diagonal
[1] 19.32589
> length=20
> length
[1] 20
> area
[1] 143.5
> age = 21
> exam_mark = 27
> course = "Biology"
> 
> 
> 
> older_than_18 = age > 18
> age = 21
> exam_mark=27
> course="boilogy"
> older_than_18 = age > 18
> mark_lower_than_30 = exam_mark < 30
> biology_student = course == "Biology"
> mark_equals_age = exam_mark == age
> 
> older_than_18
[1] TRUE
> mark_lower_than_30
[1] TRUE
> biology_student
[1] FALSE
> 
> biology_student = course == "boilogy"
>  biology_student
[1] TRUE
> age=26
> height = 1.81
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> age=21
> exam=27
> course="biology"
> 
> age>18
[1] TRUE
> exam<30
[1] TRUE
> course==biology
Error: object 'biology' not found
> course=="biology"
[1] TRUE
> age==exam
[1] FALSE
> 
> #no, assign values to each boolean value
> 
> student_age=age>18
> exam_mark=exam<30
> student_course=course=="biology"
> mark_equals_age=age==exam
> 
> student_age
[1] TRUE
> exam_mark
[1] TRUE
> student_course
[1] TRUE
> mark_equals_age
[1] FALSE
> 
> 
> 
> 
> 
> #Question 5
> 
> age=26
> height=1.81
> name="Marco"
> eligible=age>25
> ls()
 [1] "age"                     "area"                    "biology_student"         "color_palette"           "course"                 
 [6] "deploy_data"             "deploy_data_extended"    "deploy_data_mapping"     "deploy_data_site"        "deploy_normdist"        
[11] "deployment_site_mapping" "detailed_data"           "df"                      "diagonal"                "eagle_peak"             
[16] "eligible"                "error_data"              "exam"                    "exam_mark"               "filtered_data"          
[21] "gemma"                   "height"                  "Inhibition"              "length"                  "mark_equals_age"        
[26] "mark_lower_than_30"      "mean_count"              "missing_times"           "month_count"             "month_data"             
[31] "month_levels"            "month_normdist"          "mymatrix"                "name"                    "New_data"               
[36] "new_points"              "older_than_18"           "palette"                 "perimeter"               "puma_summary"           
[41] "Puma2024_08"             "PumaPractice"            "samuele"                 "sd_count"                "season_data"            
[46] "season_levels"           "season_normdist"         "site_data"               "site_normdist"           "student_age"            
[51] "student_course"          "subset_data"             "subset_data2"            "summary_data"            "tia"                    
[56] "time_data"               "time_data_extended"      "time_data_zeros"         "time_normdist"           "width"                  
[61] "y"                       "year_data"               "year_normdist"          
> rm(list=ls)
Error in rm(list = ls) : invalid first argument
> rm(list=ls())
> ls()
character(0)
> rm(list=ls())
> 
>  age=26
> > height=1.81
Error: unexpected '>' in ">"
> > name="Marco"
Error: unexpected '>' in ">"
> > eligible=age>25
Error: unexpected '>' in ">"
> 
> 
> age=26
> height=1.81
> name="Marco"
> eligible=age>25
> ls()
[1] "age"      "eligible" "height"   "name"    
> age=23
> eligible
[1] TRUE
> ##eligible does not change because it was assigned to age BEFORE age was changed to 23
> 
> 
> eligible=age>25
> eligible
[1] FALSE
> 
> ## Have to redo that value after it is changed. 
> 
> rm(height)
> ls()
[1] "age"      "eligible" "name"    
2026-09-29 09:51:02.968 R[12019:1147675] The class 'NSSavePanel' overrides the method identifier.  This method is implemented by class 'NSWindow'
