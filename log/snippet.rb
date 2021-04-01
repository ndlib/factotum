<div>
    <% @provider_terms_data.keys.each do |provider_names| %>
        <% if provider_names != :sfx_record_title and provider_names != :sfx_record_issn %>
        <div>
            <h3>Interlibrary Loan Terms</h3><br/>
            <h3><%= provider_names %></h3>
            <% if @provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_expression_id] %>
                <p style="padding: 20px">
                    The following terms apply ONLY to articles accessed via <a href="<%= @provider_terms_data[provider_names][:target_url] %>"><%= provider_names %></a>
                    <div style="padding: 15px; background-color: #EEF;">
                        <h4 style="font-weight: bold; padding-bottom: 10px;">Interlibrary Loan Notes</h4>
                        <p><%= @provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_display_note].gsub(/\n/, '<br/>').html_safe %></p>
                    </div>
                </p>
                <p style="padding 20px">
                    <h4 style="font-weight: bold; padding-bottom: 10px;">License Agreement Notes for <%= provider_names %></h4>
                    <p>
                        <% if (@provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_effective_date] == '00/00/0000' || @provider_terms_data[provider_names][:ill_effective_date].nil?) %>
                            These terms apply as of <b style="font-weight: bold">the last license renewal date</b>
                        <% else %>
                            These terms apply as of <b style="font-weight: bold"><%= @provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_effective_date] %></b>
                        <% end %>
                        <% if !@provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_last_update_date].nil? %>
                            (last updated <b style="font-weight: bold"><%= @provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_last_update_date] %></b>)
                        <% end %>
                    </p>
                    <p><%= @provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_document_text].gsub(/\n/, '<br/>').html_safe %></p>
                </p>
                <br/><hr/><br/>
            <% else %>
               <p style="padding: 20px"><%= @provider_terms_data[provider_names][:interlibrary_loan_terms][:ill_document_text] %></p>
                <br/><hr/><br/>
            <% end %>
        </div>
        <div>
            <h3>Coursepack Terms</h3><br/>
            <h3><%= provider_names %></h3>
            <% if @provider_terms_data[provider_names][:coursepack_terms][:coursepack_expression_id] %>
                <p style="padding: 20px">
                    The following terms apply ONLY to articles accessed via <a href="<%= @provider_terms_data[provider_names][:target_url] %>"><%= provider_names %></a>
                    <div style="padding: 15px; background-color: #EEF;">
                        <h4 style="font-weight: bold; padding-bottom: 10px;">Coursepack Notes</h4>
                        <p><%= @provider_terms_data[provider_names][:coursepack_terms][:coursepack_display_note].gsub(/\n/, '<br/>').html_safe %></p>
                    </div>
                </p>
                <p style="padding 20px">
                    <h4 style="font-weight: bold; padding-bottom: 10px;">License Agreement Notes for <%= provider_names %></h4>
                    <p>
                        <% if (@provider_terms_data[provider_names][:coursepack_terms][:coursepack_effective_date] == '00/00/0000' || @provider_terms_data[provider_names][:coursepack_effective_date].nil?) %>
                            These terms apply as of <b style="font-weight: bold">the last license renewal date</b>
                        <% else %>
                            These terms apply as of <b style="font-weight: bold"><%= @provider_terms_data[provider_names][:coursepack_effective_date] %></b>
                        <% end %>
                        <% if !@provider_terms_data[provider_names][:coursepack_terms][:coursepack_last_update_date].nil? %>
                            (last updated <b style="font-weight: bold"><%= @provider_terms_data[provider_names][:coursepack_last_update_date] %></b>)
                        <% end %>
                    </p>
                    <p><%= @provider_terms_data[provider_names][:coursepack_terms][:coursepack_document_text].gsub(/\n/, '<br/>').html_safe %></p>
                </p>
                <br/><hr/><br/>
            <% else %>
               <p style="padding: 20px"><%= @provider_terms_data[provider_names][:coursepack_document_text] %></p>
                <br/><hr/><br/>
            <% end %>
        </div>
        <% end %>
    <% end %>
 </div>
 