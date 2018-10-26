ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'Usuarios ' do
          ul do
             User.last(5).map do |user|
              li user.email
            end
          end
        end
      end
      column do
        panel 'Ultimas Ordenes' do
          ul do
            Order.last(5).map do |order|
              li "Usuario #{order.user.email}, pagado: #{order.payed}"
            end
          end
        end
      end
    end

  columns do
    panel "Usuarios registrados" do
      render 'shared/chart'
    end

    panel "Ordenes realizadas" do
      render 'shared/chart2'
    end
  end

    end
end
