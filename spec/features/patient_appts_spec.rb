require 'rails_helper'

RSpec.feature "PatientAppts", type: :feature do
  let!(:patient) do
    Patient.create(
      start_time: "9:30am",
      end_time: "10am",
      first_name: "Haman",
      last_name: "Haman",
      comments: "Deceptive and wicked"
    )
  end

  it "displays all patients" do
    visit api_v1_patients_path
    expect(page).to have_content
  end

  it "display a patient's appt start time" do
    visit api_v1_patient_path(patient)
    expect(page).to have_content patient.start_time
  end

  it "display a patient's appt end time" do
    visit api_v1_patient_path(patient)
    expect(page).to have_content patient.end_time
  end

  it "displays a patient's first name" do
    visit api_v1_patient_path(patient)
    expect(page).to have_content patient.first_name
  end

  it "display a patient's appt last name time" do
    visit api_v1_patient_path(patient)
    expect(page).to have_content patient.last_name
  end

  it "display any special comments about patient" do
    visit api_v1_patient_path(patient)
    expect(page).to have_content patient.comments
  end
end
