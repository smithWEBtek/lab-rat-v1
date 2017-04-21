
Company
      name about city state url employees revenue age
      
      has_many :contacts
      has_many :actions
      has_many :jobs
      
      rails g migration CreateCompanies name:string about:text city:string state:string url:string employees:integer revenue:integer age:integer

Contact
      company_id name role about email phone linked_in twitter blog website 
      
      belongs_to :company
      has_many :actions
      
      rails g migration CreateContacts company_id:integer name:string role:string about:text email:string phone:string linkedin:string twitter:string blog:string website:string 

Actions
      act_type: (call email meeting website gitcommit blogpost)
      act_date: 
      act_result: 
      act_next: 
      act_next_due_date:
      contact_id: 
      company_id: 
      job_id:
      
      belongs_to :contact
      belongs_to :company
      belongs_to :job
      
      rails g migration CreateActions act_type:string act_date:date act_result:text act_next:string act_next_due_date:date contact_id:integer

Job
      title description url company_id contact_id instructions requirements
      scores(ab)
      a=1-5 rank
      b=%   weight

      35    learning: mentoring & training
      35    skills: tech exposure & chops building
      15    networking: connections & future options
      10    location: & commute
      5     salary:
      
      rails g migration CreateJobs title:string description:text url:string company_id contact_id instructions:text requirements:text learning:integer skills:integer networking:integer location:integer salary:integer
      
      has_many :actions
      has_many :contacts
      belongs_to :company

Tools
      use github API to get weekly commits
      generate action plans to output to excel
      generaet excel data for updating the Job Tracker Magic Spreadsheet
      excel csv staging file for newly acquired leads
      upload via import CSV method
      alert system based on actions and dates
      job quadrant graph based on scores


Activity Dashboard
      Weekly goals: 
      Total 
      Git Commits
      Blog Posts 

Job Search Activity
      Timestamp (PLS DO NOT UPDATE) 
      Company
      Contact Name and Title
      Date
      Action 
      Is this the first time you are contacting this company/contact?
      Job Title
      Link to Job Announcement
      Notes
      "Action Complete?
      - ✓ for Yes
      - Blank for No"
      Next Step
      Status
 
Git Commits and Blog Posts
      Timestamp (PLS DO NOT UPDATE) 
      Date  How Many Git Commits or Blog Posts did you do this week? 
      Please type a number (1 45 0 27 etc)
      "Git Commit or Blog Post"

1 on 1s with Career Coach
      Date
      Notes

Idea Generation on Companies
      Company of interest
      Target Contact
      My contacts who can connect me to this company or to my target person

