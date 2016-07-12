require "pathname"

RSpec.describe "_content_buffer template" do
  before do
    Test::PageScope = Class.new do
      attr_reader :content_buffer

      def initialize
        @content_buffer = Icy::ContentBuffer.new
      end
    end.new
  end

  let(:view_class) {
    Class.new(Dry::View::Layout) do
      setting :root,  Pathname(File.join(SPEC_ROOT, "fixtures", "templates"))
      setting :name, "app"
      setting :template,  "page"
      setting :formats, {html: :erb}
      setting :scope, Test::PageScope

      def locals(options = {})
        {
          content_buffer: self.class.config.scope.content_buffer
        }
      end
    end
  }

  def min(html)
    html.gsub(/\n\s*/, "").strip
  end

  it "supports sharing content from the template to the layout" do
    html = view_class.new.call
    expect(min(html)).to eq "<html><body>Hello</body></html>"
  end
end
