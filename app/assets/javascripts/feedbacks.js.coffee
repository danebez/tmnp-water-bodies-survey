# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  positions = []
  positions['1 Alexandra Reservoir'] = [439, 575]
  positions['2 De Villiers Dam'] = [439, 612]
  positions['3 Frans Dam'] = [720, 4021]
  positions['4 Hely Hutchinson Reservoir'] = [429, 446]
  positions['5 Jackson Reservoir'] = [552, 2705]
  positions['6 Kirstenbosch Dam'] = [591, 593]
  positions['7 Kleinplaas Dam'] = [275, 2435]
  positions['8 Lewis Gay Dam'] = [334, 2386]
  positions['9 Matroos Dam'] = [720, 3941]
  positions['10 Mocke Reservoir'] = [363, 85]
  positions['11 Newlands Reservoir'] = [720, 312]
  positions['12 Rawson Reservoir'] = [591, 2735]
  positions['13 Silvermine Dam'] = [339, 1456]
  positions['14 Victoria Reservoir'] = [399, 532]
  positions['15 Woodhead Reservoir'] = [399, 459]
  positions['16 Bokramspruit River'] = [53, 2362]
  positions['17 Booiskraal River'] = [474, 3586]
  positions['18 Buffels River'] = [720, 3929]
  positions['19 Camps Bay Stream'] = [321, 146]
  positions['20 Diepsloot'] = [235, 79]
  positions['21 Disa Stream'] = [330, 636]
  positions['22 Kasteelpoort River'] = [268, 403]
  positions['23 Klaasjagers River'] = [675, 3213]
  positions['24 Krom River'] = [422, 3213]
  positions['25 Newlands Stream'] = [636, 324]
  positions['26 Platteklip Stream'] = [470, 177]
  positions['27 Prinskasteel River'] = [237, 1285]
  positions['28 Silver Stream'] = [507, 250]
  positions['29 Silvermine River'] = [590, 1695]
  positions['30 Schusters River'] = [228, 2760]
  positions['31 Duiwelsvlei'] = [157, 2809]
  positions['32 Groot Rondevlei'] = [268, 3115]
  positions['33 Klawersvlei'] = [720, 2931]
  positions['34 Klein Rondevlei'] = [252, 3194]
  positions['35 Nellies Pool'] = [720, 1805]
  positions['36 Sirkelsvlei'] = [515, 3402]
  positions['37 Skilpadvlei'] = [720, 4021]
  positions['38 Waterfall in Cecelia Forest'] = [143, 679]
  positions['39 Waterfall on Prinskasteel River'] = [332, 1352]

#  $('iframe#map').contents().find('body').on('mousewheel', ->
#    alert($('iframe#map').contents().find('body').scrollLeft() + ', ' + $('iframe#map').contents().find('body').scrollTop())
#  )

  iframe_body = $('iframe#map').contents().find('body')
  iframe_body.animate({scrollLeft: 491, scrollTop: 0}, 'slow')

  $('select').change () ->
    water_body = $(this).find('option:selected').text()
    #alert(water_body)

    iframe_body = $('iframe#map').contents().find('body')
    iframe_body.animate({scrollLeft: positions[water_body][0], scrollTop: positions[water_body][1]}, 'slow')