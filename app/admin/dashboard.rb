ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
   
    
     columns do
       
        column do
          panel "System Administrator" do
            #     ul do
            #       Reminders.recent(5).collect do |reminder|
            #         li link_to(reminder.title, admin_reminder_path(reminder))
            #       end
            #     end
            ul do
              li link_to("Upload New Supplement Line", admin_supplements_path)
              li link_to("Database Administration", "")
              li "[ ... ]"
            end
          end

          panel "Clinics Administrator" do
            ul do
              li "Add/Remove/Edit Clinic"
              li "Add/Remove/Edit/Monitor Clinician"
            end
          end

        end

        column do
          panel "Clinician: To Do" do
            ul do
              li "Today's Call Schedule"
              li "Alerts: Test Kits not returned"
              li "Alerts: Lab results overdue"
            end    
          end
          panel "Clincian: My Patients" do
            ul do 
              li "On-boarding"
              li "Coming up for retest"
            end
          end
        end

      end # columns
      
    end # content
end
