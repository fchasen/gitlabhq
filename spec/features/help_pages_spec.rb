require 'spec_helper'

describe 'Help Pages', feature: true do
  describe 'Show SSH page' do
    before do
      login_as :user
    end
    it 'replace the variable $your_email with the email of the user' do
      visit help_page_path(category: 'ssh', file: 'ssh.md')
      page.should have_content("ssh-keygen -t rsa -C \"#{@user.email}\"")
    end
  end
end
