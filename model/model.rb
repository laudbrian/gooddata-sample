GoodData::Model::ProjectBuilder.create("Test project") do |p|
    p.add_date_dimension("committed_on")

    p.add_dataset("repos") do |d|
        d.add_anchor("repo_id")
        d.add_label("name", :reference => "repo_id")
    end

    p.add_dataset("devs") do |d|
        d.add_anchor("dev_id")
        d.add_fact("lines")
        d.add_label("username", :reference => "dev_id")
    end

    p.add_dataset("commits") do |d|
        d.add_fact("lines_changed")
        d.add_date("committed_on", :dataset => "committed_on")
        d.add_reference("dev_id", :dataset => 'devs')
        d.add_reference("repo_id", :dataset => 'repos')
    end

end
