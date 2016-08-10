module MaterialIconHelper
  class IconTable
    @@groups = []
    @@keys = []

    ICON_TABLE = [
     { key: 'brightness_1',
       data: { modern_browser_key: 'brightness_1', classic_browser_key: ''}
      }
    ]

    def initialize
      @icons = create_icons
    end

    def create_icons
      ICON_TABLE.each do |key, value|
      
      end
    end

    def add_new_group
      @@groups << @group unless @@groups.includes? @group
    end
  end

end
