module ApplicationHelper

  def display_base_errors resource
    return 'No errors' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def ecosystem_service_categories
    [
        ['Recreation', 'Recreation'],
        ['Aesthetics / Existence', 'Aesthetics / Existence'],
        ['Cultural / Historical', 'Cultural / Historical'],
        ['Cognitive development / Learning / Scientific discovery', 'Cognitive development / Learning / Scientific discovery'],
        ['Spiritual / Religious', 'Spiritual / Religious'],
        ['Negative', 'Negative']
    ]
  end

  def water_bodies
    [
        ['RESERVOIRS & DAMS', nil],
        ['-----------------', nil],
        ['1 Alexandra Reservoir', 'Alexandra Reservoir'],
        ['2 De Villiers Dam', 'De Villiers Dam'],
        ['3 Frans Dam', 'Frans Dam'],
        ['4 Hely Hutchinson Reservoir', 'Hely Hutchinson Reservoir'],
        ['5 Jackson Reservoir', 'Jackson Reservoir'],
        ['6 Kirstenbosch Dam', 'Kirstenbosch Dam'],
        ['7 Kleinplaas Dam', 'Kleinplaas Dam'],
        ['8 Lewis Gay Dam', 'Lewis Gay Dam'],
        ['9 Matroos Dam', 'Matroos Dam'],
        ['10 Mocke Reservoir', 'Mocke Reservoir'],
        ['11 Newlands Reservoir', 'Newlands Reservoir'],
        ['12 Rawson Reservoir', 'Rawson Reservoir'],
        ['13 Silvermine Dam', 'Silvermine Dam'],
        ['14 Victoria Reservoir', 'Victoria Reservoir'],
        ['15 Woodhead Reservoir', 'Woodhead Reservoir'],
        [' ', -3],
        ['RIVERS & STREAMS', nil],
        ['----------------', nil],
        ['16 Bokramspruit River', 'Bokramspruit River'],
        ['17 Booiskraal River', 'Booiskraal River'],
        ['18 Buffels River', 'Buffels River'],
        ['19 Camps Bay Stream', 'Camps Bay Stream'],
        ['20 Diepsloot', 'Diepsloot'],
        ['21 Disa Stream', 'Disa Stream'],
        ['22 Kasteelpoort River', 'Kasteelpoort River'],
        ['23 Klaasjagers River', 'Klaasjagers River'],
        ['24 Krom River', 'Krom River'],
        ['25 Newlands Stream', 'Newlands Stream'],
        ['26 Platteklip Stream', 'Platteklip Stream'],
        ['27 Prinskasteel River', 'Prinskasteel River'],
        ['28 Silver Stream', 'Silver Stream'],
        ['29 Silvermine River', 'Silvermine River'],
        ['30 Schusters River', 'Schusters River'],
        [' ', nil],
        ['VLEIS, POOLS & WATERFALLS', nil],
        ['------------------------', nil],
        ['31 Duiwelsvlei', 'Duiwelsvlei'],
        ['32 Groot Rondevlei', 'Groot Rondevlei'],
        ['33 Klawersvlei', 'Klawersvlei'],
        ['34 Klein Rondevlei', 'Klein Rondevlei'],
        ['35 Nellies Pool', 'Nellies Pool'],
        ['36 Sirkelsvlei', 'Sirkelsvlei'],
        ['37 Skilpadvlei', 'Skilpadvlei'],
        ['38 Waterfall in Cecelia Forest', 'Waterfall in Cecelia Forest'],
        ['39 Waterfall on Prinskasteel River', 'Waterfall on Prinskasteel River']
    ]
  end

end